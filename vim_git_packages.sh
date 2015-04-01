mkdir ~/.vim/
mkdir ~/.vim/{autoload,bundle}
SCRIPT_DIR=$(pwd)
cd ~/.vim/

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone http://github.com/tpope/vim-fugitive.git bundle/fugitive
git clone https://github.com/msanders/snipmate.vim.git bundle/snipmate
git clone https://github.com/tpope/vim-surround.git bundle/surround
git clone https://github.com/tpope/vim-git.git bundle/git
git clone https://github.com/ervandew/supertab.git bundle/supertab
git clone https://github.com/sontek/minibufexpl.vim.git bundle/minibufexpl
git clone https://github.com/wincent/Command-T.git bundle/command-t
git clone https://github.com/mitechie/pyflakes-pathogen.git
git clone https://github.com/mileszs/ack.vim.git bundle/ack
git clone https://github.com/sjl/gundo.vim.git bundle/gundo
git clone https://github.com/fs111/pydoc.vim.git bundle/pydoc
git clone https://github.com/vim-scripts/pep8.git bundle/pep8
git clone https://github.com/alfredodeza/pytest.vim.git bundle/py.test
git clone https://github.com/reinh/vim-makegreen bundle/makegreen
git clone https://github.com/vim-scripts/TaskList.vim.git bundle/tasklist
git clone https://github.com/vim-scripts/The-NERD-tree.git bundle/nerdtree
git clone https://github.com/sontek/rope-vim.git bundle/ropevim

mkdir ~/.vim/snippets
cp SCRIPT_DIR/python.snippets ~/.vim/snippets/python.snippets