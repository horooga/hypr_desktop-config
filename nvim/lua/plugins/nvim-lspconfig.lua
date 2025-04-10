return {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
        local servers = { "pyright", "basedpyright", "ruff", "ruff_lsp", "bacon_ls", ruff, lsp }
        for _, server in ipairs(servers) do
            opts.servers[server] = opts.servers[server] or {}
            opts.servers[server].enabled = server == lsp or server == ruff
        end
    end,
}
