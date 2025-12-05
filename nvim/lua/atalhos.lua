vim.keymap.set('n', "<leader>k", ":TransparentToggle<CR>")

-- Abre/fecha a árvore de diretórios.
vim.keymap.set('n', '<leader>n', ':Neotree filesystem toggle right<CR>')
vim.keymap.set('n', '<leader>m', ':Neotree focus<CR>')

-- Funções do servidor de linguagem (lsp).
vim.keymap.set('n', "<leader>s", vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {})

-- Abre as janelas do telescope, fuzy find e find files.
vim.keymap.set('n', '<C-p>', require("telescope.builtin").find_files, {})
vim.keymap.set('n', '<leader>fg', require("telescope.builtin").live_grep, {})

-- Navegação pelas janelas.
vim.keymap.set('n', '<S-tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>r', ':BufferLineCloseRight<CR>')
vim.keymap.set('n', '<leader>l', ':BufferLineCloseLeft<CR>')

-- Mostrar janela de erros --
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {})
