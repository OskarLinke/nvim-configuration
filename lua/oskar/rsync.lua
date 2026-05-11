local local_root = "/Users/oskarlinke/sunstone/"
local remote_root = "osli-workspace-0:/root/workspace/osli/sunstone/"
local rsh = "/Users/oskarlinke/sunstone/lab/tools/workspace/rsync_k8s_helper.sh"

local excludes = {
  ".venv/", ".vscode/", "wandb/", ".metaflow/",
  "metaflow.s3.*/", "__pycache__/", "*.pyc", ".git/lfs/tmp/",
}
local cmd = { "/opt/homebrew/bin/rsync", "-av", "--stats", "--delete", "--rsh=" .. rsh }
for _, ex in ipairs(excludes) do
  table.insert(cmd, "--exclude=" .. ex)
end
table.insert(cmd, local_root)
table.insert(cmd, remote_root)

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = local_root .. "**",
  callback = function()
    vim.fn.jobstart(cmd, {
      on_stdout = function(_, data)
        local out = table.concat(data, "\n"):gsub("^%s*(.-)%s*$", "%1")
        if out ~= "" then vim.notify(out, vim.log.levels.INFO) end
      end,
      on_stderr = function(_, data)
        local out = table.concat(data, "\n"):gsub("^%s*(.-)%s*$", "%1")
        if out ~= "" then vim.notify(out, vim.log.levels.WARN) end
      end,
    })
  end,
})
