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

![Aqua Jade Soft](https://user-images.githubusercontent.com/74194607/228675813-153ba27c-90c6-4a21-8880-2323ce00cbca.png)

> Soft contrast with sage for dark mode and jade for light mode.

![Pure Pure Medium](https://user-images.githubusercontent.com/74194607/228674657-704c4b85-2a27-4cdc-b4fc-69e714d18a51.png)

> Medium contrast with pure for dark mode and pure for light mode. This is the default.

![Gray Drab Hard](https://user-images.githubusercontent.com/74194607/228673474-9fe3eb8c-1939-4c18-ac48-009c2419ad98.png)

> Hard contrast with gray for dark mode and drab for light mode.

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
