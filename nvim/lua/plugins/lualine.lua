return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = {
    options = {
      icons_enabled = true,
      theme = "palenight",
      component_separators = "|",
      section_separators = { left = "", right = "" },
    },
  },
}
