local cmp = require "cmp"
local defaults = require "nvchad.configs.cmp"

local options = vim.tbl_deep_extend("force", defaults, {
  completion = { completeopt = "menu,menuone,noinsert,noselect" },

  mapping = cmp.mapping.preset.insert {
    ["<Up>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
    ["<Down>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },

    ["<CR>"] = cmp.mapping.confirm { select = false }, -- Enter only confirms if item explicitly chosen

    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
  },
})

return options
