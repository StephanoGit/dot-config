return {
  {
    "nvarner/typst-lsp",
    ft = "typst",
    config = function()
      require("lspconfig").typst_lsp.setup({})
    end,
  },
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    build = function()
      require("typst-preview").update()
    end,
    opts = {
      auto_open = true,
      open_cmd = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome --app=%s ",
    },
  },
  {
    "kaarmu/typst.vim",
    ft = "typst",
    lazy = false,
  },
}
