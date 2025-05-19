return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    -- execution_message = {
    --   enabled = false,
    --   message = function()
    --     return ("AutoSave: The file has been written and saved!")
    --   end,
    --   dim = 0.18,
    --   cleaning_interval = 1000,
    -- },
    trigger_events = {
      immediate_save = { "BufLeave", "FocusLost" },
      defer_save = { "InsertLeave", "TextChanged" },
      cancel_deferred_save = { "InsertEnter" },
    },
    write_all_buffers = false,
    noautocmd = false,
    lockmarks = false,
    debounce_delay = 5000,
    debug = false,
  }
}
