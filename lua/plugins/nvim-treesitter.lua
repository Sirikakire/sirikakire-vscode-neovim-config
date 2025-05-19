return {
  {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    event = "BufEnter",
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = require("utils").treesitter_parsers,
        auto_install = true,
        sync_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
          disable = function(lang, buf)
            local max_filesize = 300 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,
          use_languagetree = true,
        },
        indent = { enable = true },
        autotag = {
          enable = true,
          enable_rename = true,
          enable_close = true,
          enable_close_on_slash = true,
        },
      })
    end
  },
  {
    "windwp/nvim-ts-autotag",
    event = "BufRead",
  }
}
