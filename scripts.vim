" strot flag Paraxip log file using regular expressions
" see http://www.vim.org/htmldoc/usr_43.html
if did_filetype()
  finish
endif
if getline(1) =~ '^20\d\d-\d\d-\d\d \d'
  setf paraxiplog
endif

