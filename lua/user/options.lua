vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- General
opt.mouse = 'a'                       -- Enable mouse support
opt.clipboard = 'unnamedplus'         -- Access system clipboard
opt.swapfile = false                  -- Don't use swapfile
opt.backup = false                    -- Don't create backup files
opt.undofile = true                   -- Enable persistent undo
opt.writebackup = false               -- Don't create a backup before overwriting

-- Interface
opt.number = true                     -- Show line numbers
opt.relativenumber = true             -- Show relative line numbers
opt.cursorline = true                 -- Highlight the current line
opt.showmatch = true                  -- Highlight matching parenthesis
opt.foldmethod = 'marker'             -- Enable folding (default 'marker')
opt.colorcolumn = '80'                -- Line length marker at 80 columns
opt.splitright = true                 -- Vertical split to the right
opt.splitbelow = true                 -- Horizontal split to the bottom
opt.termguicolors = true              -- True color support
opt.signcolumn = 'yes'                -- Always show the sign column

-- Tabs and Indentation
opt.tabstop = 4                       -- 1 tab == 4 spaces
opt.shiftwidth = 4                    -- Shift 4 spaces when tab
opt.expandtab = true                  -- Use spaces instead of tabs
opt.autoindent = true                 -- Autoindent new lines
opt.wrap = false                      -- Disable line wrap

-- Search
opt.ignorecase = true                 -- Ignore case letters when searching
opt.smartcase = true                  -- Ignore lowercase for the whole pattern
opt.incsearch = true                  -- Show match while typing
opt.hlsearch = true                   -- Highlight all matches

-- Performance
opt.updatetime = 100                  -- Faster completion (default 4000ms)
opt.timeoutlen = 1000                 -- Time to wait for a mapped sequence to complete

-- File Encoding
-- opt.fileencoding = 'utf-8'         -- File content encoding for the buffer

-- Backup and Swap
-- opt.backup = false                 -- Creates a backup file
-- opt.swapfile = false               -- Creates a swapfile

-- Wildmenu
opt.wildmenu = true                   -- Enable command-line completion
opt.wildmode = {'list', 'longest'}    -- Command-line completion mode

-- Scrolling
opt.scrolloff = 0                     -- Minimum lines to keep above and below cursor
opt.sidescrolloff = 8                 -- Minimum columns to keep to the left and right of cursor

-- Completion
opt.completeopt = {'menuone', 'noselect'} -- Completion options

-- Miscellaneous
opt.hidden = true                     -- Enable background buffers
opt.fileformats = {'unix', 'dos', 'mac'} -- File format detection order
opt.shortmess:append('c')             -- Don't give |ins-completion-menu| messages
opt.whichwrap:append('<,>,[,],h,l')   -- Move to previous/next line with these keys
opt.iskeyword:append('-')             -- Treat dash separated words as a word text object


-- Additional Settings
opt.pumheight = 10                    -- Maximum number of entries in a popup
opt.pumblend = 10                     -- Popup blend
opt.cmdheight = 1                     -- More space in the neovim command line for displaying messages
opt.conceallevel = 0                  -- Show ` conceal in markdown files
opt.showtabline = 1                   -- Always show tabs
opt.showcmd = false                   -- Don't show extra message on the last line
opt.fillchars = opt.fillchars + "eob: " -- Fillchars settings
opt.fillchars:append {
  stl = " ",
}
opt.laststatus = 3                    -- Global statusline
opt.scrolloff = 0                     -- Lines of context
opt.title = false                     -- No title
opt.shortmess:append "c"              -- Short messages
opt.whichwrap:append('<,>,[,],h,l')   -- Move to previous/next line with these keys
opt.iskeyword:append('-')             -- Treat dash separated words as a word text object

-- Set whichwrap and iskeyword
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

-- Netrw settings
vim.g.netrw_banner = 0
vim.g.netrw_mouse = 2
vim.g.netrw_liststyle = 3

-- LazyVim auto format
vim.g.autoformat = true

-- LazyVim picker to use
vim.g.lazyvim_picker = "auto"

-- LazyVim root dir detection
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

-- LazyVim automatically configures lazygit
vim.g.lazygit_config = true

-- LazyVim statuscolumn options
vim.g.lazyvim_statuscolumn = {
  folds_open = false,
  folds_githl = false,
}

-- Optionally setup the terminal to use
-- LazyVim.terminal.setup("pwsh")

-- Hide deprecation warnings
vim.g.deprecation_warnings = false

-- Set filetype to `bigfile` for files larger than 1.5 MB
vim.g.bigfile_size = 1024 * 1024 * 1.5 -- 1.5 MB

-- Show the current document symbols location from Trouble in the Lua line
vim.g.trouble_lualine = true
