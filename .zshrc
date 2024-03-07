export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="candy"

plugins=(
    git
    sudo 
    zsh-syntax-highlighting
    copyfile
    copypath 
)

source $ZSH/oh-my-zsh.sh

#environment variables (desktop only)
export USBHOME=/run/media/wross

#Adding stuff to the PATH
export PATH=$PATH:/home/wross/bin
export PATH=$PATH:/home/wross/go/bin
export PATH=$PATH:/home/wross/.cargo/bin
export PATH=$PATH:/home/wross/.local/bin
export PATH=$PATH: PATH="$HOME/.rbenv/bin:$PATH"


#Eza
alias ls='eza --long --header -F --git --color always --time-style iso'
alias tree='eza --tree --color always'

#Proper aliasing for dotfiles
alias config='lazygit --git-dir=$HOME/.cfg --work-tree=$HOME'
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim='/usr/bin/nvim'
alias lg='lazygit'
alias cl='clear'

#tmux
# if [ "$TMUX" = "" ]; then exec tmux; fi
if [ "$TMUX"  = ""  -a "$DESKTOP_SESSION" = "plasma" ]; then tmux; fi

PATH="/home/wross/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/wross/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/wross/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/wross/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/wross/perl5"; export PERL_MM_OPT;
