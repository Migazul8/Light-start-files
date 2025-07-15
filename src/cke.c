#include "cke.h"

#include <windows.h>

uintptr_t __security_cookie = 0;
uintptr_t __security_cookie_compliment = 0;

void __security_init_cookie(void) {

        if (__security_cookie != 0 && (__security_cookie >> 16) != 0) {
            return;
        }

        SYSTEMTIME sysTime;
        GetSystemTime(&sysTime);

        uintptr_t cookie = ((uintptr_t)sysTime.wMilliseconds << 24) ^
                    ((uintptr_t)sysTime.wSecond << 16) ^
                    ((uintptr_t)GetTickCount()) ^
                    ((uintptr_t)GetCurrentProcessId() << 8) ^
                    ((uintptr_t)GetCurrentThreadId());

        if (cookie == 0 || (cookie >> 16) == 0) {
            cookie ^= 0x4711CAFE;
        }

        __security_cookie = cookie;
        __security_cookie_compliment = ~cookie;

}
