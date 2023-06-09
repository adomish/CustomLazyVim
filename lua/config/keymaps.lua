-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ファイルブラウザをカレントディレクトリで開く
local map = vim.api.nvim_set_keymap

-- コマンドラインを非表示、初期コマンドに割り当て
local silent = { silent = true, noremap = true }

-- インサートモードから離脱
map("i", "jk", "<esc>", silent)

-- xをヤンクしない
map("n", "x", '"_x', silent)
