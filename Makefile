DOTFILES=bash_aliases gitconfig tmux.conf vimrc
all: clean link

clean: 
	@.build/clean.sh $(DOTFILES)

link: clean
	@.build/link.sh $(DOTFILES)
		

