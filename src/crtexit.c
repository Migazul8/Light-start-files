#include "crtexit.h"

void __run_dtors() {

    for (void (**p)(void) = __fini_array_start; p < __fini_array_end; ++p) {
        (*p)();
    }

}
