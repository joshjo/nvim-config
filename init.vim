set nu
syntax on

lua require("init")

set list
set listchars=tab:›\ ,eol:¬,trail:•,lead:⋅

" used for formatter
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
