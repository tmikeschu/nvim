return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_z, {
        function()
          return vim.fn.fnamemodify(vim.uv.cwd() or "", ":t")
        end,
        icon = "",
      })
    end,
  },
}
