reload "user.plugins"
reload "user.options"
reload "user.keymaps"
reload "user.lsp"
reload "user.spectre"
reload "user.leap"
reload "user.telescope"

-- general
lvim.log.level = "info"
lvim.format_on_save = false

-- After changing plugin config exit and reopen LunarVim, Run :PackerSync
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.terminal.auto_scroll = false

-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
-- lvim.builtin.nvimtree.setup.update_focused_file.update_root = false

-- LunarVim igonores has this option set to hide node_modules, .git, etc.
-- If you don't want that set it to empty obj. Or use toggle custom filter pressing U
-- lvim.builtin.nvimtree.setup.filters.custom = { }

lvim.builtin.treesitter.auto_install = true
