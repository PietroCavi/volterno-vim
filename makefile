install:
	@printf "This will potentially alter your current vim config, do you want to proceed? [y/n] " && read ans && [ "$$ans" = "y" ]
	cp volterno-vim.vim ~/.vim/
	mkdir -p "$$HOME/.vim/colors"
	cp colors/* ~/.vim/colors/
	mkdir -p "$$HOME/.vim/templates"
	cp -r templates/* ~/.vim/templates/
	grep -qxF "source ~/.vim/volterno-vim.vim" "$$HOME/.vimrc" || printf "\nsource ~/.vim/volterno-vim.vim" >> "$$HOME/.vimrc"

install-aliases:
	@touch "$$HOME/.bash_aliases"
	grep -qxF "alias c='clear'" "$$HOME/.bash_aliases" || echo "alias c='clear'" >> "$$HOME/.bash_aliases"
	grep -qxF "alias e='exit'" "$$HOME/.bash_aliases" || echo "alias e='exit'" >> "$$HOME/.bash_aliases"

# This is for maintaining porpuses only, if you are not a maintainer of the repo... don't
install-git:
	cp volterno-vim.vim ~/.vim/
	mkdir -p "$$HOME/.vim/colors"
	cp colors/* ~/.vim/colors/
	mkdir -p "$$HOME/.vim/templates"
	cp -r templates/* ~/.vim/templates/
	grep -qxF "source ~/.vim/volterno-vim.vim" "$$HOME/.vimrc" || printf "\nsource ~/.vim/volterno-vim.vim" >> "$$HOME/.vimrc"
	cp -r LICENSE README.md makefile .gitignore .git "$$HOME/.vim"
