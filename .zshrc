# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx autojump golang)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH=$PATH:/usr/local/go/bin
# export MANPATH="/usr/local/man:$MANPATH"
#
alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export GOROOT=/usr/local/go
#export GOROOT=$HOME/Documents/SourceCode/goRoot
export GOPATH=$HOME/Documents/SourceCode/goPath
export GOPATH=$GOPATH:$HOME/Documents/DonViewCompany/videowebsite

export PATH=$PATH:$GOPATH/bin
#export PATH=$PATH:~/Documents/SourceCode/android-ndk-r10d

#export ANDROID_API=android-19
export ANDROID_NDK_ROOT=~/Documents/SourceCode/android-ndk-r10d
export PATH=$PATH:$ANDROID_NDK_ROOT

#export ANDROID_TOOLCHAIN=/Users/daozhao/Documents/SourceCode/android-ndk-r10d/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64/bin
#export ANDROID_SYSROOT=/Users/daozhao/Documents/SourceCode/android-ndk-r10d/platforms/$ANDROID_API/arch-arm
#export ANDROID_NDK_SYSROOT=/Users/daozhao/Documents/SourceCode/android-ndk-r10d/platforms/$ANDROID_API//arch-arm
#export ANDROID_DEV=/Users/daozhao/Documents/SourceCode/android-ndk-r10d/platforms/$ANDROID_API/arch-arm/usr

export PATH=$PATH:$ANDROID_NDK_ROOT/N19-gcc48/bin
#export PATH=$PATH:$ANDROID_NDK_ROOT/17-gcc48/bin
export PATH=$PATH:/Users/daozhao/Documents/SourceCode/Android-SDK/platform-tools 
#export PATH=/Users/daozhao/Documents/SourceCode/android19-nginx/N19-gcc48/bin:/Users/daozhao/Documents/SourceCode/android19-nginx/N19-gcc48/arm-linux-androideabi/bin:$PATH
#export PATH=/Users/daozhao/Documents/SourceCode/android19-nginx/N19-gcc48/bin:$PATH


launchctl setenv GOROOT $GOROOT
launchctl setenv GOPATH $GOPATH


. /Library/Python/2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}>% %{$reset_color%}'
source $HOME/.bash_profile
