return { "nvim-telescope/telescope.nvim", 
    keys = {
      { "<leader>ff",
        function() require("telescope.builtin").find_files() end,
        desc = "Files ...",
      },
      { "<leader>bb",
        function() require("telescope.builtin").buffers() end,
        desc = "Open buffers",
      },
    },
    pickers = {
        colorscheme = {
            enable_preview = true,
        },
    },
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  }
