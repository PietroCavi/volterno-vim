install:
	@printf "This will potentially destroy your current vim config, do you want to proceed? [y/n] " && read ans && [ "$$ans" = "y" ]
	cp vimrc ~/.vimrc
	mkdir -p "$$HOME/.vim/colors"
	cp vim/colors/* ~/.vim/colors/
	mkdir -p "$$HOME/.vim/templates"
	cp -r vim/templates/* ~/.vim/templates/

install-aliases:
	@touch "$$HOME/.bash_aliases"
	grep -qxF "alias c='clear'" "$$HOME/.bash_aliases" || echo "alias c='clear'" >> "$$HOME/.bash_aliases"
	grep -qxF "alias e='exit'" "$$HOME/.bash_aliases" || echo "alias e='exit'" >> "$$HOME/.bash_aliases"
