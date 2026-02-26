return {
  {
    "datsfilipe/vesper.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("vesper").setup({
        transparent = false,
      })
      vim.cmd.colorscheme("vesper")
    end,
  },
}
