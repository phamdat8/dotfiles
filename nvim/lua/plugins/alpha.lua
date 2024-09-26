return {
  {
    "ds1sqe/Calendar.nvim",
  },
  {
    "goolord/alpha-nvim",
    dependencies = { "phamdat8/alpha-art.nvim" },
    opts = function()
      local dashboard = require("alpha.themes.dashboard")

      local art = require("art").pixels("bee")

      dashboard.section.header.val = art.val
      dashboard.section.header.opts = art.opts
      dashboard.section.buttons.val = {}

      dashboard.section.footer.val = require("calendar").getCalendar()
    end,
    config = function()
      require("alpha").setup(require("alpha.themes.dashboard").opts)
    end,
  },
}
