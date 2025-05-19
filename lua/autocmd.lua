-- NOTE: Setup autocmd and highlight
vim.cmd('autocmd FileType ruby setlocal indentkeys-=.') -- NOTE:  Disable auto indent for ruby
vim.cmd('autocmd BufNewFile,BufRead,BufEnter *.jbuilder set ft=ruby') -- NOTE:  Set filetype for jbuilder as ruby filetype
vim.cmd('autocmd BufEnter * set formatoptions-=cro') -- NOTE:  Disable auto comment on new line

-- NOTE: Setup autocmd for better yank UI
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function ()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 200
    })
  end
})