return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = true,
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<M-l>", -- Alt-l to accept suggestion
            next = "<M-]>", -- Alt-] to get next suggestion
            prev = "<M-[>", -- Alt-[ to get previous suggestion
            dismiss = "<C-]>", -- Ctrl-] to dismiss
          },
        },
      })
    end,
  },
}
