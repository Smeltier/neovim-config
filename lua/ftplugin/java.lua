local jdtls = require("jdtls")

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls/" .. project_name

local config = {
  cmd = {
    "jdtls",
    "-data",
    workspace_dir,
  },
  root_dir = vim.fn.getcwd(),
}

jdtls.start_or_attach(config)
