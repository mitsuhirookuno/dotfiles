# color
https://github.com/altercation/solarized.git

# font
https://github.com/yascentur/Ricty

# oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# powerline
// fontpacherを使うためvim-powerlineをおとす
git clone https://github.com/Lokaltog/vim-powerline.git

brew update
brew install fontforge
fontforge -script vim-powerline/fontpatcher/fontpatcher ~/Library/Fonts/Ricty-Regular.ttf
cp *-Powerline.ttf  ~/Library/Fonts/