-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("conform").setup({
  formatters_by_ft = {
    blade = { "blade-formatter" },
  },
})

require("nvim-treesitter.configs").setup({ ... })

-- Handling treeshitter for blade.php files
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade",
}
vim.filetype.add({
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
})
vim.filetype.add({
  extension = {
    phtml = "html",
  },
})

require("obsidian").setup({
  notes_subdir = "notes",
  workspaces = {
    {
      name = "HC Brands Notes - Obsidian",
      path = "/mnt/c/Users/adew/Documents/gdrive/HC Brands Notes - Obsidian/",
    },
  },
})

require("tint").setup()
require("oil").setup()
require("bigfile").setup({
  -- detect long js files
  pattern = function(bufnr, filesize_mib)
    -- you can't use `nvim_buf_line_count` because this runs on BufReadPre
    local file_contents = vim.fn.readfile(vim.api.nvim_buf_get_name(bufnr))
    local file_length = #file_contents
    local filetype = vim.filetype.match({ buf = bufnr })
    if file_length > 5000 and filetype == "javascript" then
      return true
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
