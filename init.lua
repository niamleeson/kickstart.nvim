vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- Make line numbers defaut
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- decrease update time
vim.opt.updatetime = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

vim.opt.backspace = 'indent,eol,start'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = 'save' }) -- toggle file explorer

vim.keymap.set('n', '<leader>;', ':', { desc = 'command' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'go to next diagnostic message' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'show diagnostic error messages' })
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, { desc = 'open diagnostic quickfix list' })

-- window management
vim.keymap.set('n', '<leader>sv', '<C-w>s', { desc = 'split window top and bottom' }) -- split window vertically
vim.keymap.set('n', '<leader>sh', '<C-w>v', { desc = 'split window left and right' }) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', { desc = 'make splits equal size' }) -- make split windows equal width & height
vim.keymap.set('n', '<leader>sq', '<cmd>close<CR>', { desc = 'close current split' }) -- close current split window

vim.keymap.set('x', 'p', '"_dP', { desc = 'paste in visual mode' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', { desc = 'stay in unindent mode' })
vim.keymap.set('v', '>', '>gv', { desc = 'stay in indent mode' })

-- store location when starting visual mode so when you cancel out, it goes back to where it started
-- vim.keymap.set('n', 'v', 'myv', { noremap = true })
-- vim.keymap.set('n', 'V', 'myV', { noremap = true })
-- vim.keymap.set('v', '<Esc>', '<Esc>`y', { noremap = true, silent = true })

-- Redo
vim.keymap.set('n', 'U', '<C-r>', { desc = 'redo' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'move block down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'move block up' })

-- keep cursor when using J
vim.keymap.set('n', 'J', 'mzJ`z')

vim.keymap.set('n', 'Q', '<nop>')

-- quickfixlist shortcuts
-- vim.keymap.set('n', '<C-k>', '<cmd>cprev<CR>zz')
-- vim.keymap.set('n', '<C-j>', '<cmd>cnext<CR>zz')
-- vim.keymap.set('n', '<leader>k', '<cmd>lprev<CR>zz')
-- vim.keymap.set('n', '<leader>j', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '[q', '<cmd>cprev<CR>zz', { desc = 'prev quickfix' })
vim.keymap.set('n', ']q', '<cmd>cnext<CR>zz', { desc = 'next quickfix' })
vim.keymap.set('n', '[b', '<cmd>bprev<CR>zz', { desc = 'prev quickfix' })
vim.keymap.set('n', ']b', '<cmd>bnext<CR>zz', { desc = 'next quickfix' })

-- replace word on cursor
vim.keymap.set('n', '<leader>0', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Keep window centered when going up/down
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-f>', '<C-f>zz')
vim.keymap.set('n', '<C-b>', '<C-b>zz')

vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'toggle file explorer' }) -- toggle file explorer
vim.keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'collapse file explorer' }) -- collapse file explorer
vim.keymap.set('n', '<leader>ek', '<cmd>NvimTreeCollapseKeepBuffers<CR>', { desc = 'collapse file explorer except open buffers' }) -- refresh file explorer
vim.keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'refresh file explorer' }) -- refresh file explorer

vim.keymap.set('n', 'gd', function()
  vim.lsp.buf.definition()
end, { desc = 'go to source definition' })
vim.keymap.set('n', '<leader>cd', '<cmd>TSToolsGoToSourceDefinition<CR>', { desc = 'go to source definition' })
vim.keymap.set('n', '<leader>ca', '<cmd>TSToolsAddMissingImports<CR>', { desc = 'add missing imports' })
vim.keymap.set('n', '<leader>co', '<cmd>TSToolsOrganizeImports<cr>', { desc = 'sort imports and remove unused' })
vim.keymap.set('n', '<leader>ci', '<cmd>TSToolsSortImports<CR>', { desc = 'sort imports' })
vim.keymap.set('n', '<leader>cu', '<cmd>TSToolsRemoveUnused<CR>', { desc = 'remove unused statements' })
vim.keymap.set('n', '<leader>cr', '<cmd>TSToolsRenameFile<CR>', { desc = 'rename file' })
vim.keymap.set('n', '<leader>cf', '<cmd>TSToolsFileReferences<CR>', { desc = 'find file references' })

vim.keymap.set('n', '<leader>l', "<cmd>lua require('conform').format({ async = true, lsp_fallback = true })<CR>", { desc = 'format code' })

vim.keymap.set('n', '<leader>th', "<cmd>lua require('telescope.builtin').help_tags()<CR>", { desc = 'help' })
vim.keymap.set('n', '<leader>tk', "<cmd>lua require('telescope.builtin').keymaps()<CR>", { desc = 'keymaps' })
vim.keymap.set('n', '<leader>tf', "<cmd>lua require('telescope.builtin').find_files()<CR>", { desc = 'files' })
vim.keymap.set('n', '<leader>ti', "<cmd>lua require('telescope.builtin').builtin()<CR>", { desc = 'telescope builtin' })
vim.keymap.set('n', '<leader>ts', "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", { desc = 'symbols' })
vim.keymap.set('n', '<leader>tw', "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>", { desc = 'workspace symbols' })
vim.keymap.set('n', '<leader>tg', "<cmd>lua require('telescope.builtin').grep_string()<CR>", { desc = 'current word' })
vim.keymap.set('n', '<leader>tl', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { desc = 'grep' })
vim.keymap.set('n', '<leader>td', "<cmd>lua require('telescope.builtin').diagnostics()<CR>", { desc = 'diagnostics' })
vim.keymap.set('n', '<leader>tr', "<cmd>lua require('telescope.builtin').resume()<CR>", { desc = 'resume' })
vim.keymap.set('n', '<leader>t.', "<cmd>lua require('telescope.builtin').oldfiles()<CR>", { desc = 'recent files ("." for repeat)' })
vim.keymap.set('n', '<leader>tb', "<cmd>lua require('telescope.builtin').buffers()<CR>", { desc = 'buffers' })
vim.keymap.set('n', '<leader>t/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = 'fuzzy current buffer' })
vim.keymap.set('n', '<leader>t/', function()
  require('telescope.builtin').live_grep {
    grep_open_files = true,
    prompt_title = 'grep open files',
  }
end, { desc = 'search open files' })
vim.keymap.set('n', '<leader>tn', function()
  require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'search neovim files' })

vim.keymap.set('n', '<leader>p', "<cmd>lua require('fzf-lua').files({ header = false })<CR>", { silent = true, desc = 'find' })
vim.keymap.set('n', '<leader>fmc', "<cmd>lua require('fzf-lua').commands({ header = false })<CR>", { silent = true, desc = 'commands' })
vim.keymap.set('n', '<leader>fmb', "<cmd>lua require('fzf-lua').buffers({ header = false })<CR>", { silent = true, desc = 'buffers' })
vim.keymap.set('n', '<leader>fmm', "<cmd>lua require('fzf-lua').marks({ header = false })<CR>", { silent = true, desc = 'marks' })
vim.keymap.set('n', '<leader>fmk', "<cmd>lua require('fzf-lua').keymaps({ header = false })<CR>", { silent = true, desc = 'keymaps' })
vim.keymap.set('n', '<leader>fmt', "<cmd>lua require('fzf-lua').tabs({ header = false })<CR>", { silent = true, desc = 'tabs' })
vim.keymap.set('v', '<leader>fhv', "<cmd>lua require('fzf-lua').grep_visual({ cwd = vim.loop.cwd() })<CR>", { silent = true, desc = 'selection' })
vim.keymap.set('n', '<leader>fhw', "<cmd>lua require('fzf-lua').grep_cword({ cwd = vim.loop.cwd() })<CR>", { silent = true, desc = 'current word' })
vim.keymap.set('n', '<leader>fhW', "<cmd>lua require('fzf-lua').grep_cWORD({ cwd = vim.loop.cwd() })<CR>", { silent = true, desc = 'current WORD' })
vim.keymap.set('n', '<leader>fcf', "<cmd>lua require('fzf-lua').grep_curbuf()<CR>", { silent = true, desc = 'current file fuzzy' })
vim.keymap.set('n', '<leader>fcg', "<cmd>lua require('fzf-lua').lgrep_curbuf()<CR>", { silent = true, desc = 'current file grep' })
vim.keymap.set('n', '<leader>ff', "<cmd>lua require('fzf-lua').grep_project({ cwd = vim.loop.cwd() })<CR>", { silent = true, desc = 'fuzzy or Grep' })
vim.keymap.set('n', '<leader>fg', "<cmd>lua require('fzf-lua').live_grep_glob({ cwd = vim.loop.cwd() })<CR>", { silent = true, desc = 'grep to fuzzy' })
vim.keymap.set('n', '<leader>fr', "<cmd>lua require('fzf-lua').live_grep_resume({ cwd = vim.loop.cwd() })<CR>", { silent = true, desc = 'resume' })
vim.keymap.set('n', '<leader>fs', "<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>", { silent = true, desc = 'symbols' })
vim.keymap.set('n', '<leader>fw', "<cmd>lua require('fzf-lua').lsp_workspace_symbols()<CR>", { silent = true, desc = 'workspace symbols' })
vim.keymap.set('n', '<leader>fvc', "<cmd>lua require('fzf-lua').git_commits({ header = false })<CR>", { silent = true, desc = 'git commits' })
vim.keymap.set('n', '<leader>fvb', "<cmd>lua require('fzf-lua').git_bcommits({ header = false })<CR>", { silent = true, desc = 'git commits current file' })

vim.keymap.set('n', '<A-h>', "<cmd>lua require('smart-splits').resize_left()<CR>")
vim.keymap.set('n', '<A-j>', "<cmd>lua require('smart-splits').resize_down()<CR>")
vim.keymap.set('n', '<A-k>', "<cmd>lua require('smart-splits').resize_up()<CR>")
vim.keymap.set('n', '<A-l>', "<cmd>lua require('smart-splits').resize_right()<CR>")

vim.keymap.set('n', '<C-h>', "<cmd>lua require('smart-splits').move_cursor_left()<CR>")
-- vim.keymap.set('n', '<C-j>', "<cmd>lua require('smart-splits').move_cursor_down()<CR>")
-- vim.keymap.set('n', '<C-k>', "<cmd>lua require('smart-splits').move_cursor_up()<CR>")
vim.keymap.set('n', '<C-l>', "<cmd>lua require('smart-splits').move_cursor_right()<CR>")

vim.keymap.set('n', '<leader>o', '<cmd>Outline<CR>', { desc = 'toggle outline' })

vim.keymap.set('n', '<leader>ss', '<cmd>lua require("spectre").toggle()<CR>', {
  desc = 'spectre',
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = 'search current word',
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = 'search current word',
})
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = 'search on current file',
})

vim.keymap.set('n', '<leader>n', '<cmd>NoNeckPain<CR>', { desc = 'no neck pain' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  -- "gc" to comment visual regions/lines
  -- gcc for toggling line comment
  { 'numToStr/Comment.nvim', opts = {} },

  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 0
    end,
    opts = {},
    config = function()
      local wk = require 'which-key'

      wk.register({
        e = {
          name = 'explorer',
        },
        d = {
          name = 'diagnostic',
        },
        s = {
          name = 'split, spectre',
        },
        t = {
          name = 'telescope',
        },
        r = {
          name = 'rename',
        },
        c = {
          name = 'code',
        },
        f = {
          name = 'fuzzy find',
          m = {
            name = 'misc',
          },
          c = {
            name = 'current file',
          },
          v = {
            name = 'git',
          },
          h = {
            name = 'more grep',
          },
        },
      }, { prefix = '<leader>' })
    end,
  },

  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs and related tools to stdpath for Neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',

      -- Useful status updates for LSP.
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- `neodev` configures Lua LSP for your Neovim config, runtime and plugins
      -- used for completion, annotations and signatures of Neovim apis
      { 'folke/neodev.nvim', opts = {} },
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          -- NOTE: Remember that Lua is a real programming language, and as such it is possible
          -- to define small helper and utility functions so you don't have to repeat yourself.
          --
          -- In this case, we create a function that lets us more easily define mappings specific
          -- for LSP related items. It sets the mode, buffer and description for us each time.
          local map = function(keys, func, desc)
            vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

          -- Rename the variable under your cursor.
          --  Most Language Servers support renaming across files, etc.
          -- map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')

          -- Execute a code action, usually your cursor needs to be on top of an error
          -- or a suggestion from your LSP for this to activate.
          -- map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

          -- Opens a popup that displays documentation about the word under your cursor
          --  See `:help K` for why this keymap.
          map('K', vim.lsp.buf.hover, 'Hover Documentation')

          -- When you move your cursor, the highlights will be cleared (the second autocommand).
          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client.server_capabilities.documentHighlightProvider then
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              callback = vim.lsp.buf.clear_references,
            })
          end
        end,
      })

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      local servers = {
        -- tsserver = {}, -- npm i -g typescript typescript-language-server
        eslint = {}, -- npm i -g vscode-langservers-extracted
        ember = {}, -- npm install -g @lifeart/ember-language-server
        html = {}, -- npm i -g vscode-langservers-extracted
        cssls = {}, -- npm i -g vscode-langservers-extracted
        svelte = {}, -- npm install -g svelte-language-server
        lua_ls = {
          -- cmd = {...},
          -- filetypes = { ...},
          -- capabilities = {},
          -- settings = {
          --   Lua = {
          --     completion = {
          --       callSnippet = 'Replace',
          --     },
          --     -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
          --     -- diagnostics = { disable = { 'missing-fields' } },
          --   },
          -- },
        },
      }

      require('mason').setup()

      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        'stylua', -- Used to format Lua code
      })
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}

            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})

            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },

  -- better typescript integration
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },

  { -- Autoformat
    'stevearc/conform.nvim',
    lazy = false,
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- use sublist to tell conform to run the first found formatter and stop
        -- javascript = { { "prettierd", "prettier" } },
        javascript = { { 'prettierd', 'prettier' } }, -- npm i -g @fsouza/prettierd
        typescript = { { 'prettierd', 'prettier' } },
        css = { { 'prettierd', 'prettier' } },
      },
    },
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
    },
    config = function()
      local cmp = require 'cmp'

      cmp.setup {
        completion = {
          completeopt = 'menu,menuone,preview,select',
        },
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            vim.fn['vsnip#anonymous'](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert {
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
          ['<C-j>'] = cmp.mapping.select_next_item(),
          ['<C-k>'] = cmp.mapping.select_prev_item(),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<Tab>'] = cmp.mapping.confirm { select = true }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ['<C-Enter>'] = cmp.mapping.confirm { select = true }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          -- add newline if nothing is highlighted, accept if highlighted
          -- ['<CR>'] = cmp.mapping {
          --   i = function(fallback)
          --     if cmp.visible() and cmp.get_active_entry() then
          --       cmp.confirm { behavior = cmp.ConfirmBehavior.Replace, select = false }
          --     else
          --       fallback()
          --     end
          --   end,
          --   s = cmp.mapping.confirm { select = true },
          --   c = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = true },
          -- },
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'vsnip' }, -- For vsnip users.
          -- { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
        }, {
          { name = 'buffer' },
        }),
      }

      -- Set configuration for specific filetype.
      cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
          { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
        }, {
          { name = 'buffer' },
        }),
      })

      -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' },
        },
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        completion = {
          completeopt = 'menu,menuone,preview,noselect',
        },
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' },
        }, {
          { name = 'cmdline' },
        }),
        matching = {
          -- disallow_fuzzy_matching = true,
          -- disallow_fullfuzzy_matching = true,
          -- disallow_partial_fuzzy_matching = true,
          -- disallow_partial_matching = true,
          -- disallow_prefix_unmatching = false,
          disallow_symbol_nonprefix_matching = false,
        },
      })
    end,
  },

  {
    'catppuccin/nvim',
    lazy = false,
    name = 'catppuccin',
    priority = 1000,
    opts = {
      flavour = 'mocha',
    },
    init = function()
      -- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },

  -- {
  --   'projekt0n/github-nvim-theme',
  --   lazy = false,
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require('github-theme').setup {}
  --
  --     vim.cmd 'colorscheme github_dark_dimmed'
  --   end,
  -- },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', -- ensure when treesitter updates, the languages update too
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    opts = {
      ensure_installed = { 'bash', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc', 'javascript', 'typescript', 'json', 'css', 'scss' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<leader>=',
          node_incremental = '=',
          scope_incremental = false,
          node_decremental = '-',
        },
      },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require('treesitter-context').setup {
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        max_lines = 1, -- How many lines the window should span. Values <= 0 mean no limit.
        min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
        line_numbers = true,
        multiline_threshold = 20, -- Maximum number of lines to show for a single context
        trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
        mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
        -- Separator between context and content. Should be a single character string, like '-'.
        -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
        separator = nil,
        zindex = 20, -- The Z-index of the context window
        on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
      }
    end,
  },

  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup()

      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {}
    end,
  },

  { 'junegunn/fzf', build = './install --bin' },

  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- calling `setup` is optional for customization
      require('fzf-lua').setup {
        files = {
          actions = {
            ['default'] = require('fzf-lua.actions').file_edit,
          },
        },
      }
    end,
  },

  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { -- If encountering errors, see telescope-fzf-native README for installation instructions
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require('telescope').setup {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }

      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')
    end,
  },

  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      local nvimtree = require 'nvim-tree'

      -- recommended settings from nvim-tree documentation
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      nvimtree.setup {
        view = {
          width = 50,
          relativenumber = true,
        },
        -- change folder arrow icons
        renderer = {
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              folder = {
                arrow_closed = '', -- arrow when folder is closed
                arrow_open = '', -- arrow when folder is open
              },
            },
          },
        },
        update_focused_file = { enable = true },
        -- disable window_picker for
        -- explorer to work well with
        -- window splits
        actions = {
          open_file = {
            window_picker = {
              enable = false,
            },
          },
        },
        filters = {
          custom = { '.DS_Store' },
        },
        git = {
          ignore = false,
        },
      }
    end,
  },

  -- fast cursor movement
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "flash treesitter" },
      -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    --   { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },

  -- mark files to quickly switch back and forth
  {
    'theprimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon'):setup()
    end,
    keys = {
      {
        '<leader>a',
        function()
          require('harpoon'):list():append()
        end,
        desc = 'harpoon file',
      },
      {
        '<leader>h',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'harpoon quick menu',
      },
      {
        '<leader>1',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = 'harpoon to file 1',
      },
      {
        '<leader>2',
        function()
          require('harpoon'):list():select(2)
        end,
        desc = 'harpoon to file 2',
      },
      {
        '<leader>3',
        function()
          require('harpoon'):list():select(3)
        end,
        desc = 'harpoon to file 3',
      },
      {
        '<leader>4',
        function()
          require('harpoon'):list():select(4)
        end,
        desc = 'harpoon to file 4',
      },
      {
        '<leader>5',
        function()
          require('harpoon'):list():select(5)
        end,
        desc = 'harpoon to file 5',
      },
      {
        '<leader>6',
        function()
          require('harpoon'):list():select(6)
        end,
        desc = 'harpoon to file 6',
      },
    },
  },

  -- make command line look nice
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },

  -- resizing splits
  {
    'mrjones2014/smart-splits.nvim',
    config = function()
      require('smart-splits').setup()
    end,
  },

  {
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup {
        mapping = { 'jk', 'jj' },
        timeout = 300,
        clear_empty_lines = false,
        keys = '<Esc>',
      }
    end,
  },

  -- colors hex codes
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {}
    end,
  },

  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    keys = {
      { '<leader>g', '<cmd>LazyGit<cr>', desc = 'lazygit' },
    },
  },

  {
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async',
    config = function()
      vim.o.foldcolumn = '1' -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
      vim.keymap.set('n', 'zK', function()
        local winid = require('ufo').peekFoldedLinesUnderCursor()
        if not winid then
          vim.lsp.buf.hover()
        end
      end, { desc = 'Peek fold' })

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true,
      }
      local language_servers = require('lspconfig').util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
      for _, ls in ipairs(language_servers) do
        require('lspconfig')[ls].setup {
          capabilities = capabilities,
          -- you can add other fields for setting up lsp server in this table
        }
      end

      require('ufo').setup()
    end,
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
    config = function()
      require('ibl').setup()
    end,
  },

  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },

  {
    'hedyhli/outline.nvim',
    config = function()
      require('outline').setup {
        keymaps = {
          close = { 'q' },
        },
      }
    end,
  },

  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require('bufferline').setup {}
    end,
  },

  {
    'nvim-pack/nvim-spectre',
    dependencies = 'nvim-lua/plenary.nvim',
  },

  -- allows targeting quotes, parens, commas from outside
  { 'wellle/targets.vim' },

  -- quickfix list experience enhancement
  { 'kevinhwang91/nvim-bqf' },

  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },

  {
    'shortcuts/no-neck-pain.nvim',
    config = function()
      require('no-neck-pain').setup {
        autocmds = {
          enableOnVimEnter = true,
          enableOnTapEnter = true,
        },
        width = 150,
        mappings = {
          enabled = true,
        },
      }
    end,
  },

  {
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {
        log_level = 'error',
      }
    end,
  },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

--[[ wezterm config

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config.color_scheme = 'AdventureTime'
config.font = wezterm.font("VictorMono Nerd Font Mono")
config.font_size = 16
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.use_dead_keys = false
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = true
config.window_close_confirmation = "NeverPrompt"

config.keys = {
	-- {
	-- 	key = '"',
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	-- },
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "\\",
		mods = "CTRL",
		action = wezterm.action_callback(function(_, pane)
			local tab = pane:tab()
			local panes = tab:panes_with_info()
			if #panes == 1 then
				pane:split({
					direction = "Right",
					size = 0.4,
				})
			elseif not panes[1].is_zoomed then
				panes[1].pane:activate()
				tab:set_zoomed(true)
			elseif panes[1].is_zoomed then
				tab:set_zoomed(false)
				panes[2].pane:activate()
			end
		end),
	},
}

local smart_splits = wezterm.plugin.require("https://github.com/mrjones2014/smart-splits.nvim")
-- you can put the rest of your Wezterm config here
smart_splits.apply_to_config(config, {
	-- the default config is here, if you'd like to use the default keys,
	-- you can omit this configuration table parameter and just use
	-- smart_splits.apply_to_config(config)

	-- directional keys to use in order of: left, down, up, right
	direction_keys = { "h", "j", "k", "l" },
	-- modifier keys to combine with direction_keys
	modifiers = {
		move = "CTRL", -- modifier to use for pane movement, e.g. CTRL+h to move left
		resize = "META", -- modifier to use for pane resize, e.g. META+h to resize to the left
	},
})

return config

--]]
