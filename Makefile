
all: help 

help:
	@echo "\"make install\" to install all dotfiles"
	@echo "\"make update\" to update all dotfiles"
	@echo "\"make sync\" to sync all dotfiles"

ALLFILE= .bash_profile \
		.gitignore_global \
		.gvimrc \
		.vimrc \
		.zshrc 

commit:$(ALLFILE)
	git commit -a

sync:
	git pull
	git push

install:
	ln -fs `pwd`/.bash_profile ~/.
	ln -fs `pwd`/.gitignore_global ~/.
	ln -fs `pwd`/.gvimrc ~/.
	ln -fs `pwd`/.vimrc ~/.
	ln -fs `pwd`/.zshrc ~/.
