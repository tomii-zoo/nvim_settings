" カラースキーム
let g:molokai_original = 1

" フォント設定
set guifont=Ricty\ Diminished:h12

" 基本設定
set mouse=a
set fileencodings=utf-8,cp932
set cursorline
set number			" 行番号表示
set tabstop=4		" タブの領域
set shiftwidth=2	" 自動インデン幅
set softtabstop=2	" 連続空白に大しての削除
set showmatch		" 括弧強調
syntax on			" シンタックスハイライトON

set autoindent		" 前のインデント継続
set smartindent		" 改行時自動インデント
set ignorecase		" 検索時大文字小文字を区別しない
set smartcase		" 大小文字混在時は区別する
set wrapscan		" 検索時に自動的に先頭に戻る	
set gdefault		" 置換gオプションをデフォルト

" クリップボードのコピペ設定
set clipboard=unnamed,unnamedplus

" パスの区切り文字/にする
" set shellslash

" 前回のカーソル位置を記憶
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" 暗号化方式
" set cryptmethod=blowfish2

" スペースは次文字移動なので使わない
" <Leader>というプレフィックスキーにスペースを使用する
let g:mapleader = "\<Space>"

" vim-plugのプラグイン達
call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'rust-lang/rust.vim'
	Plug 'folke/tokyonight.nvim'
	Plug 'sainnhe/everforest'
	Plug 'vim-airline/vim-airline'

	Plug 'folke/tokyonight.nvim'
	Plug 'EdenEast/nightfox.nvim'
	Plug 'tpope/vim-commentary'
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'

	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'jacoborus/tender.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ayu-theme/ayu-vim'
call plug#end()

" ショートカットキー
set pastetoggle=<F3>
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

" スペース + wでファイル保存
nnoremap <Leader>w :w<CR>

" スペース + . でvimrcを開く
nnoremap <Leader>. :new C:\Users\tomii\AppData\Local\nvim\init.vim

" 終了ショートカット
nnoremap <BS> :q<CR>
nnoremap <F12> :w<CR>

" NERDTreeショートカット
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:neovide_cursor_vfx_mode = "railgun"
colorscheme tokyonight
