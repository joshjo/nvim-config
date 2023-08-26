local function restore_nvim_tree()
    local nvim_tree = require('nvim-tree.api')
    print(vim.fn.getcwd())
    nvim_tree.tree.change_root(vim.fn.getcwd())
    nvim_tree.tree.open()
    nvim_tree.tree.reload()
end

local function close_nvim_tree()
    local nvim_tree = require('nvim-tree.api')
    nvim_tree.tree.close()
end    

require("auto-session").setup {
  log_level = "error",

  cwd_change_handling = {
    restore_upcoming_session = true, -- already the default, no need to specify like this, only here as an example
    pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
    post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
      require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
    end,
  },

  -- pre_restore_cmds = {restore_nvim_tree}
  pre_save_cmds = {close_nvim_tree}
}
