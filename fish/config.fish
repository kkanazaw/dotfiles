export LANG=ja_JP.UTF-8
set -U GHQ_SELECTOR peco
set PATH /usr/local/bin /usr/sbin $HOME/.poetry/bin /opt/homebrew/opt/libpq/bin $PATH
# arm64 版 Homebrew を Intel 版（/usr/local）より優先する
if test -x /opt/homebrew/bin/brew
    /opt/homebrew/bin/brew shellenv fish | source
end
# python3 は Homebrew の依存で入る版ではなく python.org の 3.12 を使う
set PATH /Library/Frameworks/Python.framework/Versions/3.12/bin $PATH

# cd > ls
function cd
  builtin cd $argv
    ls -a
end

function peco_z
  set -l query (commandline)

  if test -n $query
    set peco_flags --query "$query"
  end

  z -l | peco $peco_flags | awk '{ print $2 }' | read recent
  if [ $recent ]
      cd $recent
      commandline -r ''
      commandline -f repaint
  end
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] 'peco_select_ghq_repository'  # 追加
  #bind \x1b peco_z
end

balias g git
#balias emacs 'emacsclient -nw -a ""'

# The next line updates PATH for Netlify's Git Credential Helper.
test -f '/Users/kkanazaw/Library/Preferences/netlify/helper/path.fish.inc' && source '/Users/kkanazaw/Library/Preferences/netlify/helper/path.fish.inc'
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kkanazaw/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/kkanazaw/Downloads/google-cloud-sdk/path.fish.inc'; end
export PATH="$HOME/.local/bin:$PATH"
source /Users/kkanazaw/.config/op/plugins.sh
