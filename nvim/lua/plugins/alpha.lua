return {
  {
    "ds1sqe/Calendar.nvim",
  },
  {
    "goolord/alpha-nvim",
    dependencies = { "phamdat8/alpha-art.nvim" },
    opts = function()
      local dashboard = require("alpha.themes.dashboard")

      dashboard.config.layout[2] = require("art").pixels("pvz/peashooter")
      dashboard.section.buttons.val = {}

      dashboard.section.footer.val = require("calendar").getCalendar()

      return dashboard
    end,
    config = function(_, dashboard)
      require("alpha").setup(dashboard.config)
    end,
  },
}
