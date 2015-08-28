# iTerm2

## terminal color 

- https://github.com/altercation/solarized.git
 - 適当にダウンロードしてiTerm2で読み込む

## font

### プログラム用フォント:Ricty 

- https://github.com/yascentur/Ricty
- power-line

```
brew tap sanemat/font
brew reinstall --powerline --vim-powerline ricty
```

# zsh

## oh-my-zsh

`curl -L http://install.ohmyz.sh | sh`

- http://befool.co.jp/blog/jiska/use-zsh-with-oh-my-zsh/

# powerline
// fontpacherを使うためvim-powerlineをおとす
git clone https://github.com/Lokaltog/vim-powerline.git

brew update
brew install fontforge
fontforge -script vim-powerline/fontpatcher/fontpatcher ~/Library/Fonts/Ricty-Regular.ttf
cp *-Powerline.ttf  ~/Library/Fonts/