# dwm

My build of [dwm](https://dwm.suckless.org). I use [alacritty](https://github.com/alacritty/alacritty) for terminal. Using this will also require 

* imlib2 (imlib2-devel)
* yajl (yajl-devel)
* libX11-devel
* libXft-devel
* libXinerama-devel
* pango-devel, pango, pango-xft 
* libxft-bgra (AUR or https://github.com/uditkarode/libxft-bgra). UPDATE: The patch has been (finally) merged in ! Now install libxft-git. You will also need noto-fonts-emoji for this to work

If any header file still gives error, use `xlocate` to find the package
