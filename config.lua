vim.keymap.set("n", "nh", ":HopWord<CR>")
vim.keymap.set("n", "<silent><TAB>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<silent><S-TAB>", ":BufferLineCyclePrev<CR>")

lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "lunar"
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false


lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.highlight.enable = true

lvim.plugins = {
  {"mattn/emmet-vim"},
  {"phaazon/hop.nvim",
    config = function()
     require'hop'.setup()
    end
  },
  {"kevinhwang91/rnvimr",
    config = function ()
      vim.keymap.set("n", "<C-a>", ":RnvimrToggle<CR>")
    end},
  {"lambdalisue/suda.vim"},
  {"farmergreg/vim-lastplace"},
  {"akinsho/bufferline.nvim"},
}

