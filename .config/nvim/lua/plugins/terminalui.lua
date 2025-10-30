return {
  {
    "akinsho/toggleterm.nvim",
    keys = {
      {
        "<C-;>",
        "<cmd>ToggleTerm direction=float<cr>",
        desc = "Toggle Floating Terminal",
        mode = { "n", "t" }
      },
    },
    opts = {
      direction = "float",
      float_opts = {
        border = "rounded",
        width = function()
          return math.floor(vim.o.columns * 0.8)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.8)
        end,
      },
      start_in_insert = true,
      shade_terminals = false,
    },
  },
}
