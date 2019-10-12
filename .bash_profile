alias develop='git checkout develop && git pull origin develop'
alias gs='git status '
alias gadd='git add '
alias ga='git add .'
alias gci='git commit'
alias gcia='git commit --amend'
alias gco='git checkout '
alias gbr='git branch'
alias gd='git diff '
alias gl='git log'
alias cleanBranches="git branch --merged develop | egrep -v '^\s*\*?\s*develop$' | xargs git branch -d"

alias dstop='docker stop $(docker ps -q)'
alias drm='docker rm -f $(docker ps -a -q)'
alias drmi='docker rmi $(docker images -q)'
alias dup='docker-compose up'

alias cleanIdea='git clean -dfx && ./gradlew idea && open *.ipr'
alias idea='./gradlew idea && open *.ipr'

# Use git completion 

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

