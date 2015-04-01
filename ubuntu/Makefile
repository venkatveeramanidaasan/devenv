getvenv:
	sudo apt-get install -y python-virtualenv
getjava:
	sudo sh ./setup_java.sh
getpydev:
	sudo apt-get install -y python2.7-dev ncurses-dev
getvimpy:
	wget wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
	tar jxf ./vim-7.4.tar.bz2
	mv ./vim74 ~/vim74
	cd ~/vim74/ && ./configure --enable-pythoninterp --with-features=huge
	cd ~/vim74/ && make
	cd ~/vim74/src/ && mv ./vim  ~/vimpy

.PHONY: getpydev