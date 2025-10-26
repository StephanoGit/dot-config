-- Automatically pin main.typ before TypstPreview
local function pin_main_file()
  -- Get current working directory
  local cwd = vim.fn.getcwd()
  local main_file = cwd .. "/main.typ"

  -- Check if main.typ exists
  if vim.fn.filereadable(main_file) == 1 then
    -- Run the LSP command
    vim.lsp.buf.execute_command({
      command = "tinymist.pinMain",
      arguments = { main_file },
    })
    print("Pinned: " .. main_file)
    return true
  else
    print("Error: main.typ not found in " .. cwd)
    return false
  end
end

-- Redefine :TypstPreview to pin before previewing
vim.api.nvim_create_user_command("TypstPreviewMain", function()
  local ok = pin_main_file()
  if ok then
    -- Run the real Typst preview command afterward
    vim.cmd("TypstPreview") -- ⬅️ change this if your real command is different
  end
end, { desc = "Pin main.typ and start Typst preview" })
