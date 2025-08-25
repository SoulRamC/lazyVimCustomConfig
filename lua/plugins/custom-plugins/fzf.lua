return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    opts.winopts = {
      -- preview = {
      --   vertical = "up:65%",
      --   layout = "vertical",
      -- },
    }
    opts.files = {
      actions = {
        ["ctrl-i"] = { require("fzf-lua.actions").toggle_ignore },
        ["ctrl-h"] = { require("fzf-lua.actions").toggle_hidden },
      },
    }
  end,
}
