lvim.leader = "space"

-- you can remap <leader>h which is for clearing search highlighting	and just write :noh when you want to clear

-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- jk or kj go to normal mode from insert mode
lvim.keys.insert_mode["jk"] = '<Esc>'
lvim.keys.insert_mode["kj"] = '<Esc>'

lvim.builtin.which_key.mappings["S"] = {
  name = "Session",
  c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}

-- L and H to navigate buffers
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- X closes a buffer
lvim.keys.normal_mode["<S-q>"] = ":BufferKill<CR>"
--
-- R Open Spectre (find and replace). Close with :q
lvim.keys.normal_mode["<S-r>"] = ":lua require('spectre').open()<CR>"
lvim.keys.visual_mode["<S-r>"] = ":lua require('spectre').open_visual({select_word=true})<CR>"
lvim.keys.normal_mode["<leader>r"] = ":lua require('spectre').open_file_search()<CR>"

-- add empty line below and above without entering insert_mode
lvim.keys.normal_mode["<S-Down>"] = "o<Esc>"
lvim.keys.normal_mode["<S-Up>"] = "O<Esc>"

-- shift> or shift< in visual mode to indent
lvim.keys.visual_mode["<"] = "<gv"
lvim.keys.visual_mode[">"] = ">gv"

-- Move text up and down
lvim.keys.normal_mode["<M-j>"] = ":m .+1<CR>=="
lvim.keys.normal_mode["<M-k>"] = ":m .-2<CR>=="
lvim.keys.visual_mode["<M-j>"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["<M-k>"] = ":m '<-2<CR>gv=gv"

-- when paste don't yank selected text
lvim.keys.visual_mode["p"] = '"_dP'
-- when delete don't yank selected text
lvim.keys.visual_mode["d"] = '"_d'
-- when delete whole line don't yank the line
lvim.keys.normal_mode["dd"] = '"_dd'

-- alt-s to leap to line
lvim.keys.normal_mode["<M-s>"] = "<cmd>lua LEAP_TO_LINE()<CR>"

lvim.keys.normal_mode["<F5>"] = "<cmd>UndotreeToggle<CR>"


-- toogleterm mappings
-- https://github.com/akinsho/toggleterm.nvim#terminal-window-mappings
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}

  -- esc, jk, kj for normal mode
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'kj', [[<C-\><C-n>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
