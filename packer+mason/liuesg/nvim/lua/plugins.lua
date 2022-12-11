require('packer').init({
    git = {
        default_url_format = 'git@github.com:%s'
    }
}) 
return require("packer").startup(function()
	-- 插件管理器
	use("wbthomason/packer.nvim")
	-- 文件浏览器
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	-- 主题
	use("ful1e5/onedark.nvim")
	use("rmehri01/onenord.nvim")
	use("xiyaowong/nvim-transparent")
	-- 首页
	use("goolord/alpha-nvim")
	-- 对齐线
	use("lukas-reineke/indent-blankline.nvim")
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })
	-- 状态栏
	use("nvim-lualine/lualine.nvim")
	-- 编辑历史
	use("simnalamburt/vim-mundo")
	-- 语法高亮，折叠代码，缩进处理
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	-- lsp支持
	--use({ "neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer" })
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap",
         "jayp0521/mason-nvim-dap.nvim",
    }   
	-- 模糊匹配工具
	use("junegunn/fzf")
	use("junegunn/fzf.vim")
	-- 方便操作
	use("tpope/vim-commentary")
	use("tpope/vim-fugitive")
	use("tpope/vim-repeat")
	use("tpope/vim-surround")
	use("tpope/vim-unimpaired")
	-- 快速跳转
	use({
		"phaazon/hop.nvim",
		branch = "v1",
		config = function()
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})
	-- 函数列表
	use("liuchengxu/vista.vim")
	-- 代码补全
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	-- vsnip
	use("hrsh7th/cmp-vsnip")
	-- lsp美化
	use("onsails/lspkind-nvim")
	-- 代码片段
	use({
		"SirVer/ultisnips",
		requires = { { "honza/vim-snippets", rtp = "." } },
	})
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use({
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				mapping = { "jk", "jj", "kj", "kk", "hh" },
			})
		end,
	})
	-- Github copilot
	use({ "github/copilot.vim" })
	-- 格式化代码
	use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
	use( { "jayp0521/mason-null-ls.nvim"})
    use({ "rlue/vim-barbaric" })
end)
