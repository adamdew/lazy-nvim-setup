-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[highlight Visual guifg=white guibg=green]])
vim.cmd([[highlight Cursor guifg=black guibg=green]])
vim.cmd('set indentexpr cindent')

require("lspconfig").intelephense.setup({
  settings = {
    intelephense = {
      format = { braces = "k&r" },
      environment = { phpVersion = "8.1.0" },
      filetypes = {"php", "phtml", "blade"}
    },
  },
})

require("lspconfig").tailwindcss.setup({
    filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "clojure", "django-html", "htmldjango", "edge", "eelixir", "elixir", "ejs", "erb", "eruby", "gohtml", "gohtmltmpl", "haml", "handlebars", "hbs", "html", "htmlangular", "html-eex", "heex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte", "templ", "phtml" }
})

require("lspconfig").html.setup({
    filetypes = { "html", "phtml", "blade" }
})
