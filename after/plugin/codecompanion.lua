require("codecompanion").setup({
  strategies = {
    chat = {
      adapter = "ollama",
      schema = {
        model = {
          default = "llama3.1"
        }
      }
    },
    inline = {
      adapter = "ollama",
    },
    agent = {
      adapter = "ollama",
    },
  },

  adapters = {
    phi = function()
      return require("codecompanion.adapters").extend("ollama", {
        name = "phi", -- Give this adapter a different name to differentiate it from the default ollama adapter
        schema = {
          model = {
            default = "phi3.5",
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
