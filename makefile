install:
	@printf "This will potentially destroy your current vim config, do you want to proceed? [y/n] " && read ans && [ "$$ans" = "y" ]
	cp vimrc ~/.vimrc
	mkdir -p "$$HOME/.vim/colors"
	cp vim/colors/* ~/.vim/colors/
	mkdir -p "$$HOME/.vim/templates"
	cp -r vim/templates/* ~/.vim/templates/
