local plugin_home = string.format("%s/tasks", vim.fn.stdpath('data'))
local cwd = vim.fn.getcwd()

local function create_tasks_dir()
  vim.fn.mkdir(plugin_home, "p")
end

local M = {}

M.open = function()
  local cwd_tasks_dir = string.format("%s%s", plugin_home, cwd)
  vim.fn.mkdir(cwd_tasks_dir, "p")

  local file = string.format("%s/TODO.md", cwd_tasks_dir)
  vim.cmd.edit(file)
end

M.setup = function()
  create_tasks_dir()
end

return M
