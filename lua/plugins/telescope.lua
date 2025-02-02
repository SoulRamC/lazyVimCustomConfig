return {
  "ibhagwan/fzf-lua",
  -- config = function()
  --   require("fzf-lua").setup({
  --     -- Optional: ignore node_modules globally
  --     fzf_opts = { ["--file-ignore"] = "node_modules" },
  --   })
  -- end,
  keys = {
    {
      "<leader>ff",
      false, -- Remove old keybinding
    },
    {
      ";f",
      function()
        require("fzf-lua").files()
      end,
      desc = "Find Files",
    },
    {
      ";;",
      function()
        require("fzf-lua").resume()
      end,
      desc = "Resume Last Search",
    },
    {
      "<leader><leader>",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "Find Buffers",
    },
    {
      "<leader>fp",
      function()
        require("fzf-lua").files({ hidden = true, no_ignore = true })
      end,
      desc = "Find Plugin File",
    },
    {
      ";e",
      function()
        require("fzf-lua").diagnostics_workspace()
      end,
      desc = "Show Diagnostics",
    },
  },
}
