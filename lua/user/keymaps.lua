local keymap = vim.keymap.set

local opts = {}

local opts = {noremap = true, silent = true}

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<Space>", "", opts)

keymap("n", "<C-i>", "<C-i>", opts)

keymap("i", "jk", "<ESC>", { noremap = true,desc = "Exit insert mode with jk" })

keymap("n", "<leader>nh", ":nohl<CR>", { noremap = true,desc = "Clear search highlights" })

-- increment/decrement numbers
keymap("n", "<leader>+", "<C-a>", {noremap = true, desc = "Increment number" }) -- increment
keymap("n", "<leader>-", "<C-x>", {noremap = true, desc = "Decrement number" }) -- decrement

keymap("n", "<m-tab>", "<c-6>", opts) -- Alt + Tab to toggle between the last two files

keymap("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
keymap("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Center the cursor after searching for the next/previous occurrence
keymap("n", "n", "nzz", opts)   -- n to search for the next occurrence and center the cursor
keymap("n", "N", "Nzz", opts)   -- N to search for the previous occurrence and center the cursor
keymap("n", "*", "*zz", opts)   -- * to search for the word under the cursor forwards and center the cursor
keymap("n", "#", "#zz", opts)   -- # to search for the word under the cursor backwards and center the cursor
keymap("n", "g*", "g*zz", opts) -- g* to seav lhch for partial matches forwards and center the cursor
keymap("n", "g#", "g#zz", opts) 


-- Stay in indent mode after indenting in visual mode
keymap("v", "<", "<gv", opts) -- < to outdent and reselect in visual mode
keymap("v", ">", ">gv", opts) -- > to indent and reselect in visual mode

-- Replace the selected text with the contents of the default register without copying the replaced text
keymap("x", "p", [["_dP]]) -- p to replace selection with default register content without copying


-- Create a mouse menu for LSP actions
vim.cmd [[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]]
-- vim.cmd [[:amenu 10.120 mousemenu.-sep- *]] -- Uncomment to add a separator



-- Bind right mouse click to open the LSP mouse menu
vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>") 

-- Better line navigation
keymap({ "n", "o", "x" }, "<s-h>", "^", opts) -- Shift + h to move to the start of the line (non-blank)
keymap({ "n", "o", "x" }, "<s-l>", "g_", opts) -- Shift + l to move to the end of the line (non-blank)

-- Make navigating wrapped lines more intuitive
keymap({ "n", "x" }, "j", "gj", opts) -- j to move down by visual line
keymap({ "n", "x" }, "k", "gk", opts) -- k to move up by visual line

-- Toggle line wrapping
keymap("n", "<leader>w", ":lua vim.wo.wrap = not vim.wo.wrap<CR>", opts) -- <leader>w (Space + w) to toggle line wrapping

-- window management
keymap("n", "<leader>sv", "<C-w>v", { noremap = true, desc = "Split window vertically" }) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", { noremap = true, desc = "Split window horizontally" }) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", { noremap = true, desc = "Make splits equal size" }) -- make split windows equal width & height
keymap("n", "<leader>sx", "<cmd>close<CR>", { noremap = true, desc = "Close current split" }) -- close current split window

keymap("n", "<leader>to", "<cmd>tabnew<CR>", { noremap = true, desc = "Open new tab" }) -- open new tab
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { noremap = true, desc = "Close current tab" }) -- close current tab
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { noremap = true, desc = "Go to next tab" }) --  go to next tab
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { noremap = true, desc = "Go to previous tab" }) --  go to previous tab
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { noremap = true, desc = "Open current buffer in new tab" }) --  move current buffer to new tab


-- buffers
-- keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
-- keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
-- keymap("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
-- keymap("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
-- keymap("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
-- keymap("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
-- keymap("n", "<leader>bd", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
-- keymap("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Clear search with <esc>
keymap({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- save file
keymap({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })





------------------TELESCOPE KEYMAPS--------------------






















































