"tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
"numbering + no wrap text
set relativenumber
set number
set nowrap

"no sound :)
set noerrorbells

"save/undo management
set hidden
set undodir=~/.vim/undodir
set undofile
set noswapfile
set nobackup

"search
set incsearch
set nohlsearch

"misc editor tweaks
set scrolloff=8
set signcolumn=yes
set colorcolumn=90

set termguicolors

call plug#begin('~/.vim/plugged')
Plug 'terrortylor/nvim-comment'
Plug 'nvim-lua/plenary.nvim'
Plug 'simrat39/rust-tools.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jacoborus/tender.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'gruvbox-community/gruvbox'
Plug 'mbbill/undotree'
Plug 'vimwiki/vimwiki'
Plug 'Shadorain/shadotheme'
Plug 'lervag/vimtex'
Plug 'windwp/nvim-autopairs'
Plug 'voldikss/vim-floaterm'
Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
call plug#end()

"color scheming
"colorscheme cyberpunk-neon highlight Normal guibg=none ctermbg=none colorscheme neuromancer
colorscheme space-vim-dark

"hotkey remapping
let mapleader = " "
nnoremap <f5> :UndotreeToggle<CR>
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"float term toggling
let g:floaterm_keymap_toggle='<c-t>'

"use leader cc to close buffers opened by lsp
nnoremap <leader>cc :cclose<CR>


nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tc :tabclose<CR>

"explorer remap
nnoremap <leader>e :Explore<CR>

"makes helper function for autocomplete
"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction


let g:vimwiki_list = [{'path': '~/vimwiki',
		  \ 'template_path': '~/vimwiki_templates',
		  \ 'template_default': 'def_template',
		  \ 'template_ext': '.html'}]

"add the pre tag for inserting code snippets
let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr, pre, script'


"vimtex stuff
syntax enable
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_compiler_method = 'tectonic'
let maplocalleader = " "

"lsp stuff
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

set completeopt=menu,menuone,noselect


lua <<EOF
require("nvim-autopairs").setup {}


 local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<tab>'] = cmp.mapping.select_next_item(),
      ['<S-tab>'] = cmp.mapping.select_prev_item(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
  on_attach = function(client, bufnr)
    vim.api.nvim_exec_autocmds('User', {pattern = 'LspAttached'})
  end
}

local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
  'force',
  lspconfig.util.default_config, lsp_defaults
)
lspconfig.pyright.setup({})
local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
               },
            }
        }
    },
}
require('rust-tools').setup(opts)
require('nvim_comment').setup()
EOF
