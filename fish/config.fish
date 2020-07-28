export LANG=ja_JP.UTF-8
set -U GHQ_SELECTOR peco
set PATH /usr/local/bin /usr/sbin $HOME/.poetry/bin $PATH
set -gx nvm_prefix /usr/local/opt/nvm/

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
  bind \x1b peco_z # Ctrl-[にバインドする
end

balias g git
#balias emacs 'emacsclient -nw -a ""'
source (conda info --root)/etc/fish/conf.d/conda.fish
