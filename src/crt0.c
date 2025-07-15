
#include "cke.h"
//#include "crtinit.h"

#include <windows.h>

extern int wWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPWSTR lpCmdLine, int nShowCmd);

void mainCRTStartup() {

        //__security_init_cookie();

        STARTUPINFOW startupInfo;
        GetStartupInfoW(&startupInfo);

        //__run_ctors();
        //__run_dtors();

        ExitProcess((UINT)wWinMain(GetModuleHandleW(NULL), NULL, GetCommandLineW(), (startupInfo.dwFlags & STARTF_USESHOWWINDOW ? startupInfo.wShowWindow : SW_SHOWDEFAULT)));

}
