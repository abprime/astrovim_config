return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "takac/vim-hardtime",
    opts = {},
  },
  -- {
  --   "christoomey/vim-tmux-navigator",
  --   lazy = false,
  -- },
  {
    "wakatime/vim-wakatime",
    event = "User AstroFile",
  },
}
