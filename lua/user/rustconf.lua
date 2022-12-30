local status_ok, rt = pcall(require, "rust-tools")
if not status_ok then
	return
end

rt.setup({
	server = {
		settings = {
			["rust-analyzer"] = {
				inlayHints = { locationLinks = false },
			},
		},
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	},
})
