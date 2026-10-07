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

local term_buf = nil
local function toggle_term()
  if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
    local wins = vim.fn.win_findbuf(term_buf)
    if #wins > 0 then
      vim.api.nvim_win_close(wins[1], false)
      return
    end
  end
  vim.cmd("botright 12split")
  if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
    vim.api.nvim_win_set_buf(0, term_buf)
  else
    vim.cmd("terminal")
    term_buf = vim.api.nvim_get_current_buf()
  end
  vim.cmd("startinsert")
end

map("n", "<leader>t", toggle_term, { desc = "Terminal (toggle, abajo)" })

local float_win, float_buf = nil, nil
local function toggle_float_term()
  if float_win and vim.api.nvim_win_is_valid(float_win) then
    vim.api.nvim_win_close(float_win, false)
    if float_buf and vim.api.nvim_buf_is_valid(float_buf) then
      vim.api.nvim_buf_delete(float_buf, { force = true })
    end
    float_win, float_buf = nil, nil
    return
  end
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.7)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)
  local buf = vim.api.nvim_create_buf(false, true)
  float_win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })
  vim.cmd("terminal")
  float_buf = vim.api.nvim_get_current_buf()
  vim.cmd("startinsert")
end
map("n", "<leader>T", toggle_float_term, { desc = "Terminal flotante (toggle)" })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Salir del terminal" })

map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Cerrar buffer" })
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Siguiente buffer" })
map("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Buffer anterior" })
