lvim.leader = "space"
-- add your own keymapping
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- jk or kj go to normal mode from insert mode
lvim.keys.insert_mode["jk"] = '<Esc>'
lvim.keys.insert_mode["kj"] = '<Esc>'
-- L and H to navigate buffers
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- X closes a buffer
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
-- F Open Spectre (find and replace). Close with :q
lvim.keys.normal_mode["<S-r>"] = ":lua require('spectre').open()<CR>"
lvim.keys.visual_mode["<S-r>"] = ":lua require('spectre').open_visual({select_word=true})<CR>"
lvim.keys.normal_mode["<leader>R"] = ":lua require('spectre').open_file_search()<CR>"

-- add empty line below and above without entering insert_mode
lvim.keys.normal_mode["<CR>"] = "o<Esc>"
lvim.keys.normal_mode["<backspace>"] = "O<Esc>"
