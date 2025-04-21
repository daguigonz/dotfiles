-- Defaulf:
-- /texto → Busca "texto" hacia adelante.
-- ?texto → Busca "texto" hacia atrás.
-- n → Salta al siguiente resultado.
-- N → Salta al resultado anterior.


vim.g.mapleader = " "

-- Codificación
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Apariencia y fuentes
vim.opt.number = true
vim.opt.title = true
vim.opt.cursorline = true -- Resaltar la línea actual
vim.opt.wrap = false -- No dividir líneas largas automáticamente
vim.opt.linebreak = true -- Romper líneas en palabras
vim.opt.termguicolors = true -- Habilitar colores verdaderos

-- Fuente y ligaduras
vim.opt.guifont = "Geist Mono Font:h16"
vim.opt.linespace = 40 -- Aproximado a `editor.lineHeight`
vim.opt.showbreak = "↪ " -- Indicación de continuación de línea

-- Editor y tabulación
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 10
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.backspace = { "start", "eol", "indent" }

-- Búsqueda
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.incsearch = true -- Búsqueda incremental

-- Terminal
vim.opt.mouse = "" -- Deshabilitar el mouse
vim.opt.list = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

-- Comentarios
vim.opt.formatoptions:append({ "r" })

-- Cursor y animaciones
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
vim.opt.ttimeoutlen = 10
vim.opt.timeoutlen = 500