reload "user.plugins"
reload "user.options"
reload "user.keymaps"
reload "user.lsp"
reload "user.spectre"
reload "user.leap"

-- general
lvim.log.level = "info"
lvim.format_on_save = false

-- After changing plugin config exit and reopen LunarVim, Run :PackerSync
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

lvim.builtin.treesitter.auto_install = true

