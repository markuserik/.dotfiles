return {
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
}
