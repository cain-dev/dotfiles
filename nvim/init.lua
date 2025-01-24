-- Carrega o módulo de configuração do 'lazy.nvim'
require("config.lazy")

-- Opções do Neovim
vim.cmd('syntax on')                        -- Ativa a realce de sintaxe
vim.opt.incsearch = true                    -- Ativa a busca incremental
vim.opt.ignorecase = true                   -- Ignora diferenças entre maiúsculas e minúsculas nas buscas
vim.opt.smartcase = true                    -- Usa busca sensível a maiúsculas/minúsculas se a busca contiver letras maiúsculas
vim.opt.hidden = true                       -- Permite mudar de buffer sem salvar
vim.opt.backup = false                      -- Desativa a criação de backups
vim.opt.writebackup = false                 -- Desativa a criação de backups ao escrever arquivos
vim.opt.autoread = true                     -- Atualiza automaticamente os arquivos que foram modificados externamente
vim.opt.mouse = 'a'                         -- Habilita o uso do mouse em todos os modos
vim.opt.number = true                       -- Exibe números das linhas
vim.opt.relativenumber = false              -- Exibe números das linhas relativas (se desativado, exibe números absolutos)
vim.opt.encoding = 'UTF-8'                  -- Define a codificação do texto para UTF-8
vim.opt.scrolloff = 999                     -- Mantém o cursor centralizado na tela
vim.opt.signcolumn = 'yes'                  -- Sempre exibe a coluna de sinais
vim.opt.cursorline = true                   -- Realça a linha do cursor
vim.opt.culopt = 'number,screenline'        -- Realça o número da linha e a linha na tela (screenline)
vim.opt.tabstop = 4                         -- Define a largura da tabulação para 4 espaços
vim.opt.shiftwidth = 4                      -- Define a largura da indentação para 4 espaços
vim.opt.expandtab = true                    -- Converte tabs em espaços

-- Opções do tema
vim.g.sonokai_style = 'shusia'              -- Define o estilo do Sonokai para 'shusia'
vim.cmd('colorscheme sonokai')              -- Aplica o esquema de cores 'sonokai'

-- Habilitar o suporte cores 24-bit no terminal
vim.opt.termguicolors = true

-- Navegação natural
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })

-- Mapear as setas esquerda/direita para indentação
vim.api.nvim_set_keymap('n', '<Left>', '<<', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Left>', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Right>', '>gv', { noremap = true, silent = true })

