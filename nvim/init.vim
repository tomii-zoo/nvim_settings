" vim tips 参考サイト様
" http://vimblog.hatenablog.com/entry/vimrc_set_recommended_options

" カラー設定
let g:molokai_original = 1
"colorscheme dracula

" フォント設定
set guifont=Ricty\ Diminished:h13

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

" ショートカットキー
set pastetoggle=<F3>
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

" 暗号化方式(CUIのみ)
" set cryptmethod=blowfish2

" スペースは次文字移動なので使わない
" <Leader>というプレフィックスキーにスペースを使用する
let g:mapleader = "\<Space>"

" スペース + wでファイル保存
nnoremap <Leader>w :w<CR>

" スペース + . でvimrcを開く
nnoremap <Leader>. :new C:\Users\tomii\AppData\Local\nvim\init.vim

" vim-plugのプラグイン達
call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'EdenEast/nightfox.nvim'
	Plug 'tpope/vim-commentary'
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'

	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

	" Windows依存関係でうまくいかなかったのでコメントアウト
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

nnoremap <silent><C-e> :NERDTreeToggle<CR>

colorscheme duskfox

