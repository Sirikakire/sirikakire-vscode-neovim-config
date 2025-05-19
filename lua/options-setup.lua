local options = {
  "autoindent",
  "incsearch",
  "smartindent",
  "expandtab",
  "smarttab",
  "breakindent",
  "completeopt=menu,menuone,noinsert,preview,popup",
  "shiftwidth=2",
  "tabstop=2",
  "wrap",
  "autoread",
  "autowrite",
  "nocursorline",
  "history=0",
  "confirm",
  "noshowcmd",
  "cmdheight=0",
  "backspace=start,eol,indent",
  "shiftround",
  "nobackup",
  "nowritebackup",
  "ignorecase",
  "notagstack",
  "signcolumn=yes:1",
  "linebreak",
  "number relativenumber",
  "clipboard+=unnamedplus",
  "shada=!,'20,<10,s10,h",
  "laststatus=3",
  "termguicolors",
  "scrolloff=5",
  "title",
  "smoothscroll",
  "pumheight=10",
  "noswapfile",
  "noshowmode",
  "noruler",
  "foldexpr=nvim_treesitter#foldexpr()",
  "foldmethod=expr",
  "nofoldenable",
  "fillchars+=eob:\\ ",
  "noundofile",
  "mapleader=' '"
}

if(vim.b.win_separator) then
  options = vim.b.thick_win_separator
  and
    vim.list_extend(options, {
      "fillchars+=horiz:\\━",
      "fillchars+=horizup:\\┻",
      "fillchars+=horizdown:\\┳",
      "fillchars+=vert:\\┃",
      "fillchars+=vertleft:\\┫",
      "fillchars+=vertright:\\┣",
      "fillchars+=verthoriz:\\╋",
    })
  or
    vim.list_extend(options, {
    "fillchars+=horiz:\\─",
    "fillchars+=horizup:\\┴",
    "fillchars+=horizdown:\\┬",
    "fillchars+=vert:\\│",
    "fillchars+=vertleft:\\┤ ",
    "fillchars+=vertright:\\├",
    "fillchars+=verthoriz:\\┼",
    })
else
  options = vim.list_extend(options, {
    "fillchars+=horiz:\\ ",
    "fillchars+=horizup:\\ ",
    "fillchars+=horizdown:\\ ",
    "fillchars+=vert:\\ ",
    "fillchars+=vertleft:\\ ",
    "fillchars+=vertright:\\ ",
    "fillchars+=verthoriz:\\ ",
  })
end

if (vim.g.neovide) then
  options = vim.list_extend(options, {
    "linespace=" .. vim.b.line_space
  })
end

for i, option in pairs(options) do
  vim.cmd("set "..option)
end
