require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<A-Left>" , "<C-w>h", {desc = "focus on the window on the left"  })
map("n", "<A-Right>", "<C-w>l", {desc = "focus on the window on the right" })
map("n", "<A-Down>" , "<C-w>j", {desc = "focus on the window above"        })
map("n", "<A-Up>"   , "<C-w>k", {desc = "focus on the window below"        })

map("n", "<leader>gc", "<cmd> Git commit<CR>", {desc = "fugitive 'git commit'" })
map("n", "<leader>gs", "<cmd> Git<CR>"       , {desc = "fugitive"              })

map("n", "<C-Up>"  , "# zz", {desc = "go to previous occurence"})
map("n", "<C-Down>", "* zz", {desc = "go to next occurence"    })

-- Copilot
map(
  "i",
  "<C-]>",
  function()
    vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
  end,
  {
    desc = "Copilot Accept",
    nowait = true,
    silent = true,
    expr = true,
  }
)

map(
  "i",
  "<C-\\>",
  "<Plug>(copilot-accept-word)",
  {
    desc = "Copilot Accept",
    nowait = true,
    silent = true,
    expr = true,
  }
)

map(
  "i",
  "<C-|>",
  "<Plug>(copilot-accept-line)",
  {
    desc = "Copilot Accept Line",
    nowait = true,
    silent = true,
    expr = true,
  }
)

map(
  "i",
  "<A-.>",
  "<Plug>(copilot-suggest)",
  {
    desc = "Copilot Suggest",
    nowait = true,
    silent = true,
    expr = true,
  }
)

map(
  "i",
  "<A-Down>",
  "<Plug>(copilot-next)",
  {
    desc = "Copilot Next",
    nowait = true,
    silent = true,
    expr = true,
  }
)

map(
  "i",
  "<A-Up>",
  "<Plug>(copilot-previous)",
  {
    desc = "Copilot Previous",
    nowait = true,
    silent = true,
    expr = true,
  }
)
