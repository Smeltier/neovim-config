return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          -- G: Desativa especificamente a capacidade de formatação do Ruff
          on_attach = function(client, _)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end,
        },
      },
    },
  },
}
