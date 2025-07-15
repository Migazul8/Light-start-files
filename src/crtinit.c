#include "crtinit.h"

void __run_ctors() {

    for (void (**p)(void) = __init_array_start; p < __init_array_end; ++p) {
        (*p)();
    }
}
