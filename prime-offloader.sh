#!/usr/bin/env sh

if [ "$XDG_SESSION_TYPE" = 'wayland' ]
then
    echo 'Wayland session'
    GBM_BACKEND=nvidia-drm __GLX_VENDOR_LIBRARY_NAME=nvidia "$@"
else
    echo 'Probably x11 session'
    __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia "$@"
fi
