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
vim.opt.mousescroll = 'ver:8,hor:6'

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

vim.opt.helpheight = 9999

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set({ 'n', 'v' }, '<CR>', ':', { noremap = true, desc = 'enter command line mode' })

-- Movement around wrapped lines
vim.keymap.set('n', 'j', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('n', 'k', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Up>', 'v:count ? "k" : "gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('n', '<Down>', 'v:count ? "j" : "gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })
vim.keymap.set('i', '<Up>', 'pumvisible() ? "k" : "<C-o>gk"', { noremap = true, expr = true, desc = 'Move up (including wrapping lines)' })
vim.keymap.set('i', '<Down>', 'pumvisible() ? "j" : "<C-o>gj"', { noremap = true, expr = true, desc = 'Move down (including wrapping lines)' })

-- Make behavior more like in common editors
vim.keymap.set({ '', 'i' }, '<C-s>', vim.cmd.write, { noremap = true, desc = 'Save' })
vim.keymap.set('i', '<C-z>', '<C-o>u', { noremap = true, desc = 'Undo' })
vim.keymap.set('i', '<C-v>', '<C-g>u<Cmd>set paste<CR><C-r>+<Cmd>set nopaste<CR>', { noremap = true, desc = 'Paste' })
vim.keymap.set('c', '<C-v>', '<C-r>+', { noremap = true, desc = 'Paste' })
vim.keymap.set('t', '<C-v>', '<C-\\><C-N>pi', { noremap = true, desc = 'Paste' })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, desc = 'Go back to normal mode' })
vim.keymap.set('i', '<S-Left>', '<Esc>vb', { noremap = true, desc = 'Select character left' })
vim.keymap.set('i', '<S-Right>', '<Esc>ve', { noremap = true, desc = 'Select character right' })
vim.keymap.set('', '<C-a>', 'gg2vG$', { noremap = true, desc = 'Select all' })
vim.keymap.set({ 'v', 'i' }, '<C-a>', '<Esc>gg0vG$', { noremap = true, desc = 'Select all' })

vim.keymap.set('x', 'p', '"_dP', { desc = 'paste in visual mode' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', { desc = 'stay in unindent mode' })
vim.keymap.set('v', '>', '>gv', { desc = 'stay in indent mode' })

-- store location when starting visual mode so when you cancel out, it goes back to where it started
-- vim.keymap.set('n', 'v', 'myv', { noremap = true })
-- vim.keymap.set('n', 'V', 'myV', { noremap = true })
-- vim.keymap.set('v', '<Esc>', '<Esc>`y', { noremap = true, silent = true })

-- redo
vim.keymap.set('n', 'U', '<C-r>', { desc = 'redo' })

-- Move lines
vim.keymap.set('n', 'J', '<cmd>move+1<CR>', { noremap = true, desc = 'move line down' })
vim.keymap.set('n', 'K', '<cmd>move-2<CR>', { noremap = true, desc = 'move line up' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'move block down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'move block up' })

vim.keymap.set('i', '<C-h>', '<ESC>^i', { noremap = true, desc = 'Go to beginning' })
vim.keymap.set('i', '<C-l>', '<ESC>$a', { noremap = true, desc = 'Go to end' })

-- Cmdline shortcuts
vim.keymap.set('c', '<C-h>', '<Home>', { noremap = true, desc = 'Go to beginning' })
vim.keymap.set('c', '<C-l>', '<End>', { noremap = true, desc = 'Go to end' })

-- Increment / decrement
-- vim.keymap.set('n', '<C-=>', '<C-a>', { noremap = true, desc = 'Decrease number' })
-- vim.keymap.set('n', '<C-->', '<C-x>', { noremap = true, desc = 'Increase number' })
-- vim.keymap.set('v', '<C-=>', '<C-a>', { noremap = true, desc = 'Decrease number' })
-- vim.keymap.set('v', '<C-->', '<C-x>', { noremap = true, desc = 'Increase number' })
-- vim.keymap.set('v', 'g<C-=>', 'g<C-a>', { noremap = true, desc = 'Column decrease number' })
-- vim.keymap.set('v', 'g<C-->', 'g<C-x>', { noremap = true, desc = 'Column increase number' })

-- Other
-- vim.keymap.set('', '<Leader>cd', '<Cmd>cd %:h<CR>', { noremap = true, desc = 'Change directory to current file folder' })
vim.keymap.set('', '<Backspace>', '<Cmd>buffer #<CR>', { noremap = true, desc = 'Back to previous buffer' })

-- keep cursor when using J
vim.keymap.set('n', '<C-J>', 'mzJ`z')

vim.keymap.set('n', 'Q', '<nop>')

-- quickfixlist shortcuts
vim.keymap.set('n', '[q', '<cmd>cprev<CR>zz', { desc = 'prev quickfix' })
vim.keymap.set('n', ']q', '<cmd>cnext<CR>zz', { desc = 'next quickfix' })

vim.keymap.set({ 'n', 'x', 'o' }, 's', function()
  require('flash').jump {
    label = {
      before = { 0, 0 }, -- { row, col } offset
    },
  }
end, { noremap = true, desc = 'flash' })
-- vim.keymap.set({ 'n', 'x', 'o' }, 't', function()
--   require('flash').jump {
--     label = {
--       before = { 0, -1 }, -- { row, col } offset
--     },
--     jump = {
--       offset = -1, -- after jumping, move cursor left by 1
--     },
--   }
-- end, { noremap = true, desc = 'flash' })
vim.keymap.set('o', 'r', '<cmd>lua require("flash").remote()<CR>', { noremap = true, desc = 'flash in remote mode' })

-- yank highlight
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Add console.log with cursor on ) if the line is just spaces or tabs
vim.keymap.set('n', '<leader>cc', function()
  local word = vim.fn.expand '<cword>'
  local line = vim.fn.getline '.'
  local indent = string.match(line, '^%s*')

  if line:match '^%s*$' then
    vim.cmd('normal! I' .. indent .. 'console.log();')
    vim.cmd 'normal! hi'
  else
    vim.cmd 'normal! o'
    vim.cmd('normal! i' .. indent .. 'console.log("' .. word .. ':", ' .. word .. ');')
  end
end, { desc = 'add console.log' })
vim.keymap.set('n', '<leader>cC', function()
  local word = vim.fn.expand '<cword>'
  local line = vim.fn.getline '.'
  local indent = string.match(line, '^%s*')

  if line:match '^%s*$' then
    vim.cmd('normal! I' .. indent .. 'console.log();')
    vim.cmd 'normal! hi'
  else
    vim.cmd 'normal! O'
    vim.cmd('normal! i' .. indent .. 'console.log("' .. word .. ':", ' .. word .. ');')
  end
end, { desc = 'add console.log above' })

vim.keymap.set('v', '<leader>cc', function()
  local line = vim.fn.getline '.'
  local indent = string.match(line, '^%s*')
  vim.cmd 'normal! "vy'
  local char = 'v'
  local word = vim.api.nvim_exec([[echo getreg(']] .. char .. [[')]], true)
  vim.cmd 'normal! o'
  local line = vim.fn.getline '.'
  local indent = string.match(line, '^%s*')

  if line:match '^%s*$' then
    vim.cmd('normal! I' .. indent .. 'console.log();')
    vim.cmd 'normal! hi'
  else
    vim.cmd 'normal! O'
    vim.cmd('normal! i' .. indent .. 'console.log("' .. word .. ':", ' .. word .. ');')
  end
end, { desc = 'add console.log above' })

vim.keymap.set('v', '<leader>cc', function()
  local line = vim.fn.getline '.'
  local indent = string.match(line, '^%s*')
  vim.cmd 'normal! "vy'
  local char = 'v'
  local word = vim.api.nvim_exec([[echo getreg(']] .. char .. [[')]], true)
  vim.cmd 'normal! o'
  vim.cmd('normal! i' .. indent .. 'console.log("' .. word .. ':", ' .. word .. ');')
  vim.cmd 'normal! gv'
  vim.api.nvim_input '<esc>'
end, { desc = 'add console.log' })
vim.keymap.set('v', '<leader>cC', function()
  local line = vim.fn.getline '.'
  local indent = string.match(line, '^%s*')
  vim.cmd 'normal! "vy'
  local char = 'v'
  local word = vim.api.nvim_exec([[echo getreg(']] .. char .. [[')]], true)
  vim.cmd 'normal! O'
  vim.cmd('normal! i' .. indent .. 'console.log("' .. word .. ':", ' .. word .. ');')
  vim.cmd 'normal! gv'
  vim.api.nvim_input '<esc>'
end, { desc = 'add console.log above' })

vim.keymap.set('n', '<leader>cD', function()
  vim.cmd '%s/console\\.log(\\(.*\\));//'
end, { desc = 'remove console.log' })

-- Add "await this.pauseTest();" depending on whether the current line has text or not
vim.keymap.set('n', '<leader>cpp', function()
  local line = vim.fn.getline '.'
  local indent = string.match(line, '^%s*')

  if line:match '^%s*$' then
    vim.cmd('normal! I' .. indent .. 'await this.pauseTest();')
  else
    vim.cmd 'normal! o'
    vim.cmd('normal! i' .. indent .. 'await this.pauseTest();')
  end
end, { desc = 'add pauseTest' })

vim.keymap.set('n', '<leader>w', '<cmd>wa<CR>', { desc = 'save' })
-- Delete all instances of "await this.pauseTest();" and remove the line
vim.keymap.set('n', '<leader>cpd', function()
  vim.cmd 'g/await\\s*this\\.pauseTest();/d'
end, { desc = 'delete pauseTest' })
if vim.g.vscode then
  -- vim.cmd [[source $HOME/.config/nvim/vscode/settings.vim]]

  vim.keymap.set('n', 'H', "<cmd>lua require('vscode-neovim').action('workbench.action.previousEditor')<CR>", { desc = 'prev editor' })
  vim.keymap.set('n', 'L', "<cmd>lua require('vscode-neovim').action('workbench.action.nextEditor')<CR>", { desc = 'next editor' })
else
  -- Don't show the mode, since it's already in the status line
  vim.opt.showmode = false

  -- disable automatic comment insertion
  -- vim.cmd [[autocmd FileType * set formatoptions-=cro]]
  vim.api.nvim_create_autocmd('BufEnter', {
    callback = function()
      vim.opt.formatoptions:remove { 'c', 'r', 'o' }
    end,
    group = vim.api.nvim_create_augroup('General', { clear = true }),
    desc = 'Disable New Line Comment',
  })

  -- enable keymaps if neovim is running natively --
  -- keymap start
  vim.keymap.set('n', '<leader>q', '<cmd>qa<CR>', { desc = 'quitall' })
  vim.keymap.set('n', '<leader>x', '<cmd>q<CR>', { desc = 'quit' })
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

  vim.keymap.set('n', '<leader>ch', '<cmd>lua vim.lsp.buf.hover()<CR>', { desc = 'hover documentation' })

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
  vim.keymap.set('n', '<leader>cx', function()
    vim.diagnostic.disable()
  end, { desc = 'disable diagnostic' })
  vim.keymap.set('n', '<leader>cz', function()
    vim.diagnostic.enable()
  end, { desc = 'enable diagnostic' })

  vim.keymap.set('n', '<leader>l', "<cmd>lua require('conform').format({ async = true, lsp_fallback = true })<CR>", { desc = 'format code' })

  -- local tele = 't'
  local fzf = 'f'
  vim.keymap.set('n', '<leader>p', "<cmd>lua require('fzf-lua').files({fzf_cli_args='-i'})<CR>", { silent = true, desc = 'files' })

  vim.keymap.set('n', '<leader>' .. fzf .. 'f', "<cmd>lua require('fzf-lua').files({fzf_cli_args='-i'})<CR>", { silent = true, desc = 'files' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'h', "<cmd>lua require('fzf-lua').oldfiles()<CR>", { silent = true, desc = 'history' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'g', "<cmd>lua require('fzf-lua').grep_project()<CR>", { silent = true, desc = 'grep' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'l', "<cmd>lua require('fzf-lua').live_grep_glob()<CR>", { silent = true, desc = 'live grep' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'r', "<cmd>lua require('fzf-lua').resume()<CR>", { silent = true, desc = 'resume' })
  vim.keymap.set('v', '<leader>' .. fzf .. 'v', "<cmd>lua require('fzf-lua').grep_visual()<CR>", { silent = true, desc = 'selection' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'w', "<cmd>lua require('fzf-lua').grep_cword()<CR>", { silent = true, desc = 'current word' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'W', "<cmd>lua require('fzf-lua').grep_cWORD()<CR>", { silent = true, desc = 'current WORD' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'cg', "<cmd>lua require('fzf-lua').grep_curbuf()<CR>", { silent = true, desc = 'current file grep' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'cl', "<cmd>lua require('fzf-lua').lgrep_curbuf()<CR>", { silent = true, desc = 'current file live grep' })
  vim.keymap.set('n', '<leader>' .. fzf .. 's', function()
    require('fzf-lua').lsp_document_symbols {
      winopts = {
        fullscreen = true,
        preview = { layout = 'horizontal', vertical = 'down:50%', horizontal = 'right:40%', title_pos = 'left' },
      },
    }
  end, { silent = true, desc = 'symbols' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'e', "<cmd>lua require('fzf-lua').lsp_references()<CR>", { silent = true, desc = 'references' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'mc', "<cmd>lua require('fzf-lua').commands()<CR>", { silent = true, desc = 'commands' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'o', "<cmd>lua require('fzf-lua').buffers()<CR>", { silent = true, desc = 'opened buffers' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'mm', "<cmd>lua require('fzf-lua').marks()<CR>", { silent = true, desc = 'marks' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'mk', "<cmd>lua require('fzf-lua').keymaps()<CR>", { silent = true, desc = 'keymaps' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'mt', "<cmd>lua require('fzf-lua').tabs()<CR>", { silent = true, desc = 'tabs' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'mh', "<cmd>lua require('fzf-lua').helptags()<CR>", { silent = true, desc = 'help' })
  vim.keymap.set('n', '<leader>' .. fzf .. 'v', "<cmd>lua require('fzf-lua').git_status()<CR>", { silent = true, desc = 'changed files' })
  -- vim.keymap.set('n', '<leader>' .. tele .. 'n', function()
  --   require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
  -- end, { desc = 'neovim files' })
  -- vim.keymap.set('n', '<leader>' .. fzf .. 'w', "<cmd>lua require('fzf-lua').lsp_workspace_symbols()<CR>", { silent = true, desc = 'workspace symbols' })
  -- vim.keymap.set('n', '<leader>' .. fzf .. 'vc', "<cmd>lua require('fzf-lua').git_commits({ header = false })<CR>", { silent = true, desc = 'git commits' })
  -- vim.keymap.set(
  --   'n',
  --   '<leader>' .. fzf .. 'vb',
  --   "<cmd>lua require('fzf-lua').git_bcommits({ header = false })<CR>",
  --   { silent = true, desc = 'git commits current file' }
  -- )

  vim.keymap.set('n', '<leader>a', '<cmd>lua require("harpoon"):list():add()<CR>', { desc = 'harpoon file' })
  vim.keymap.set('n', '<leader>h', '<cmd>lua require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())<CR>', { desc = 'harpoon quick menu' })
  vim.keymap.set('n', '[h', '<cmd>lua require("harpoon"):list():prev()<CR>', { desc = 'prev harpoon' })
  vim.keymap.set('n', ']h', '<cmd>lua require("harpoon"):list():next()<CR>', { desc = 'next harpoon' })
  vim.keymap.set('n', '<leader>1', '<cmd>lua require("harpoon"):list():select(1)<CR>', { desc = 'harpoon to file 1' })
  vim.keymap.set('n', '<leader>2', '<cmd>lua require("harpoon"):list():select(2)<CR>', { desc = 'harpoon to file 2' })
  vim.keymap.set('n', '<leader>3', '<cmd>lua require("harpoon"):list():select(3)<CR>', { desc = 'harpoon to file 3' })
  vim.keymap.set('n', '<leader>4', '<cmd>lua require("harpoon"):list():select(4)<CR>', { desc = 'harpoon to file 4' })
  vim.keymap.set('n', '<leader>5', '<cmd>lua require("harpoon"):list():select(5)<CR>', { desc = 'harpoon to file 5' })
  vim.keymap.set('n', '<leader>6', '<cmd>lua require("harpoon"):list():select(6)<CR>', { desc = 'harpoon to file 6' })
  vim.keymap.set('n', '<leader>7', '<cmd>lua require("harpoon"):list():select(7)<CR>', { desc = 'harpoon to file 7' })
  vim.keymap.set('n', '<leader>8', '<cmd>lua require("harpoon"):list():select(8)<CR>', { desc = 'harpoon to file 8' })
  vim.keymap.set('n', '<leader>9', '<cmd>lua require("harpoon"):list():select(9)<CR>', { desc = 'harpoon to file 9' })

  vim.keymap.set('n', '<A-h>', "<cmd>lua require('smart-splits').resize_left()<CR>")
  vim.keymap.set('n', '<A-j>', "<cmd>lua require('smart-splits').resize_down()<CR>")
  vim.keymap.set('n', '<A-k>', "<cmd>lua require('smart-splits').resize_up()<CR>")
  vim.keymap.set('n', '<A-l>', "<cmd>lua require('smart-splits').resize_right()<CR>")

  vim.keymap.set('n', '<C-h>', "<cmd>lua require('smart-splits').move_cursor_left()<CR>")
  vim.keymap.set('n', '<C-j>', "<cmd>lua require('smart-splits').move_cursor_down()<CR>")
  vim.keymap.set('n', '<C-k>', "<cmd>lua require('smart-splits').move_cursor_up()<CR>")
  vim.keymap.set('n', '<C-l>', "<cmd>lua require('smart-splits').move_cursor_right()<CR>")

  vim.keymap.set('n', '<leader>cn', '<cmd>Oil<CR>', { desc = 'open Oil' })

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

  vim.keymap.set('n', ']c', function()
    if vim.wo.diff then
      vim.cmd.normal { ']c', bang = true }
    else
      require('gitsigns').nav_hunk 'next'
    end
  end, { desc = 'next change' })

  vim.keymap.set('n', '[c', function()
    if vim.wo.diff then
      vim.cmd.normal { '[c', bang = true }
    else
      require('gitsigns').nav_hunk 'prev'
    end
  end, { desc = 'prev change' })

  vim.keymap.set('n', '<leader>vv', '<cmd>LazyGit<CR>', { desc = 'LazyGit' })
  vim.keymap.set('n', '<leader>vs', '<cmd>lua require("gitsigns").stage_hunk()<CR>', { desc = 'stage hunk' })
  vim.keymap.set('n', '<leader>vr', '<cmd>lua require("gitsigns").reset_hunk()<CR>', { desc = 'reset hunk' })
  vim.keymap.set('v', '<leader>vs', '<cmd>lua require("gitsigns").stage_hunk { vim.fn.line ".", vim.fn.line "v" }<CR>', { desc = 'stage hunk' })
  vim.keymap.set('v', '<leader>vr', '<cmd>lua require("gitsigns").reset_hunk { vim.fn.line ".", vim.fn.line "v" }<CR>', { desc = 'reset hunk' })
  vim.keymap.set('n', '<leader>vS', '<cmd>lua require("gitsigns").stage_buffer()<CR>', { desc = 'stage buffer' })
  vim.keymap.set('n', '<leader>vu', '<cmd>lua require("gitsigns").undo_stage_hunk()<CR>', { desc = 'undo stage hunk' })
  vim.keymap.set('n', '<leader>vR', '<cmd>lua require("gitsigns").reset_buffer()<CR>', { desc = 'reset buffer' })
  vim.keymap.set('n', '<leader>vp', '<cmd>lua require("gitsigns").preview_hunk()<CR>', { desc = 'preview hunk' })
  vim.keymap.set('n', '<leader>vl', '<cmd>lua require("gitsigns").blame_line { full = true }<CR>', { desc = 'show blame commit' })
  vim.keymap.set('n', '<leader>vb', '<cmd>lua require("gitsigns").toggle_current_line_blame()<CR>', { desc = 'toggle line blame' })
  vim.keymap.set('n', '<leader>vd', '<cmd>lua require("gitsigns").diffthis()<CR>', { desc = 'diff file' })

  vim.keymap.set('n', '<leader><leader>', function()
    require('cokeline.mappings').pick 'focus'
  end, { desc = 'pick a buffer to focus' })
  vim.keymap.set('n', '<leader>b[', '<Plug>(cokeline-switch-prev)', { silent = true, desc = 'move left' })
  vim.keymap.set('n', '<leader>b]', '<Plug>(cokeline-switch-next)', { silent = true, desc = 'move right' })
  vim.keymap.set('n', '<leader>[', '<Plug>(cokeline-focus-prev)', { silent = true, desc = 'go to left' })
  vim.keymap.set('n', '<leader>]', '<Plug>(cokeline-focus-next)', { silent = true, desc = 'go to right' })
  vim.keymap.set('n', 'H', '<Plug>(cokeline-focus-prev)', { silent = true, desc = 'go to left' })
  vim.keymap.set('n', 'L', '<Plug>(cokeline-focus-next)', { silent = true, desc = 'go to right' })

  vim.keymap.set('n', '<leader>cm', "<cmd>lua require('treesj').toggle()<cr>", { desc = 'split/join code toggle' })
  vim.keymap.set('n', '<leader>cs', "<cmd>lua require('treesj').split()<cr>", { desc = 'split code' })
  vim.keymap.set('n', '<leader>cj', "<cmd>lua require('treesj').join()<cr>", { desc = 'join code' })

  vim.keymap.set('n', '<leader>o', '<cmd>AerialToggle!<cr>', { desc = 'toggle outline' })

  vim.keymap.set('n', '<leader>cy', "<cmd>lua require('neoclip.fzf')()<cr>", { desc = 'show all yanks' })

  vim.keymap.set('n', 'z1', '<cmd>lua vim.opt.foldlevel = 1<cr>', { desc = 'fold 1' })
  vim.keymap.set('n', 'z2', '<cmd>lua vim.opt.foldlevel = 2<cr>', { desc = 'fold 2' })
  vim.keymap.set('n', 'z3', '<cmd>lua vim.opt.foldlevel = 3<cr>', { desc = 'fold 3' })
  vim.keymap.set('n', 'z4', '<cmd>lua vim.opt.foldlevel = 4<cr>', { desc = 'fold 4' })
  vim.keymap.set('n', 'z5', '<cmd>lua vim.opt.foldlevel = 5<cr>', { desc = 'fold 5' })

  local getNewPath = function(ext)
    local path = vim.fn.expand '%:p:~'
    local last_slash_index = path:reverse():find('/', 1, true)
    local result = path:sub(#path - last_slash_index + 2)
    return string.gsub(result, '%.%w+$', ext or '')
  end
  vim.keymap.set('n', '<leader>gr', function()
    local new_result = getNewPath ''
    require('fzf-lua').files { query = new_result }
  end, { desc = 'all related files' })
  vim.keymap.set('n', '<leader>gj', function()
    local new_result = getNewPath '.js'
    require('fzf-lua').files { query = new_result }
  end, { desc = 'related js files' })
  vim.keymap.set('n', '<leader>gh', function()
    local new_result = getNewPath '.hbs'
    require('fzf-lua').files { query = new_result }
  end, { desc = 'related hbs files' })
  vim.keymap.set('n', '<leader>gc', function()
    local new_result = getNewPath '.scss'
    require('fzf-lua').files { query = new_result }
  end, { desc = 'related css files' })
  vim.keymap.set('n', '<leader>gt', function()
    local new_result = getNewPath '-test.js'
    require('fzf-lua').files { query = new_result }
  end, { desc = 'related test files' })
end

-- lazy vim config --
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 0
    end,
    opts = {},
    config = function()
      local wk = require 'which-key'

      wk.register({
        b = {
          name = 'bufferline',
        },
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
          name = 'bufferline',
        },
        c = {
          name = 'code',
          p = {
            name = 'pauseTest',
          },
          v = {
            name = 'multi cursor',
          },
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
        },
        -- j = {
        --   name = 'arrow',
        -- },
        g = {
          name = 'go to related files',
        },
        v = {
          name = 'version control',
        },
      }, { prefix = '<leader>' })
    end,
  },

  {
    'tpope/vim-sleuth',
    cond = function()
      return not vim.g.vscode
    end,
  }, -- Detect tabstop and shiftwidth automatically

  {
    'numToStr/Comment.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    opts = {},
  },

  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'BufRead',
    opts = {
      current_line_blame = true,
    },
  },

  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    cond = function()
      return not vim.g.vscode
    end,
    event = { 'BufReadPost', 'BufNewFile' },
    dependencies = {
      -- Automatically install LSPs and related tools to stdpath for Neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',

      -- { 'j-hui/fidget.nvim', opts = {} },
      -- `neodev` configures Lua LSP for your Neovim config, runtime and plugins
      -- used for completion, annotations and signatures of Neovim apis
      { 'folke/neodev.nvim', opts = {} },
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
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
        -- eslint = {}, -- npm i -g vscode-langservers-extracted
        ember = {
          filetypes = {
            'handlebars',
          },
        }, -- npm install -g @lifeart/ember-language-server
        html = {}, -- npm i -g vscode-langservers-extracted
        cssls = {}, -- npm i -g vscode-langservers-extracted
        svelte = {}, -- npm install -g svelte-language-server
        lua_ls = {},
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
    cond = function()
      return not vim.g.vscode
    end,
    event = { 'BufReadPost', 'BufNewFile' },
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },

  { -- Autoformat
    'stevearc/conform.nvim',
    cond = function()
      return not vim.g.vscode
    end,
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

        -- use sublist to tell conform to run the first found formatter and stop
        -- javascript = { { "prettierd", "prettier" } },
        javascript = { { 'prettierd', 'prettier' } }, -- npm i -g @fsouza/prettierd
        typescript = { { 'prettierd', 'prettier' } },
        typescriptreact = { { 'prettierd', 'prettier' } },
        javascriptreact = { { 'prettierd', 'prettier' } },
        css = { { 'prettierd', 'prettier' } },
      },
    },
  },

  {
    'hrsh7th/nvim-cmp',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      local cmp = require 'cmp'
      local compare = require 'cmp.config.compare'

      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match '%s' == nil
      end

      local feedkey = function(key, mode)
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
      end

      cmp.setup {
        completion = {
          -- completeopt = 'menu,menuone,preview,select', -- auto select the first entry
          completeopt = 'menu,menuone,preview,noselect', -- dont select the first entry
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
        mapping = cmp.mapping.preset.insert {
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
          ['<C-j>'] = cmp.mapping.select_next_item(),
          ['<C-k>'] = cmp.mapping.select_prev_item(),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<C-Enter>'] = cmp.mapping.confirm { select = true }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ['<CR>'] = cmp.mapping.confirm { select = false },
          -- ['<Tab>'] = cmp.mapping.confirm { select = true }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
              -- cmp.confirm { select = true }
            elseif vim.fn['vsnip#available'](1) == 1 then
              feedkey('<Plug>(vsnip-expand-or-jump)', '')
            elseif has_words_before() then
              cmp.complete()
            else
              fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
          end, { 'i', 's' }),

          ['<S-Tab>'] = cmp.mapping(function()
            if vim.fn['vsnip#jumpable'](-1) == 1 then
              feedkey('<Plug>(vsnip-jump-prev)', '')
            end
          end, { 'i', 's' }),
        },
        -- sorting = {
        --   priority_weight = 2,
        --   comparators = {
        --     compare.offset,
        --     compare.exact,
        --     -- compare.scopes,
        --     compare.score,
        --     compare.recently_used,
        --     compare.locality,
        --     compare.kind,
        --     -- compare.sort_text,
        --     compare.length,
        --     compare.order,
        --   },
        -- },
        sources = cmp.config.sources({
          { name = 'vsnip' }, -- For vsnip users.
          { name = 'nvim_lsp' },
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

  --{
  --   'catppuccin/nvim',
  --   cond = function()
  --     return not vim.g.vscode
  --   end,
  --   lazy = false,
  --   name = 'catppuccin',
  --   priority = 1000,
  --   opts = {},
  --   init = function()
  --     -- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  --
  --     require('catppuccin').setup {
  --       flavour = 'mocha',
  --       no_italic = true,
  --       no_bold = true,
  --       no_underline = true,
  --       custom_highlights = function(colors)
  --         return {
  --           Folded = { bg = '#1e1e2e' }, -- colors.flamingo },
  --         }
  --       end,
  --     }
  --
  --     vim.cmd.colorscheme 'catppuccin-mocha'
  --   end,
  -- },

  {
    'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup {
        groups = {
          all = {
            Folded = { bg = '#22272e' },
            Variables = { fg = '#00ff00' },
          },
        },
      }

      vim.cmd 'colorscheme github_dark_dimmed'
    end,
  },

  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    cond = function()
      return not vim.g.vscode
    end,
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
    'nvim-treesitter/nvim-treesitter-textobjects',
    cond = function()
      return not vim.g.vscode
    end,
    lazy = true,
    config = function()
      -- -@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup {
        textobjects = {
          select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ['aa'] = { query = '@parameter.outer', desc = 'select outer part of a parameter/argument' },
              ['ia'] = { query = '@parameter.inner', desc = 'select inner part of a parameter/argument' },

              ['ai'] = { query = '@conditional.outer', desc = 'select outer part of a conditional' },
              ['ii'] = { query = '@conditional.inner', desc = 'select inner part of a conditional' },

              ['al'] = { query = '@loop.outer', desc = 'select outer part of a loop' },
              ['il'] = { query = '@loop.inner', desc = 'select inner part of a loop' },

              -- ['ac'] = { query = '@call.outer', desc = 'select outer part of a function call' },
              -- ['ic'] = { query = '@call.inner', desc = 'select inner part of a function call' },

              ['af'] = { query = '@function.outer', desc = 'select outer part of a method/function definition' },
              ['if'] = { query = '@function.inner', desc = 'select inner part of a method/function definition' },

              ['ak'] = { query = '@class.outer', desc = 'select outer part of a class' },
              ['ik'] = { query = '@class.inner', desc = 'select inner part of a class' },
            },
          },
          swap = {
            enable = true,
            swap_next = {
              ['<leader>man'] = { query = '@parameter.inner', desc = 'swap parameters/argument with next' },
              ['<leader>mmn'] = { query = '@function.outer', desc = 'swap function with next' },
            },
            swap_previous = {
              ['<leader>map'] = { query = '@parameter.inner', desc = 'swap parameters/argument with prev' },
              ['<leader>mmp'] = { query = '@function.outer', desc = 'swap function with previous' },
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              -- [']c'] = { query = '@call.outer', desc = 'call start' },
              [']f'] = { query = '@function.outer', desc = 'function start' },
              [']k'] = { query = '@class.outer', desc = 'class start' },
              [']i'] = { query = '@conditional.outer', desc = 'if start' },
              [']l'] = { query = '@loop.outer', desc = 'loop start' },

              -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
              -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
              [']p'] = { query = '@scope', query_group = 'locals', desc = 'next scope' },
              [']z'] = { query = '@fold', query_group = 'folds', desc = 'fold' },
            },
            goto_next_end = {
              -- [']C'] = { query = '@call.outer', desc = 'call end' },
              [']F'] = { query = '@function.outer', desc = 'function end' },
              [']K'] = { query = '@class.outer', desc = 'class end' },
              [']I'] = { query = '@conditional.outer', desc = 'if end' },
              [']L'] = { query = '@loop.outer', desc = 'loop end' },
            },
            goto_previous_start = {
              -- ['[c'] = { query = '@call.outer', desc = 'call start' },
              ['[f'] = { query = '@function.outer', desc = 'function start' },
              ['[k'] = { query = '@class.outer', desc = 'class start' },
              ['[i'] = { query = '@conditional.outer', desc = 'if start' },
              ['[l'] = { query = '@loop.outer', desc = 'loop start' },
            },
            goto_previous_end = {
              -- ['[C'] = { query = '@call.outer', desc = 'call end' },
              ['[F'] = { query = '@function.outer', desc = 'function def end' },
              ['[K'] = { query = '@class.outer', desc = 'class end' },
              ['[I'] = { query = '@conditional.outer', desc = 'if end' },
              ['[L'] = { query = '@loop.outer', desc = 'loop end' },
            },
          },
        },
      }

      local ts_repeat_move = require 'nvim-treesitter.textobjects.repeatable_move'

      -- vim way: ; goes to the direction you were moving.
      vim.keymap.set({ 'n', 'x', 'o' }, ';', ts_repeat_move.repeat_last_move)
      vim.keymap.set({ 'n', 'x', 'o' }, ',', ts_repeat_move.repeat_last_move_opposite)
      --
      -- -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
      -- vim.keymap.set({ 'n', 'x', 'o' }, 'f', ts_repeat_move.builtin_f)
      -- vim.keymap.set({ 'n', 'x', 'o' }, 'F', ts_repeat_move.builtin_F)
      -- vim.keymap.set({ 'n', 'x', 'o' }, 't', ts_repeat_move.builtin_t)
      -- vim.keymap.set({ 'n', 'x', 'o' }, 'T', ts_repeat_move.builtin_T)
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter-context',
    cond = function()
      return not vim.g.vscode
    end,
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
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    config = function()
      require('oil').setup()

      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        sections = {
          lualine_c = {
            {
              'filename',
              path = 1,
            },
          },
          lualine_x = {
            {
              require('noice').api.status.mode.get, -- mode is vim "mode" noice has a table with key set to "mode"
              cond = require('noice').api.status.mode.has,
              color = { fg = '#ff9e64' },
            },
          },
        },
      }
    end,
  },

  {
    'junegunn/fzf',
    cond = function()
      return not vim.g.vscode
    end,
    build = './install --bin',
  },

  {
    'ibhagwan/fzf-lua',
    cond = function()
      return not vim.g.vscode
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('fzf-lua').setup {
        -- global history
        -- fzf_opts = {
        --   ['--history'] = vim.fn.stdpath 'data' .. '/fzf-lua-history',
        -- },
        keymap = {
          builtin = {
            ['<F12>'] = 'toggle-help',
            ['<F11>'] = 'toggle-preview',
            ['<S-down>'] = 'preview-page-down',
            ['<S-up>'] = 'preview-page-up',
            ['<S-left>'] = 'preview-page-reset',
          },
          fzf = {
            ['down'] = 'next-history',
            ['up'] = 'prev-history',
            ['ctrl-n'] = 'down',
            ['ctrl-p'] = 'up',
            ['ctrl-d'] = 'half-page-down',
            ['ctrl-u'] = 'half-page-up',
          },
        },
        grep = {
          fzf_opts = {
            ['--history'] = vim.fn.stdpath 'data' .. '/fzf-lua-grep-history',
          },
        },
        files = {
          formatter = 'path.filename_first', -- vscode like find where file name can be specified first
          -- path_shorten = 4,
          fzf_opts = {
            ['--history'] = vim.fn.stdpath 'data' .. '/fzf-lua-files-history',
          },
        },
        oldfiles = {
          formatter = 'path.filename_first',
        },
        buffers = {
          sort_lastused = false,
          formatter = 'path.filename_first',
        },
        winopts = {
          fullscreen = true,
          preview = {
            layout = 'vertical',
            vertical = 'down:50%',
            horizontal = 'right:40%',
            title_pos = 'left',
          },
        },
        actions = {
          files = {
            ['default'] = require('fzf-lua.actions').file_edit,
          },
        },
        previewers = {
          builtin = {
            title_fnamemodify = function(s)
              return s
            end,
          },
        },
        file_ignore_patterns = { 'i18n/', '%.lock$', '%.lua$', '%.vim$' },
      }
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
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      local nvimtree = require 'nvim-tree'

      -- recommended settings from nvim-tree documentation
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      nvimtree.setup {
        view = {
          width = '20%',
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
            eject = true, -- prevent new file from opening in the tree
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

  {
    'rmagatti/auto-session',
    cond = function()
      return not vim.g.vscode
    end,
    priority = 998,
    config = function()
      require('auto-session').setup {
        log_level = 'error',
        auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
        session_lens = {
          load_on_setup = false,
        },
        pre_save_cmds = {
          function()
            local status_ok, api = pcall(require, 'nvim-tree.api')
            if not status_ok then
              return
            end
            api.tree.close()
          end,
        },
        post_save_cmds = {
          function()
            local status_ok, api = pcall(require, 'nvim-tree.api')
            if not status_ok then
              return
            end
            api.tree.toggle { focus = false, find_file = true }
          end,
        },
        post_restore_cmds = {
          function()
            local status_ok, api = pcall(require, 'nvim-tree.api')
            if not status_ok then
              return
            end
            api.tree.toggle { focus = false, find_file = true }

            -- remove noname buffers
            local buffers = vim.api.nvim_list_bufs()
            for _, buf in ipairs(buffers) do
              local name = vim.api.nvim_buf_get_name(buf)
              if name == '' then
                vim.api.nvim_buf_delete(buf, {})
              end
            end

            -- if arrow session is erroring out
            -- require("arrow.persist").load_cache_file()
          end,
        },
      }
    end,
  },

  -- fast cursor movement
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {
      -- modes = {
      --   char = {
      --     enabled = false, -- disable f, F, t, T override
      --   },
      -- },
      label = {
        uppercase = false,
        before = true,
        after = false,
      },
      -- jump = {
      --   autojump = true,
      -- },
      highlight = {
        -- show a backdrop with hl FlashBackdrop
        backdrop = true,
        -- Highlight the search matches
        matches = true,
        -- extmark priority
        priority = 5000,
        groups = {
          match = 'Search', -- first match color
          current = 'Search', -- what you typed
          backdrop = 'Comment', -- non-match text color
          label = 'FlashCurrent', -- jump key color
          -- label = '#ff0000', -- jump key color
        },
      },
    },
  },

  {
    'windwp/nvim-autopairs',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'InsertEnter',
    config = true,
  },

  -- mark files to quickly switch back and forth
  {
    'ThePrimeagen/harpoon',
    cond = function()
      return not vim.g.vscode
    end,
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon'):setup()
    end,
  },

  -- make command line look nice
  {
    'folke/noice.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },

  -- resizing splits
  -- do not lazy load this or it will slow down
  {
    'mrjones2014/smart-splits.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    config = function()
      require('smart-splits').setup()
    end,
  },

  {
    'max397574/better-escape.nvim',
    cond = function()
      return not vim.g.vscode
    end,
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
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    config = function()
      require('colorizer').setup {}
    end,
  },

  {
    'kdheepak/lazygit.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
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
  },

  {
    'kevinhwang91/nvim-ufo',
    cond = function()
      return not vim.g.vscode
    end,
    build = ':TSUpdate',
    event = 'BufReadPost',
    dependencies = 'kevinhwang91/promise-async',
    config = function()
      vim.opt.foldcolumn = '1' -- '0' is not bad
      vim.opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.opt.foldlevelstart = 99 -- dont fold anything at start
      vim.opt.foldnestmax = 3
      vim.opt.foldenable = true
      vim.opt.foldtext = ''

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
    cond = function()
      return not vim.g.vscode
    end,
    main = 'ibl',
    opts = {},
    config = function()
      require('ibl').setup()
    end,
  },

  {
    'windwp/nvim-ts-autotag',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },

  {
    'willothy/nvim-cokeline',
    cond = function()
      return not vim.g.vscode
    end,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      vim.o.mousemoveevent = true

      local function harpoon_sorter()
        local cache = {}
        local setup = false

        local function marknum(buf, force)
          local harpoon = require 'harpoon'
          local b = cache[buf.number]
          if b == nil or force then
            local path = require('plenary.path'):new(buf.path):make_relative(vim.uv.cwd())
            for i, mark in ipairs(harpoon:list():display()) do
              if mark == path then
                b = i
                cache[buf.number] = b
                break
              end
            end
          end
          return b
        end

        -- Use this in `config.buffers.new_buffers_position`
        return function(a, b)
          -- Only run this if harpoon is loaded, otherwise just use the default sorting.
          -- This could be used to only run if a user has harpoon installed, but
          -- I'm mainly using it to avoid loading harpoon on UiEnter.
          local has_harpoon = package.loaded['harpoon'] ~= nil
          if not has_harpoon then
            ---@diagnostic disable-next-line: undefined-field
            return a._valid_index < b._valid_index
          elseif not setup then
            local refresh = function()
              cache = {}
            end
            require('harpoon'):extend {
              ADD = refresh,
              REMOVE = refresh,
              REORDER = refresh,
              LIST_CHANGE = refresh,
            }
            setup = true
          end
          -- switch the a and b._valid_index to place non-harpoon buffers on the left
          -- side of the tabline - this puts them on the right.
          local ma = marknum(a)
          local mb = marknum(b)
          if ma and not mb then
            return true
          elseif mb and not ma then
            return false
          elseif ma == nil and mb == nil then
            ma = a._valid_index
            mb = b._valid_index
          end
          return ma < mb
        end
      end

      local is_picking_focus = require('cokeline.mappings').is_picking_focus
      local get_hex = require('cokeline.hlgroups').get_hl_attr
      local pickFg = '#e1e4ed'
      local brightFg = '#bac2db'
      local normalFg = get_hex('Comment', 'fg')
      local darkerFg = '#4c4f5e'
      local normalBg = '#1e1e2e'
      local darkerBg = '#101019'

      require('cokeline').setup {
        buffers = {
          new_buffers_position = harpoon_sorter(),
        },
        pick = { use_filename = false },
        default_hl = {
          fg = function(buffer)
            if is_picking_focus() then
              return darkerFg
            end
            return buffer.is_focused and brightFg or normalFg
          end,
          bg = function()
            if is_picking_focus() then
              return darkerBg
            end
            return normalBg
          end,
        },

        components = {
          {
            text = function()
              return '▏'
            end,
            fg = function()
              if is_picking_focus() then
                return darkerFg
              end
              return normalFg
            end,
          },
          {
            text = function(buffer)
              return is_picking_focus() and buffer.pick_letter .. ' ' or buffer.devicon.icon
            end,
            fg = function(buffer)
              return is_picking_focus() and pickFg or buffer.devicon.color
            end,
          },
          {
            text = function(buffer)
              return buffer.unique_prefix .. buffer.filename .. '⠀'
            end,
            bold = function(buffer)
              return buffer.is_focused
            end,
          },
          {
            text = function(buffer)
              if buffer.is_modified then
                return ''
              end
              if buffer.is_hovered then
                return '󰅙'
              end
              return '󰅖'
            end,
            on_click = function(_, _, _, _, buffer)
              buffer:delete()
            end,
          },
          {
            text = function(buffer)
              return buffer.is_last and '' or ' '
            end,
          },
          {
            text = function(buffer)
              return buffer.is_last and '▕' or ''
            end,
            fg = function()
              if is_picking_focus() then
                return darkerFg
              end
              return normalFg
            end,
          },
        },
      }
    end,
  },

  {
    'nvim-pack/nvim-spectre',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    dependencies = 'nvim-lua/plenary.nvim',
  },

  -- allows targeting quotes, parens, commas from outside
  { 'wellle/targets.vim', event = 'VeryLazy' },

  -- quickfix list experience enhancement
  {
    'kevinhwang91/nvim-bqf',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    config = function()
      require('bqf').setup {
        func_map = {
          open = '<CR>',
          openc = 'o',
          drop = 'O',
          split = '<C-x>',
          vsplit = '<C-v>',
          tab = 't',
          tabb = 'T',
          tabc = '<C-t>',
          tabdrop = '',
          ptogglemode = 'zp',
          ptoggleitem = 'p',
          ptoggleauto = 'P',
          pscrollup = '<C-b>',
          pscrolldown = '<C-f>',
          pscrollorig = 'zo',
          prevfile = '<C-p>',
          nextfile = '<C-n>',
          prevhist = '<',
          nexthist = '>',
          lastleave = [['"]],
          stoggleup = '<S-Tab>',
          stoggledown = '<Tab>',
          stogglevm = '<Tab>',
          stogglebuf = [['<Tab>]],
          sclear = 'z<Tab>',
          filter = 'zn',
          filterr = 'zN',
          fzffilter = 'zF',
        },
      }
    end,
  },

  {
    'shortcuts/no-neck-pain.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    priority = 999,
    config = function()
      require('no-neck-pain').setup {
        autocmds = {
          -- enableOnVimEnter = true,
          -- enableOnTabEnter = true,
          skipEnteringNoNeckPainBuffer = true,
        },
        width = 150,
        mappings = {
          enabled = true,
        },
      }
    end,
  },

  -- breadcrumbs
  {
    'utilyre/barbecue.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    event = 'VeryLazy',
    name = 'barbecue',
    version = '*',
    dependencies = {
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      vim.g.navic_silence = true
    end,
  },

  {
    'stevearc/aerial.nvim',
    cond = function()
      return not vim.g.vscode
    end,
    opts = {
      backends = { 'lsp', 'treesitter', 'markdown', 'asciidoc', 'man' },
      filter_kind = {
        -- 'Array',
        -- 'Boolean',
        'Class',
        'Constant',
        'Constructor',
        'Enum',
        'EnumMember',
        -- 'Event',
        'Field',
        -- 'File',
        'Function',
        'Interface',
        -- 'Key',
        'Method',
        'Module',
        'Namespace',
        -- 'Null',
        -- 'Number',
        -- 'Object',
        'Operator',
        -- 'Package',
        'Property',
        -- 'String',
        -- 'Struct',
        -- 'TypeParameter',
        -- 'Variable',
      },
    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
  },

  -- {
  --   'otavioschwanck/arrow.nvim',
  --   cond = function()
  --     return not vim.g.vscode
  --   end,
  --   opts = {
  --     -- hide_handbook = true,
  --     show_icons = true,
  --     leader_key = '<leader>j',
  --     buffer_leader_key = 'm',
  --     separate_save_and_remove = true,
  --     index_keys = 'asdfklghncvbzowerutyqpASDFJKLGHNMXCVBZIOWERTYQP',
  --     mappings = {
  --       edit = 'i',
  --       delete_mode = 'x',
  --       clear_all_items = 'C',
  --       toggle = 'j', -- used as save if separate_save_and_remove is true
  --       open_vertical = ' ',
  --       open_horizontal = ' ',
  --       quit = 'q',
  --       remove = ' ', -- only used if separate_save_and_remove is true
  --       next_item = ']',
  --       prev_item = '[',
  --     },
  --   },
  -- },

  {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup {
        use_default_keymaps = false,
      }
    end,
  },

  -- {
  --   'gbprod/yanky.nvim',
  --   cond = function()
  --     return not vim.g.vscode
  --   end,
  --   opts = {
  --     ring = { history_length = 20 },
  --     highlight = { timer = 250 },
  --   },
  --   keys = {
  --     { 'p', '<Plug>(YankyPutAfter)', mode = { 'n', 'x' }, desc = 'Put yanked text after cursor' },
  --     { 'P', '<Plug>(YankyPutBefore)', mode = { 'n', 'x' }, desc = 'Put yanked text before cursor' },
  --     { '=p', '<Plug>(YankyPutAfterLinewise)', desc = 'Put yanked text in line below' },
  --     { '=P', '<Plug>(YankyPutBeforeLinewise)', desc = 'Put yanked text in line above' },
  --     { '[y', '<Plug>(YankyCycleForward)', desc = 'Cycle forward through yank history' },
  --     { ']y', '<Plug>(YankyCycleBackward)', desc = 'Cycle backward through yank history' },
  --   },
  -- },

  {
    'stevearc/overseer.nvim',
    cond = function()
      return not vim.g.vscode
    end,
  },

  {
    'mfussenegger/nvim-dap',
    cond = function()
      return not vim.g.vscode
    end,
    dependencies = {
      -- Fancy UI for the debugger
      'nvim-neotest/nvim-nio',
      {
        'rcarriga/nvim-dap-ui',
        keys = {
          {
            '<leader>de',
            function()
              -- Calling this twice to open and jump into the window.
              require('dapui').eval()
              require('dapui').eval()
            end,
            desc = 'Evaluate expression',
          },
        },
        opts = {
          --icons = {
          --collapsed = arrows.right,
          --current_frame = arrows.right,
          --expanded = arrows.down,
          --},
          floating = { border = 'rounded' },
          layouts = {
            {
              elements = {
                { id = 'stacks', size = 0.30 },
                { id = 'breakpoints', size = 0.20 },
                { id = 'scopes', size = 0.50 },
              },
              position = 'left',
              size = 40,
            },
          },
        },
      },
      -- Virtual text.
      {
        'theHamsta/nvim-dap-virtual-text',
        opts = { virt_text_pos = 'eol' },
      },
      -- JS/TS debugging.
      {
        'mxsdev/nvim-dap-vscode-js',
        enabled = false,
        opts = {
          debugger_path = vim.fn.stdpath 'data' .. '/lazy/vscode-js-debug',
          adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
        },
      },
      {
        'microsoft/vscode-js-debug',
        enabled = false,
        build = 'npm i && npm run compile vsDebugServerBundle && rm -rf out && mv -f dist out',
      },
      -- Lua adapter.
      {
        'jbyuki/one-small-step-for-vimkind',
        keys = {
          {
            '<leader>dl',
            function()
              require('osv').launch { port = 8086 }
            end,
            desc = 'Launch Lua adapter',
          },
        },
      },
    },
    keys = {
      {
        '<leader>db',
        function()
          require('dap').toggle_breakpoint()
        end,
        desc = 'Toggle breakpoint',
      },
      {
        '<leader>dB',
        '<cmd>FzfLua dap_breakpoints<cr>',
        desc = 'List breakpoints',
      },
      {
        '<leader>dc',
        function()
          require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
        end,
        desc = 'Breakpoint condition',
      },
      {
        '<F5>',
        function()
          require('dap').continue()
        end,
        desc = 'Continue',
      },
      {
        '<F10>',
        function()
          require('dap').step_over()
        end,
        desc = 'Step over',
      },
      {
        '<F11>',
        function()
          require('dap').step_into()
        end,
        desc = 'Step into',
      },
      {
        '<F12>',
        function()
          require('dap').step_out()
        end,
        desc = 'Step Out',
      },
    },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'

      -- Automatically open the UI when a new debug session is created.
      dap.listeners.after.event_initialized['dapui_config'] = function()
        dapui.open {}
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        dapui.close {}
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        dapui.close {}
      end

      -- Use overseer for running preLaunchTask and postDebugTask.
      require('overseer').patch_dap(true)
      require('dap.ext.vscode').json_decode = require('overseer.json').decode

      -- Lua configurations.
      dap.adapters.nlua = function(callback, config)
        callback { type = 'server', host = config.host or '127.0.0.1', port = config.port or 8086 }
      end
      dap.configurations['lua'] = {
        {
          type = 'nlua',
          request = 'attach',
          name = 'Attach to running Neovim instance',
        },
      }

      -- C configurations.
      dap.adapters.codelldb = {
        type = 'server',
        host = 'localhost',
        port = '${port}',
        executable = {
          command = 'codelldb',
          args = { '--port', '${port}' },
        },
      }

      -- Add configurations from launch.json
      require('dap.ext.vscode').load_launchjs(nil, {
        ['codelldb'] = { 'c' },
        ['pwa-node'] = { 'typescript', 'javascript' },
      })
    end,
  },

  {
    'kkharji/sqlite.lua',
    cond = function()
      return not vim.g.vscode
    end,
  },

  {
    'AckslD/nvim-neoclip.lua',
    cond = function()
      return not vim.g.vscode
    end,
    requires = {
      -- you'll need at least one of these
      -- {'nvim-telescope/telescope.nvim'},
      { 'ibhagwan/fzf-lua' },
    },
    config = function()
      require('neoclip').setup {
        history = 50,
        keys = {
          fzf = {
            select = 'default',
            paste = 'ctrl-r',
            paste_behind = 'ctrl-b',
            custom = {},
          },
        },
      }
    end,
  },

  -- use https://github.com/nanozuki/tabby.nvim for working on frontend and backend together and have two separate workspace --

  -- zzz
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
-- config.font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Light" })
-- config.font = wezterm.font("VictorMono Nerd Font Mono", { weight = "Light" })
-- config.font = wezterm.font("VictorMono Nerd Font Mono", { weight = "Regular" })
config.font = wezterm.font("VictorMono Nerd Font Mono", { weight = "Medium" })
config.font_size = 16
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.use_dead_keys = false
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = true
config.window_close_confirmation = "NeverPrompt"

config.keys = {
	{ key = "q", mods = "CMD", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	-- {
	-- 	key = '"',
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	-- },
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
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

for i = 1, 8 do
	-- CTRL + number to activate that tab
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CTRL",
		action = wezterm.action.ActivateTab(i - 1),
	})
	-- -- F1 through F8 to activate that tab
	-- table.insert(config.keys, {
	--   key = 'F' .. tostring(i),
	--   action = wezterm.action.ActivateTab(i - 1),
	-- })
end

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


-- key repeat in macos
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
--]]
