-- lua/plugins/leap.lua
return {
  "ggandor/leap.nvim",
  keys = false,
  enabled = false,
  config = function(_, opts)
    -- add your own keymaps here
    vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward-to)", { desc = "leap-forward-to" })
    vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward-to)", { desc = "leap-backward-to" })
    vim.keymap.set({ "n", "x", "o" }, ";gs", "<Plug>(leap-from-window)", { desc = "leap-from-window" })
  end,
}
