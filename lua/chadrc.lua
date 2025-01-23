-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})


M.base46 = {
  integrations = { "dap" },
  hl_override = {
    NvimTreeNormal = { bg = "#1e2122" },
    NvimTreeNormalNC = { bg = "#1e2122"},
    NvimTreeWinSeparator = { bg = "#1e2122"},
    WinSeparator = { bg = "#1e2122"},
    BufferLineSeparator = { bg = "#1e2122" },
    WhichKeySeparator = { bg = "#1e2122" },
    BufferLineSeparatorVisible = { bg = "#1e2122" },
    BufferLineSeparatorSelected = { bg = "#1e2122" },
    LineNr = { bg = "1e2122" },
    NvimTreeOpenedFolderName = { bg = "#1e2122" },
    DapUILineNumber = { bg = "#1e2122" },
    BufferLineBackground = { bg = "#1e2122" },
    -- NvimTreeCursorLine = { bg = "#373B41"},
    -- NvimTreeCursorLine = { bg = "#171823"},
    NvimTreeCursorLine = { bg = "#282b2c"},
    -- NvimTreeNormal = { bg = "#282828" },
    -- NvimTreeNormalNC = { bg = "#282828"},
    -- NvimTreeWinSeparator = { bg = "#282828"},
    -- WinSeparator = { bg = "#282828"},
    -- BufferLineSeparator = { bg = "#282828" },
    -- WhichKeySeparator = { bg = "#282828" },
    -- BufferLineSeparatorVisible = { bg = "#282828" },
    -- BufferLineSeparatorSelected = { bg = "#282828" },
    -- LineNr = { bg = "282828" },
    -- NvimTreeOpenedFolderName = { bg = "#282828" },
    -- DapUILineNumber = { bg = "#282828" },
    -- BufferLineBackground = { bg = "#282828" },
    -- -- NvimTreeCursorLine = { bg = "#373B41"},
    -- -- NvimTreeCursorLine = { bg = "#171823"},
    -- NvimTreeCursorLine = { bg = "#353535"},
    --
    

    -- NavicSeparator = { bg = "11121D"},
    -- NvimTreeFolderArrowOpen = { bg = "#11121D"},
    -- NvimTreeFolderArrowClosed = { bg = "#11121D"},
    -- NvimTreeRootFolder = { bg = "#11121D"},
    -- NvimTreeWindowPicker = { bg = "#11121D"},
    -- NvimTreeGitNew = { bg = "#11121D"},
    -- NvimTreeGitDirty = { bg = "#11121D"},
    -- NvimTreeFolderIcon = { bg = "#11121D"},
    -- NvimTreeFolderName = { bg = "#11121D"},
    -- NvimTreeGitDeleted = { bg = "#11121D"},
    -- NvimTreeGitIgnored = { bg = "#11121D"},
    -- NvimInternalError = { bg = "#11121D"},
    -- NvimTreeEndOfBuffer = { bg = "#11121D"},
    -- NvimTreeSpecialFile = { bg = "#11121D"},
    -- NvimTreeIndentMarker = { bg = "#11121D"},
    -- NvimTreeEmptyFolderName = { bg = "#11121D"},

    -- NvimTreeNormal = { bg = "#171B20" },
    -- NvimTreeNormalNC = { bg = "#171B20"},
    -- NvimTreeWinSeparator = { bg = "#171B20"},
    -- WinSeparator = { bg = "#171B20"},
    -- BufferLineSeparator = { bg = "#171B20" },
    -- WhichKeySeparator = { bg = "#171B20" },
    -- BufferLineSeparatorVisible = { bg = "#171B20" },
    -- BufferLineSeparatorSelected = { bg = "#171B20" },
    -- LineNr = { bg = "171B20" },
    -- NvimTreeOpenedFolderName = { bg = "#171B20" },
    -- DapUILineNumber = { bg = "#171B20" },
    -- BufferLineBackground = { bg = "#171B20" },
    --
 
  }
}
M.ui = {
	theme = "tomorrow_night",
  statusline = {
    theme = "minimal",
    separator_style = "block",
  },
  nvdash = {
    load_on_startup = true,
  },
  tabufline = {
    enabled = true,
    show_numbers = true,
  },

    
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}



return M
