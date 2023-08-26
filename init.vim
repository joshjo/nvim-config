set nu
syntax on

lua require("init")

set list
set listchars=tab:›\ ,eol:¬,trail:•,lead:⋅
set signcolumn=yes

" used for formatter
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
