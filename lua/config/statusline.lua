-- Inspiration : https://nuxsh.is-a.dev/blog/custom-nvim-statusline.html
-- Mode Color : https://www.reddit.com/r/neovim/comments/tz6p7i/how_can_we_set_color_for_each_part_of_statusline/

local modes = {
  ["n"] = { text="NORMAL", highlight="NormalMode" },
  ["no"] = { text="NORMAL", highlight="NormalMode" },
  ["v"] = { text="VISUAL", highlight="VisualMode" },
  ["V"] = { text="VISUAL LINE", highlight="VisualMode" },
  [""] = { text="VISUAL BLOCK", highlight="VisualMode" },
  ["s"] = { text="SELECT", highlight="" },
  ["S"] = { text="SELECT LINE", highlight="" },
  [""] = { text="SELECT BLOCK", highlight="" },
  ["i"] = { text="INSERT", highlight="InsertMode" },
  ["ic"] = { text="INSERT", highlight="InsertMode" },
  ["R"] = { text="REPLACE", highlight="ReplacelMode" },
  ["Rv"] = { text="VISUAL REPLACE", highlight="ReplacelMode" },
  ["c"] = { text="COMMAND", highlight="CommandMode" },
  ["cv"] = { text="VIM EX", highlight="" },
  ["ce"] = { text="EX", highlight="" },
  ["r"] = { text="PROMPT", highlight="" },
  ["rm"] = { text="MOAR", highlight="" },
  ["r?"] = { text="CONFIRM", highlight="" },
  ["!"] = { text="SHELL", highlight="" },
  ["t"] = { text="TERMINAL", highlight="" },
}

local function mode() 
    local current_mode = vim.api.nvim_get_mode().mode
    local highlight_start
    local highlight_end

    if modes[current_mode].highlight == "" then
        highlight_start = ""
        highlight_end = ""
    else
        highlight_start = string.format("%%#%s#", modes[current_mode].highlight)
        highlight_end = "%*"
    end
    return string.format(
        "%s %s %s", 
        highlight_start,
        modes[current_mode].text:upper(),
        highlight_end
    )
end

local function filepath()
    local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":.")
    if fpath == "" or fpath == "." then
        return " "
    end

    return string.format(" %s", fpath)
end

local function lsp()
  local count = {}
  local levels = {
    errors = "Error",
    warnings = "Warn",
    info = "Info",
    hints = "Hint",
  }

  for k, level in pairs(levels) do
    count[k] = vim.tbl_count(vim.diagnostic.get(0, { severity = level }))
  end

  local errors = ""
  local warnings = ""
  local hints = ""
  local info = ""

  if count["errors"] ~= 0 then
    errors = " %#LspDiagnosticsSignError# " .. count["errors"]
  end
  if count["warnings"] ~= 0 then
    warnings = " %#LspDiagnosticsSignWarning# " .. count["warnings"]
  end
  if count["hints"] ~= 0 then
    hints = " %#LspDiagnosticsSignHint# " .. count["hints"]
  end
  if count["info"] ~= 0 then
    info = " %#LspDiagnosticsSignInformation# " .. count["info"]
  end

  return errors .. warnings .. hints .. info .. "%#Normal#"
end

local function lineinfo()
  if vim.bo.filetype == "alpha" then
    return ""
  end
  return " %l:%c "
end

Statusline = {}

Statusline.active = function()
  return table.concat {
    "%#Statusline#",
    mode(),
    "%#Normal# ",
    filepath(),
    "%#Normal#",
    lsp(),
    "%=%#StatusLineExtra#",
    lineinfo()
  }
end

function Statusline.inactive()
  return " %F"
end

function Statusline.short()
  return "%#StatusLineNC#   NvimTree"
end

vim.api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline.short()
  augroup END
]], false)
