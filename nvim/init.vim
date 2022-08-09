" vim tips 参考サイト様
" http://vimblog.hatenablog.com/entry/vimrc_set_recommended_options

" カラー設定
let g:molokai_original = 1
colorscheme molokai

" フォント設定
set guifont=RictyDiminished\ NF:h12

" 基本設定
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
set shellslash

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