# My neovim config

Use FiraCode NF!

## Key bindings
Leader key is `<SPACE>`

## Telescope
`<C-p>` -- show list of files and search with fuzzy search
`<leader>lg>` -- use builtin `livegrep`
`<leader><leader>` -- show list of oldfiles (still need to know what is this)

## LSP
`K` -- show information (hovered)
`<leader>gd` -- go to definition. `<C-o>` is to go back
`<leader>gr` -- show references of symbol
`<leader>ca` -- show possible code actions

## Neo-tree
Neo-tree is used to show code tree. `<C-n>` binding is to show Neo-tree on the left side. `:q` -- close Neo-tree
`<leader>bf` -- show buffered files

## Completions
`<C-space>` -- show possible completions in INSERT code
`Enter` -- complete with chosen completion
`<C-e>` -- hide completions

## Commenting code
`gcc` -- comment line of code with `//` in NORMAL mode
`gc` -- same in VISUAL code

## Formatting code
`<leader>gf` -- format code. Problem -- formatting is bad. How to setup it?
`f` in visual mode -- ranged formatting
