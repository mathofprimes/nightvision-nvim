# Nightvision for Neovim

Nightvision uses only green.

## Features

* Light and dark mode
* Soft, medium, and hard contrast
* Nine-color, all-green palette
> * pure, gray, jade, lime, pear, drab, aqua, sage, and teal
* Change background and foreground colors to any in the palette
* Palette is generated, ensuring colors are correct
* Fully written in Lua

## Screenshots

## Dark and Light Mode Backgrounds

The background color in dark mode can be set by specifying a color,

```
" If you use init.vim
let g:nv_dark = 'jade'
```

```
-- If you use init.lua
vim.g.nv_dark = 'jade'
```

or, for light mode,

``` 
" If you use init.vim
let g:nv_light = 'sage'
```

```
-- If you use init.lua
vim.g.nv_light = 'sage'
```

## Contrast

Contrast changes the brightness of the background, the brightness of text, and the difference in brightness between syntax (for instance, comments are darker than other syntax highlights in dark mode, or brighter in light mode). Set contrast by specifying one of the three options,

``` 
" If you use init.vim
let g:nv_contrast = 'soft'
```

```
-- If you use init.lua
vim.g.nv_contrast = 'soft
```

## Other Features

Enter ```:echo g:nv_colors``` in Neovim to view the hex values of the current nightvision configuration.

## Installation

Nightvision can be installed with any of the usual package managers.

### Packer

Add

```
use 'mathofprimes/nightvision-nvim'
```

to you're init.lua file and run ```:PackerInstall```.

## Other Text Editors

* [Vim](https://github.com/mathofprimes/nightvision-vim)
