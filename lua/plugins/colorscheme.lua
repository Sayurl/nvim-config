return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      -- 基本の透過設定
      transparent = true,

      -- 個別パーツの設定
      overrides = function(colors)
        local theme = colors.theme
        local palette = colors.palette

        return {
          -- 行番号の背景を消す
          LineNr = { bg = "none" },
          CursorLineNr = { bg = "none", fg = palette.akiari, bold = true },

          -- ビジュアルモードの選択範囲
          Visual = { bg = theme.ui.bg_p1 },

          -- 画面分割の境界線も目立たないように
          WinSeparator = { fg = theme.ui.bg_m3, bg = "none" },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
