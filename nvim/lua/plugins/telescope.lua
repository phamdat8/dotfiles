return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        ";p",
        function() require("telescope.builtin").find_files() end,
        desc = "Find File",
      },
      {
        ";f",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Find Text",
      },
    },
    opts = function()
      local status, telescope = pcall(require, "telescope")
      if not status then
        return
      end
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")

      local function telescope_buffer_dir()
        return vim.fn.expand("%:p:h")
      end

      local fb_actions = require("telescope").extensions.file_browser.actions

      telescope.setup({
        defaults = {
          mappings = {
            n = {
              ["q"] = actions.close,
            },
          },
        },
        extensions = {
          file_browser = {
            theme = "dropdown",
            hijack_netrw = true,
            mappings = {
              ["i"] = {
                ["<C-w>"] = function()
                  vim.cmd("normal vbd")
                end,
              },
              ["n"] = {
                ["N"] = fb_actions.create,
                ["h"] = fb_actions.goto_parent_dir,
                ["/"] = function()
                  vim.cmd("startinsert")
                end,
              },
            },
          },
        },
      })

      telescope.load_extension("file_browser")

      vim.keymap.set("", "<F2>", function()
        builtin.buffers()
      end)
      vim.keymap.set("n", ";t", function()
        builtin.help_tags()
      end)
      vim.keymap.set("n", ";;", function()
        builtin.resume()
      end)
      vim.keymap.set("n", ";e", function()
        builtin.diagnostics()
      end)
      vim.keymap.set("n", ";o", function()
        telescope.extensions.file_browser.file_browser({
          path = "%:p:h",
          cwd = telescope_buffer_dir(),
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          previewer = false,
          initial_mode = "normal",
          layout_config = { height = 400 },
        })
      end)
    end,
  },
}
