-- Pesquisar abas ctrl+t
vim.api.nvim_set_keymap("n", "<C-t>", ":Telescope buffers<enter>", { noremap = true })

-- Pesquisar arquivos espaço+espaço
vim.api.nvim_set_keymap("n", "<space><space>", ":Telescope find_files<enter>", { noremap = true })

-- Salvar com ctrl+s
vim.api.nvim_set_keymap('i', '<C-s>', '<esc>:w<enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-s>', '<esc>:w<enter>', { noremap = true })

-- Fechar sem salvar com Esc+esc
vim.api.nvim_set_keymap('n', '<esc><esc>', ':q!<enter>', { noremap = true })

-- Aumentar / Diminuir o tamanho do split
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w><', { noremap = true }) -- Diminuir
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>>', { noremap = true }) -- Aumentar
