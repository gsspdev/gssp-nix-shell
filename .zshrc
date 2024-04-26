# .zshrc by gssp
# paths [man] 
export MANPATH="/usr/local/man:$MANPATH"
# paths [nix]
export PATH="$PATH:$HOME/.nixpkgs"
export PATH="$PATH:/nix/var/nix/profiles/default/bin"
# paths [docker]
export PATH="$PATH:$HOME/.docker/bin"
export PATH="$PATH:/opt/docker-scripts"
# paths [home]
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/lib"
export PATH="$PATH:$HOME/share"
# paths [cargo, cmake, flutter, ruby, llvm]
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/Applications/CMake.app/Contents/bin"
export PATH="$PATH:$HOME/development/flutter/bin"
export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin"
export PATH="$PATH:/usr/local/opt/llvm/bin"
# paths [go] 
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$GOPATH/lib"
export PATH="$PATH:$HOME/development/rust_projects/laborsynth"
# paths [starship] 
export STARSHIP_CONFIG=~/.config/starship.toml
export STARSHIP_CACHE=~/.starship/cache
# paths [function]
export fpath=(~/.local/share/zsh/functions $fpath)
fpath+=~/.zfunc
# paths [xdg]
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
# paths [music]
export MUSIC="$HOME/Music"
export HUMANS_EP="$MUSIC/humans-ep"
# paths [dev]
export DEV_DIR="$HOME/development"
export RUST_DIR="$DEV_DIR/rust_projects"
export JULIA_DIR="$DEV_DIR/julia"
export SWIFT_DIR="$DEV_DIR/swift"
export PYTHON_DIR="$DEV_DIR/python"
export HASKELL_DIR="$DEV_DIR/haskell"
export CPP_DIR="$DEV_DIR/c++"
export ZIG_DIR="$DEV_DIR/zig"
export RACK_DIR="$HOME/development/Fundie"
export SPACEMACSDIR="$XDG_CONFIG_HOME/spacemacs"
export GHCUP_USE_XDG_DIRS="$HOME/.config"
# paths [proj]
export WIZARD_DIR="$SWIFT_DIR/Wizard"
export MODSYNTH_DIR="$RUST_DIR/modsynth"
export FM_MOD_SYNTH_DIR="$RUST_DIR/fm_mod_synth"
export NX_NOTE="$HOME/NX_NOTE"
# paths [dev] (alias)
alias dev="z $DEV_DIR"
alias rdev="z $RUST_DIR"
alias jdev="z $JULIA_DIR"
alias sdev="z $SWIFT_DIR"
alias pdev="z $PYTHON_DIR"
alias hdev="z $HASKELL_DIR"
alias zdev="z $ZIG_DIR"
alias cpldev="z $CPP_DIR"
# paths [proj] (alias)
alias wizdir="z $WIZARD_DIR"
alias z-modsynth="z $MODSYNTH_DIR"
alias z-fm-mod-synth="z $FM_MOD_SYNTH_DIR"
alias v="fd --type f --hidden --exclude .git | fzf |xargs nvim"
alias ..="z .."
alias ~="z ~"
alias rt="z /"
alias t="exa -git-ignore -T"


alias tl="tree -L"
# various aliases
alias python="python3"
# alias a="lsd -lFa"
# alias l="lsd -l"
# alias la="lsd -a"
# alias lla="lsd -la"
# alias lt="lsd --tree"
# alias ll="ls -l"
# alias a="lsd -lFa"
alias a="exa -a -1 -l"
alias e="exa -a -1 -l -@"
alias l="exa -l"
alias x="exa --git-ignore -1"
alias la="exa -lFa"
alias lla="exa -la"
alias lt="exa --tree"
alias ll="exa -l"
alias xt="exa --git-ignore -T"
alias ex_tra="exa -la@HSF --icons"
alias xtra="exa -la@HSF --icons"
alias ex_ult="exa -la@HSFhg --icons"
alias exult="exa -la@HSFhg --icons"
alias to="touch "
alias push="git push"
alias fetch="git fetch"
alias add="git add *"
alias commit="git commit -a -m"
alias fish-config="nvim ~/.config/fish/config.fish"
alias zsh-config="nvim ~/.zshrc"
alias zshrc="nvim ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias g="rg"
alias gr="fd . | rg "
alias d="exa -a | grep '^\.'"
alias s="fd "
alias sg="fd | rg"
alias mk="mkdir"
alias su="sudo"
alias astro="NVIM_APPNAME=astronvim nvim"
alias lazyvim="NVIM_APPNAME=lazyvim nvim"
alias practicalli-redux="NVIM_APPNAME=neovim-config-redux nvim"
alias ai="aicommits -a"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME/.config"
alias cfg="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME/.config"
alias b="br"
alias supa="bunx supabase"
alias cr="cargo run"
alias cbr="cargo build --release"
alias gitignore="vim .gitignore"
alias mate="open -a 'Textmate.app'" 
alias y="yazi"
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
# alias npm="bun"
alias largest="sudo du -a . | sort -n -r | head -n 10"
alias large=" sudo du -hsx * | sort -rh | head -10"
alias k="mkdir"
# USEFUL COMMANDS I FORGET
alias rust_install="curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
alias trun_as_list="tr ',' '\n'"
alias envgrep="env | grep -i"
alias bspk="z ~/development/bespoke_automata"
alias tailscale=/Applications/Tailscale.app/Contents/MacOS/Tailscale
alias psh="pushd" 
alias pop="popd"
alias f="z"
alias fzi="fi"
alias docker-login="docker login -u gsspdeveloper --password-stdin < ~/.docker/dockerhub_password.txt"
alias pathlist="echo $PATH | tr ':' '\n'"
alias gssp-nix="z /Users/gssp/development/gssp-nix-shell ; ./start-docker.sh"
alias update="topgrade"
alias upgrade="topgrade"
alias brew-upgrade="topgrade"
alias car="cargo"
alias hx_config="hx ~/.config/helix/config.toml"
alias commit="git commit -a -m "
export USEFUL_COMMANDS_I_FORGET="rust_install,trunc_as_list,envgrep"
# Oh-My-Zsh plugins
# Standard plugins - $ZSH/plugins/ | Custom plugins - $ZSH_CUSTOM/plugins/
plugins=(1password aliases brew nix emacs docker fd gh colorize docker-compose nmap starship git)
# auto suggestion
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# config [fzf] 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Optional Settings
# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
HIST_STAMPS="mm_dd_yyyy"
HISTSIZE=50000
SAVEHIST=50000
# DISABLE_LS_COLORS="true"
# bun completions
[ -s "/opt/homebrew/Cellar/bun/1.0.15/share/zsh/site-functions/_bun" ] && source "/opt/homebrew/Cellar/bun/1.0.15/share/zsh/site-functions/_bun"
# load [compinit]
autoload -Uz compinit
compinit -u
# setup [nvm]
export NVM_DIR="$HOME/.config.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
# Load [nvm[
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
# Load [nvm]
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# pref [editor]
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi
# telemetry
export AZURE_DEV_COLLECT_TELEMETRY="no"
# Broot (a better tree) configuration
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
  fi
# flags
export LANG=en_US.UTF-8
export CPPFLAGS="-I /opt/homebrew/opt/openjdk@17/include"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# set g++ compiler to use c++11
# export CFLAGS='-std=c++11 -Wall -Wextra -Werror -pedantic-errors'
# this might break
# export CPPFLAGS="$CPPFLAGS:-I/opt/homebrew/opt/ruby/include"
# a whole bunch of nvm stuff
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# place this after nvm initialization!
# fnm
# export PATH="/Users/gssp/.local/share/fnm:$PATH"
# eval "`fnm env`"
# eval export PATH="/Users/gssp/.local/state/fnm_multishells/421_1694108365005/bin":$PATH
# export FNM_LOGLEVEL="info"
# export FNM_DIR="/Users/gssp/Library/Application Support/fnm"
# export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
# export FNM_MULTISHELL_PATH="/Users/gssp/.local/state/fnm_multishells/421_1694108365005"
# export FNM_VERSION_FILE_STRATEGY="local"
# export FNM_ARCH="arm64"
# export FNM_RESOLVE_ENGINES="false"
# export FNM_COREPACK_ENABLED="false"
# bautoload -U add-zsh-hook
# _fnm_autoload_hook () {
#     if [[ -f .node-version || -f .nvmrc ]]; then
#     fnm use --silent-if-unchanged
# fi
# }
# add-zsh-hook chpwd _fnm_autoload_hook \
#     && _fnm_autoload_hooksource /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh
# export RUSTC_WRAPPER=sccache
export SSH_AUTH_SOCK="~/.1password/agent.sock"
# export DOCKER_BUILDKIT="1"
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
# [[ -f /opt/homebrew/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /opt/homebrew/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zshalias bspk="z ~/development/bespoke_automata"
export HISTTIMEFORMAT="%Y-%m-%d %T"
export PATH="$PATH:/Users/gssp/.local/bin" # Added by Docker Labs Debug Tools"
# colors
export RED="\033[31m"
export GREEN="\033[32m"
export YELLOW="\033[33m"
export CYAN="\033[34m"
export MAGENTA="\033[35m"
export BLUE="\033[36m"
export WHITE="\033[37m"
export CLEAR="\033[0m"
[ -f "/Users/gssp/.local/share/ghcup/env" ] && . "/Users/gssp/.local/share/ghcup/env" # ghcup-env
# source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# pnpm
export PNPM_HOME="/Users/gssp/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
eval "$(atuin init zsh)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# Starship prompt
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gssp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/gssp/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/gssp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/gssp/google-cloud-sdk/completion.zsh.inc'; fi
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true
export MODULAR_HOME="/Users/gssp/.modular"
source /Users/gssp/Library/Application\ Support/org.dystroy.broot/launcher/bash/br
rehash
export AZURE_DEV_COLLECT_TELEMETRY='no'
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
alias ex_ultra="exa -aluHgmU -h --changed --git --extended"
