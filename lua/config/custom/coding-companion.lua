require("codecompanion").setup({
  adapters = {
    llama3 = function()
      return require("codecompanion.adapters").extend("ollama", {
        name = "qwen", -- Give this adapter a different name to differentiate it from the default ollama adapter
        schema = {
          model = {
            default = "qwen2.5-coder:1.5b",
          },
          num_ctx = {
            default = 16384,
          },
          num_predict = {
            default = -1,
          },
        },
      })
    end,
  },
})

require("codecompanion").setup({
  strategies = {
    chat = {
      adapter = "ollama",
    },
    inline = {
      adapter = "ollama",
    },
  },
})
