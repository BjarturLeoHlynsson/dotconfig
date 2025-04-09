vim.g.mapleader = ' '

local keymap = vim.keymap -- for conciseness

keymap.set('i', 'jj', '<ESC>', { desc = 'Exit insert mode with jk' })

keymap.set('n', '<leader>n', ':nohl<CR>', { desc = 'Clear search highlights' })

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' }) -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' }) -- make split windows equal width & height
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window

keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' }) -- open new tab
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' }) -- close current tab
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' }) --  go to next tab
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' }) --  go to previous tab
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' }) --  move current buffer to new tab

-- terminal
vim.keymap.set('n', '<leader>æ', '<cmd>ToggleTerm<CR>', { desc = 'Toggle Terminal', })

-- moving lines up and down using alt + j and k
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==') -- move line up(n)
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==') -- move line down(n)
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv") -- move line down(v)

keymap.set("n", "<leader>ipi", "<cmd>Pioinit<CR>", { desc = "PIO Init" })
keymap.set("n", "<leader>ipb", "<cmd>Piorun<CR>", { desc = "PIO Build" })
keymap.set("n", "<leader>ipl", "<cmd>Piolib<CR>", { desc = "PIO Library" })
keymap.set("n", "<leader>ipc", "<cmd>Piocmd<CR>", { desc = "PIO Command" })
keymap.set("n", "<leader>ipm", "<cmd>Piomon<CR>", { desc = "PIO Serial Monitor" })
keymap.set("n", "<leader>ipd", "<cmd>Piodebug<CR>", { desc = "PIO Debug" })
