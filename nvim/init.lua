require("config.lazy")
local lspconfig = require("plugins.lspconfig")

require("lspconfig").csharp_ls.setup({
	cmd = { "csharp-ls" },
	root_dir = function()
		return vim.fn.getcwd() -- or set to the root directory of your Unity project
	end,
	settings = {
		csharp = {
			mono = {
				customMonoPath = "/home/ella/Unity/Hub/Editor/6000.0.36f1/Editor/Data/MonoBleedingEdge/lib/mono/4.7.2-api",
			},
			files = {
				include = {
					"/home/ella/Unity/Hub/Editor/6000.0.36f1/Editor/Data/Managed/UnityEngine.dll",
					"/home/ella/Unity/Hub/Editor/6000.0.36f1/Editor/Data/Managed/UnityEditor.dll",
				},
			},
		},
	},
})
