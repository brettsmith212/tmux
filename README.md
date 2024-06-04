# Instructions

1. clone project to .config/
2. `brew install tmux`
3. Copy .tmux.conf from repo to ~/ `cp ~/.config/tmux/.tmux.conf to ~/`
4. Run `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
5. Nvim ~/.tmux.conf and run `Ctrl-a I` to install plugins


## Commands
- `tmux new -s SessionName`
- `tmux attach -t SessionName`
- `tmux detach`
- `tmux ls`
- `C-a s` Display sessions while tmux is running

