return {
    {
        "ellisonleao/gruvbox.nvim"
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim"
        },
        opts = {
            filesystem = {
                bind_to_cwd = false,
                filtered_items = {
                    visible = true
                }
            }
        }
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        opts = {
            persist_mode=false,
            start_in_insert=true,
            direction='float'
        }
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {}
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },
    {
        'Omnisharp/omnisharp-vim'
    },
    {
        'dense-analysis/ale',
        config = function()
            local g = vim.g

            g.ale_ruby_rubocop_auto_correct_all = 1
            
            g.ale_linters = {
                cs = { 'OmniSharp' }
            }
        end
    },
    {
        'neoclide/coc.nvim',
        branch = "release"
    }
}
