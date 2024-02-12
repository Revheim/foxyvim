return { "nvim-treesitter/nvim-treesitter",
    dependencies ={
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = {
        ensure_installed = {
            "c",
            "cpp",
            "lua",
            "bash",
            "html",
            "javascript",
            "json",
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "query",
            "regex",
            "tsx",
            "typescript",
            "vim",
            "vimdoc",
            "yaml",
        },
    },
    build = ":TSUpdate",
    config = function () 
      require("nvim-treesitter.configs").setup({
        -- ensure_installed = { "c", "lua", "vim", "vimdoc", "query", },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<leader>ss",
                node_incremental = "<leader>si",
                scope_incremental = "<leader>sc",
                node_decremental = "<leader>sd",
            },
        },
        textobjects = {
           select = {
           enable = true,

           lookahead = true,

           keymaps = {
               ["af"] = "@function.outer",
               ["if"] = "@function.inner",
               ["ac"] = "@class.outer",
               ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
               ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
           },
           selection_modes = {
               ['@parameter.outer'] = 'v', -- charwise
               ['@function.outer'] = 'V', -- linewise
               ['@class.outer'] = '<c-v>', -- blockwise
           },
           include_surrounding_whitespace = true,
           },
        },

      })
      end
  }