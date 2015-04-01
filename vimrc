filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99


"Vertical Split : Ctrl+w + v
"Horizontal Split: Ctrl+w + s
"Close current windows: Ctrl+w + q

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>


syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

nmap <leader>a <Esc>:Ack!

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF