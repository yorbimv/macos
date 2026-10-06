vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Guardar" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Salir" })
map("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Salir sin guardar" })
map("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Quitar resaltado" })

map("n", "<C-h>", "<C-w>h", { desc = "Ventana izquierda" })
map("n", "<C-j>", "<C-w>j", { desc = "Ventana abajo" })
map("n", "<C-k>", "<C-w>k", { desc = "Ventana arriba" })
map("n", "<C-l>", "<C-w>l", { desc = "Ventana derecha" })
map("n", "<leader>sv", "<C-w>v", { desc = "Dividir vertical" })
map("n", "<leader>sh", "<C-w>s", { desc = "Dividir horizontal" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Cerrar división" })

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover selección abajo" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover selección arriba" })
map("x", "<leader>p", "\"_dP", { desc = "Pegar sin perder registro" })

map("n", "<leader>t", "<cmd>terminal<CR>", { desc = "Terminal" })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Salir del terminal" })

map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Cerrar buffer" })
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Siguiente buffer" })
map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Buffer anterior" })
