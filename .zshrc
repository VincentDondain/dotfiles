# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

install-pkg () {
	sudo installer -pkg $1 -target /
}

blame-deleted () {
	git blame $(git rev-list -n 1 HEAD -- $1)~1 -- $1
}

gse-update () {
	github-status-editor --repository xamarin/xamarin-macios --hash $1 --set=success --authorization=e6dd39b6b757262921868eae6b68849333c08692 --context="$2" --message "$3"
}

gse-update-all () {
	github-status-editor --repository xamarin/xamarin-macios --hash $1 --set=success --authorization=e6dd39b6b757262921868eae6b68849333c08692 --message "$2"
}

alias gse-list='github-status-editor --repository xamarin/xamarin-macios --hash'

alias bigfolder='du -sch .[!.]* * | sort -hr'

alias xcdevice='open xcdevice://showDevicesWindow'
alias symbolicate="/Applications/Xcode.app/Contents/SharedFrameworks/DVTFoundation.framework/Versions/A/Resources/symbolicatecrash -v"

alias add-ssh-key='ssh-add -K $HOME/.ssh/id_rsa'

alias make-md='./configure && make'
alias run-md='./configure && make && make run'
alias xs='open -n /Applications/Xamarin\ Studio.app/'
alias vs='open -n /Applications/Visual\ Studio.app/'
alias provision-all='./bot-provisioning/system_dependencies.sh --provision-all'
alias fg='find . | grep '

alias header-files='cd /Applications/Xcode72-beta1.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/'
alias count-changes='wc -l *.md'
alias snippets='$HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User'

alias remove-vmware-license='sudo rm /Library/Preferences/VMware\ Fusion/license-fusion-*'

mobileprovision() {
	openssl smime -in $1 -inform der -verify
}

alias update-addin-ref='git add version-checks && git commit -m "Updated reference to md-addins"'

alias templatestests='make test assembly=Ide.Tests.dll'
alias iostests='make run-ios-sim64-introspection'
alias iostests-32='make run-ios-sim32-introspection'
alias tvostests='make run-tvos-sim-introspection'
alias watchostests='make run-watchos-sim-introspection'
alias watchostestsdev='make run-watchos-dev-introspection'
alias mactests='make run-mac-introspection'
alias msbuildtests='make test-ios-tasks'
alias monotouchtests-ios='make run-ios-sim64-monotouch-test'
alias monotouchtests-tvos='make run-tvos-sim-monotouch-test'
alias monotouchtests-watchos='make run-watchos-sim-monotouch-test'
alias xammactests='make run-mac-xammac_tests'
alias dontlink='make run-ios-sim64-dontlink'

alias bind='sharpie query -bind -module '

alias nukexm='sudo rm -rf /Library/Frameworks/Xamarin.Mac.framework && rm -rf ~/Library/Xamarin.Mac'

alias gistcdiff='gist -pcs -t diff' 
alias gistc='gist -pcs'

alias plist-convert='plutil -convert xml1 -o - '
alias verify-codesign='codesign --verify --deep --strict --verbose=2'
alias md5='openssl md5'

# Codespaces
alias web='$HOME/Documents/vsclk-core/src/Portal/PortalWebsite/Src/Website'
alias pfreadme='code $HOME/Documents/Codespaces/vsclk-core/build/port-forwarding/README.md'
alias cascade='$HOME/Documents/Codespaces/Cascade'
alias flushdns='sudo killall -HUP mDNSResponder;say DNS cache has been flushed'
alias nginxconf='code /usr/local/etc/nginx/nginx.conf'
alias vscodeext='$HOME/.vscode-insiders/extensions'

# K8s
alias see-helm-dry='helm install errors-backend ./errors-backend --debug --dry-run --set image.repositoryUrl=a --set image.tag=b' # see what helm does
alias forward-error-backend='kubectl port-forward web-errors-backend-d7db76b7b-pdd4w 8080:80' #port forward the error backend (private cluster) locally

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

#/usr/bin
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval "$(rbenv init -)"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
