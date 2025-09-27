return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("v", "f", function()
      local start_pos = vim.api.nvim_buf_get_mark(0, "<")
      local end_pos = vim.api.nvim_buf_get_mark(0, ">")
      vim.lsp.buf.format({
        async = true,
        range = {
          start = { start_pos[1], start_pos[2] },
          ["end"] = { end_pos[1], end_pos[2] },
        },
      })
    end, { noremap = true, silent = true })
  end,
}
