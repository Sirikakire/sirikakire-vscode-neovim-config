return {
  "LunarVim/bigfile.nvim",
  event = "VimEnter",
  config = function ()
    require("bigfile").setup {
      filesize = 0.5, -- size of the file in MiB, the plugin round file sizes to the closest MiB
      pattern = function(bufnr, filesize_mib)
        local file_contents = vim.fn.readfile(vim.api.nvim_buf_get_name(bufnr))
        local file_length = #file_contents
        return file_length > 2000
      end, -- autocmd pattern or function see <### Overriding the detection of big files>
      features = { -- features to disable
        "indent_blankline",
        "illuminate",
        "lsp",
        "treesitter",
        "syntax",
        "matchparen",
        "vimopts",
        "filetype",
      },
    }
  end
}
