filetype plugin indent on
filetype plugin on
set nocompatible
syntax enable
set noerrorbells
set cursorline
" set confirm
set hidden " switch between buffers without error
set number
set relativenumber
set complete=.,w,b,u,U,t,i,d
set completeopt-=preview
set autoindent smartindent " Set Proper Tabs
set backspace=eol,start,indent     " Allow backspacing over indent, eol, & start
set clipboard=unnamed
set scrolloff=5
set tabstop=2
set shiftwidth=2
set softtabstop=2 "   Soft tab width in spaces
set expandtab
set smarttab
set smartindent
set autoindent
set backspace=indent,eol,start  " При нажатии backspace в начале строки, переходит на предыдущую
set selection=exclusive  " Убирает выделение символа конца строки

" encoding
lang en_US.UTF-8
set encoding=UTF-8
scriptencoding utf-8
set termencoding=utf-8


set rtp+=/usr/local/opt/fzf
