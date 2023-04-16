return {
  { "nvim-telescope/telescope-dap.nvim" },
  { "mfussenegger/nvim-dap-python" },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "folke/neodev.nvim",
    opts = {
      experimental = { pathStrict = true },
      library = { plugins = { "nvim-dap-ui" }, types = true },
    },
  },
}
