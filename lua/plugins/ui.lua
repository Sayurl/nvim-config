return {
  {
    "aweis89/aider.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
      "stevearc/dressing.nvim",
    },
    keys = {
      { "<leader>aa", "<cmd>AiderToggle<cr>", desc = "Aider Toggle" },
      { "<leader>as", "<cmd>AiderAsk<cr>", desc = "Aider Ask (Prompt)" },
      { "<leader>ac", "<cmd>AiderAdd<cr>", desc = "Aider Add Current File" },
    },
    opts = {
      -- Aiderの起動引数
      args = {
        "--model",
        "gemini/gemini-1.5-flash",
        "--no-auto-test",
        "--no-auto-commits",
        "--no-attribute-author",
      },
      -- WezTermの透過を活かすためのフローティング設定
      win_config = {
        relative = "editor",
        style = "minimal",
        border = "rounded",
      },
    },
  },
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    opts = {},
    keys = {
      {
        "<C-S-h>",
        function()
          require("smart-splits").move_cursor_left()
        end,
        desc = "Move Left",
      },
      {
        "<C-S-j>",
        function()
          require("smart-splits").move_cursor_down()
        end,
        desc = "Move Down",
      },
      {
        "<C-S-k>",
        function()
          require("smart-splits").move_cursor_up()
        end,
        desc = "Move Up",
      },
      {
        "<C-S-l>",
        function()
          require("smart-splits").move_cursor_right()
        end,
        desc = "Move Right",
      },
    },
  },

  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      terminal_colors = true,
      theme = "wave",
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          -- タブバーの背景を透明にする
          TabLine = { bg = "none" },
          TabLineFill = { bg = "none" },
          TabLineSel = { bg = theme.ui.bg_p1, fg = theme.ui.fg },

          -- LazyVim 標準の BufferLine 透過設定
          BufferLineFill = { bg = "none" },
          BufferLineBackground = { bg = "none" },
        }
      end,
    },
  },

  -- LazyVim に kanagawa を使うよう指示
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },

  -- 強制的にフローティングウィンドウやタブバーを透過させる
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- ハイライトグループを直接いじって背景を消す
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
    end,
  },

  -- treeの位置設定
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
        width = 30,
      },
    },
  },
}
