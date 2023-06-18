local M = {}

M.general_custom = {
  i = {
    ["jk"] = {"<Esc>", "Escape insert mode"},
  },
  n = {
    ["o"] = {"o<Esc>", "Escape insert new line down"},
    ["O"] = {"O<Esc>", "Escape insert new line up"},
  },
}

return M
