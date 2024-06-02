# Xmodmap
## See existing config
```sh
xmodmap -pke
```
## User File location
`~/.Xmodmap`
## Activate changes
```sh
xmodmap ~/.Xmodmap
```
## File Syntax
### Basic Syntax
```
pointer = default              reset pointer buttons to default
pointer = NUMBER ...           set pointer button codes
keycode NUMBER = [KEYSYM ...]  map keycode to given keysyms
keysym KEYSYM = [KEYSYM ...]   look up keysym and do a keycode operation
clear MODIFIER                 remove all keys for this modifier
add MODIFIER = KEYSYM ...      add the keysyms to the modifier
remove MODIFIER = KEYSYM ...   remove the keysyms from the modifier
```

Up to 6 space-seperated keysyms can be defined for each key:

0) Key
0) Shift+Key
0) Mode_switch+Key
0) Mode_switch+Shift+Key
0) ISO_Level3_Shift+Key
0) ISO_Level3_Shift+Shift+Key

### Special keysyms
keysym|Notes
:-:|:--
NoSymbol|Used in list to skip not used levels and define a higher level keysym
Multi_key|'Compose' key, for typing special/accented letters (e.g. `Multi_key` + `e` + `'` = `é`)
dead_greek|For typing greek letters (e.g `dead_greek` + `Shift` + `d` = `Δ`)
XF86...|'Picture' function keys (e.g. media keys, bightness keys, search, calculator, settings, etc.)
### Comments
```
!This is a comment
```