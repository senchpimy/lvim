vim.keymap.set("n", "nh", ":HopWord<CR>")
vim.keymap.set("n", "<TAB>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-TAB>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<C-c>", ":BufferLinePickClose<CR>")

vim.wo.relativenumber = true

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
  {
  "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript","json","lua" }, {
          RGB = true, -- #RGB hex codes
          RRGGBB = true, -- #RRGGBB hex codes
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true, -- CSS rgb() and rgba() functions
          hsl_fn = true, -- CSS hsl() and hsla() functions
          css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
          })
  end,
  },

}

