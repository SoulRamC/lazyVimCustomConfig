return {
  {
    "sourcegraph/sg.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- Sourcegraph configuration. All keys are optional
    config = function()
      require("sg").setup({
        -- Pass your own custom attach function
        -- If you do not pass your own attach function, the following mappings are provided:
        --   - gd -> go to definition
        --   - gr -> go to references
      })
    end,
  },

  {
    "nvim-cmp",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "cody",
        group_index = 1,
        priority = 100,
      })
    end,
  },
}
