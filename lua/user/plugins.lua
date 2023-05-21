lvim.plugins = {
  "ggandor/leap.nvim",
  "windwp/nvim-spectre",
  "mbbill/undotree",
  {
    'Exafunction/codeium.vim',
    config = function ()
      vim.keymap.set('i', '<M-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    end
  }



  --     {
  --       "folke/trouble.nvim",
  --       cmd = "TroubleToggle",
  --     },
}
