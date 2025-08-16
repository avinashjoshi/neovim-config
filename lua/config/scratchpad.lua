--[[
  Scratchpad Markdown Note Workflow

  This function and associated autocmd/keymap automate the process of creating temp-named Markdown notes
  in a designated scratchpad folder. When in the scratchpad directory, it opens a new file named
  "scratchpad_YYYYMMDD_HHMMSS.md" for quick notes. Outside the scratchpad, it defaults every new buffer
  (including those created with :enew) to the markdown filetype.

  Key points:
    - <leader>a creates a scratchpad Markdown file if in the scratchpad directory, or a markdown buffer elsewhere.
    - On buffer entry, unnamed buffers are "promoted" to scratchpad notes if in the scratchpad directory.
    - All new files/buffers have markdown syntax highlighting and filetype by default.
]]

local M = {}

function M.open_scratchpad_note()
  local scratchpad_dir = vim.fn.expand("/Users/avi/Library/CloudStorage/Dropbox/(DOCUMENTS)/(AVINASH)/scratchpad")
  local cwd = vim.fn.getcwd()
  if cwd == scratchpad_dir then
    local fname = "scratchpad_" .. os.date("%Y%m%d_%H%M%S") .. ".md"
    local fpath = scratchpad_dir .. "/" .. fname
    vim.cmd("edit " .. fpath)
    vim.bo.filetype = "markdown"
  else
    vim.cmd("enew")
  end
end

vim.keymap.set("n", "<leader>a", M.open_scratchpad_note, { desc = "New scratchpad markdown file" })

return M
