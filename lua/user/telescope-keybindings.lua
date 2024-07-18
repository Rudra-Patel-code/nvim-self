
-- init.lua or keybindings.lua

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Telescope keybindings
map("n", "<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", opts)
map("n", "<leader>/", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>:", "<cmd>Telescope command_history<cr>", opts)
map("n", "<leader><space>", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", opts)
map("n", "<leader>fc", "<cmd>Telescope find_files cwd=~/.config/nvim<cr>", opts)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fF", "<cmd>Telescope find_files cwd=%:p:h<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope git_files<cr>", opts)
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", opts)
map("n", "<leader>fR", "<cmd>Telescope oldfiles cwd=%:p:h<cr>", opts)
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", opts)
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", opts)
map("n", "<leader>s\"", "<cmd>Telescope registers<cr>", opts)
map("n", "<leader>sa", "<cmd>Telescope autocommands<cr>", opts)
map("n", "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
map("n", "<leader>sc", "<cmd>Telescope command_history<cr>", opts)
map("n", "<leader>sC", "<cmd>Telescope commands<cr>", opts)
map("n", "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", opts)
map("n", "<leader>sD", "<cmd>Telescope diagnostics<cr>", opts)
map("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>sG", "<cmd>Telescope live_grep cwd=%:p:h<cr>", opts)
map("n", "<leader>st", "<cmd>Telescope help_tags<cr>", opts)
map("n", "<leader>sH", "<cmd>Telescope highlights<cr>", opts)
map("n", "<leader>sj", "<cmd>Telescope jumplist<cr>", opts)
map("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", opts)
map("n", "<leader>sl", "<cmd>Telescope loclist<cr>", opts)
map("n", "<leader>sM", "<cmd>Telescope man_pages<cr>", opts)
map("n", "<leader>sm", "<cmd>Telescope marks<cr>", opts)
map("n", "<leader>so", "<cmd>Telescope vim_options<cr>", opts)
map("n", "<leader>sR", "<cmd>Telescope resume<cr>", opts)
map("n", "<leader>sq", "<cmd>Telescope quickfix<cr>", opts)
map("n", "<leader>sw", "<cmd>Telescope grep_string<cr>", opts)
map("v", "<leader>sw", "<cmd>Telescope grep_string<cr>", opts)
map("n", "<leader>sW", "<cmd>Telescope grep_string cwd=%:p:h<cr>", opts)
map("v", "<leader>sW", "<cmd>Telescope grep_string cwd=%:p:h<cr>", opts)
map("n", "<leader>uC", "<cmd>Telescope colorscheme enable_preview=true<cr>", opts)
map("n", "<leader>ss", "<cmd>Telescope lsp_document_symbols<cr>", opts)
map("n", "<leader>sS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)


-- init.lua or lsp_keybindings.lua

map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts)
map("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
map("n", "gI", "<cmd>Telescope lsp_implementations<cr>", opts)
map("n", "gy", "<cmd>Telescope lsp_type_definitions<cr>", opts)

