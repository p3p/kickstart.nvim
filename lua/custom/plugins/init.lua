-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      function Breadcrumbs()
        return (require 'nvim-treesitter').statusline { type_patterns = { 'class', 'function', 'methid' }, separator = '::' }
      end

      require('lualine').setup {
        options = {
          globalstatus = true,
        },
        sections = {
          lualine_c = {},
        },
        winbar = {
          lualine_a = { 'filename', 'location' },
          lualine_b = { 'Breadcrumbs()' },
        },
        inactive_winbar = {
          lualine_a = { 'filename' },
        },
        -- tabline = {
        --   lualine_a = { 'buffers' },
        --   lualine_b = { 'branch' },
        --   lualine_c = { 'filename' },
        --   lualine_x = {},
        --   lualine_y = {},
        --   lualine_z = { 'tabs' },
        -- },
      }
    end,
  },
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },
}
