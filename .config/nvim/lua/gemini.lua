-- ~/.config/nvim/lua/gemini.lua
local M = {}

-- Obtener texto seleccionado en modo visual
local function get_visual_selection()
  local bufnr = vim.api.nvim_get_current_buf()
  local start_line = vim.fn.line("v")
  local end_line = vim.fn.line(".")
  local start_col = vim.fn.col("v")
  local end_col = vim.fn.col(".")

  -- Corregir si la selección es de abajo hacia arriba
  if start_line > end_line or (start_line == end_line and start_col > end_col) then
    start_line, end_line = end_line, start_line
    start_col, end_col = end_col, start_col
  end

  local lines = vim.api.nvim_buf_get_lines(bufnr, start_line - 1, end_line, false)
  if #lines == 0 then
    vim.notify("No hay texto seleccionado.", vim.log.levels.WARN)
    return nil
  end

  start_col = math.max(1, start_col)
  end_col = math.max(1, end_col)

  if #lines == 1 then
    lines[1] = string.sub(lines[1], start_col, end_col)
  else
    lines[1] = string.sub(lines[1], start_col)
    lines[#lines] = string.sub(lines[#lines], 1, end_col)
  end

  return table.concat(lines, "\n")
end

-- Mostrar respuesta en una ventana flotante centrada con formato markdown
local function show_floating_window(content_lines)
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, content_lines)

  local width = math.floor(vim.o.columns * 0.6)
  local height = math.floor(vim.o.lines * 0.5)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local opts = {
    style = "minimal",
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    border = "rounded",
  }

  local win = vim.api.nvim_open_win(buf, true, opts)
  vim.api.nvim_buf_set_option(buf, "filetype", "markdown")
end

-- Función principal que se puede mapear
function M.ask_gemini()
  local prompt = get_visual_selection()
  if not prompt then return end

  local api_key = os.getenv("GEMINI_API_KEY")
  if not api_key or api_key == "" then
    vim.notify("No se encontró la variable de entorno GEMINI_API_KEY", vim.log.levels.ERROR)
    return
  end

  local json_body = vim.fn.json_encode({
    contents = {{
      parts = {{ text = prompt }},
      role = "user"
    }}
  })

  local curl_cmd = {
    "curl", "-s",
    "-X", "POST",
    "-H", "Content-Type: application/json",
    "-H", "x-goog-api-key: " .. api_key,
    "--data", json_body,
    "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent"
  }

  vim.fn.jobstart(curl_cmd, {
    stdout_buffered = true,
    on_stdout = function(_, data)
      if not data then return end
      local output = table.concat(data, "\n")
      local ok, decoded = pcall(vim.fn.json_decode, output)

      local response = ok and decoded
        and decoded.candidates
        and decoded.candidates[1]
        and decoded.candidates[1].content
        and decoded.candidates[1].content.parts
        and decoded.candidates[1].content.parts[1].text

      if response then
        show_floating_window(vim.split(response, "\n"))
      else
        vim.notify("Respuesta no válida de Gemini. Revisa la API Key o el contenido.", vim.log.levels.WARN)
      end
    end
  })
end

return M
