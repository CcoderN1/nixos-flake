{ config, ... }:
{
  home.file.".config/nvim/init.vim".text = ''
imap jk <Esc>
vnoremap <C-c> "+y
map <C-p> "+p
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
set number
"set nowrap
map <A-d> "_dw
command! SaveReg wshada!
  '';
}