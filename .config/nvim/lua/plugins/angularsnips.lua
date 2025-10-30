return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "johnpapa/vscode-angular-snippets",
    },
    config = function()
      -- Load friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()
      -- Load Angular snippets
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { vim.fn.stdpath("data") .. "/lazy/vscode-angular-snippets" }
      })
      -- Load your custom snippets
      require("luasnip.loaders.from_vscode").lazy_load({ 
        paths = { "~/.config/nvim/snippets" } 
      })
    end,
  },
}
