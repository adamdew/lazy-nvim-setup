require("bigfile").setup({
  -- detect long js files
  filesize = 2,
  pattern = function(bufnr)
    -- you can't use `nvim_buf_line_count` because this runs on BufReadPre
    local file_contents = vim.fn.readfile(vim.api.nvim_buf_get_name(bufnr))
    local file_length = #file_contents
    local filetype = vim.filetype.match({ buf = bufnr })
    if file_length > 5000 and filetype == "javascript" then
      return true
    else
      return false
    end
  end,
  features = { -- features to disable
    "indent_blankline",
    "illuminate",
    -- "lsp",
    "treesitter",
    -- "syntax",
    -- "matchparen",
    -- "vimopts",
    "filetype",
  },
})
