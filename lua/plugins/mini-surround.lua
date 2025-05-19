return {
  "echasnovski/mini.surround",
  event = "BufRead",
  opts = {
    custom_surroundings = nil,
    highlight_duration = 500,

    mappings = {
      add = "<leader>sa", -- Add surrounding in Normal and Visual modes
      delete = "<leader>sd", -- Delete surrounding
      find = '',
      find_left = '',
      highlight = '',
      replace = "<leader>sr", -- Replace surrounding
      update_n_lines = '',
      suffix_last = 'l', -- Suffix to search with "prev" method
      suffix_next = 'n', -- Suffix to search with "next" method
    },
    n_lines = 20,
    respect_selection_type = false,
    search_method = 'cover',
    silent = false,
  }
}
