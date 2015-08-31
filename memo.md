[戻る](./README.md)

# iTerm2

## terminal color 

- https://github.com/altercation/solarized.git
 - 適当にダウンロードしてiTerm2で読み込む

## font

### プログラム用フォント:Ricty 

- https://github.com/yascentur/Ricty
- power-line

### powerline

```
brew tap sanemat/font
brew reinstall --powerline --vim-powerline ricty
```

※`fc-cache -vf` フォントのキャッスクリア

# zsh

## oh-my-zsh

```
curl -L http://install.ohmyz.sh | sh
```

- http://befool.co.jp/blog/jiska/use-zsh-with-oh-my-zsh/
 - テーマは `ZSH_THEME="wedisagree"` を暫定利用中

### zshの不調時

```
rm ~/.zcompdump
exec zsh
```