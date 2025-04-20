return {


  {
      'navarasu/onedark.nvim',
      lazy=false,
      priority=1000,
      config = function()
      -- load the colorscheme here
          vim.cmd([[colorscheme onedark]])
        end,
  },

   {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  dependencies =  {'nvim-lua/plenary.nvim'} 
  },

  -- treesitter
   {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},

   {('tpope/vim-commentary')},

   {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  dependencies = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
    },

     {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim"} 
    },
    {('hrsh7th/nvim-cmp')},
    {('tzachar/local-highlight.nvim')},
    {
        'klafyvel/vim-slime-cells',
        dependencies = {'jpalardy/vim-slime'},
        init = function()

            vim.g.slime_target = "neovim"

            -- disables default bindings
            vim.g.slime_no_mappings = true
        end,
        config = function()
            vim.g.slime_cell_delimiter = "^\\s*##"

            -- send visual selection
            vim.keymap.set("v", "<leader>s", '<Plug>SlimeRegionSend')
            -- vim.keymap.set("n", "<leader>s", '<Plug>SlimeMotionSend')
            vim.keymap.set("n", "<leader>as", '<Plug>SlimeLineSend')

            -- SLime cells
            vim.keymap.set("n", '<leader>s', '<Plug>SlimeCellsSendAndGoToNext')
            vim.keymap.set("n", '<leader>j', '<Plug>SlimeCellsNext')
            vim.keymap.set("n", '<leader>k', '<Plug>SlimeCellsPrev')
        end

    },
     {
        'chipsenkbeil/distant.nvim',
        branch = 'v0.3',
        config = function()
            require('distant'):setup()
        end
    },
  {'akinsho/toggleterm.nvim', version = "*", config = true}
}
