# Fisher plugins installed:
# fisher add rafaelrinaldi/pure 
# fisher add jethrokuan/z

#set -gx PATH ~/workspace/go/bin $PATH
#set -gx PATH /snap/bin/ $PATH
#set -gx PATH ~/.npm-global/bin $PATH
set -gx PATH ~/.pyenv/bin $PATH
set -gx PATH ~/bin $PATH

#Disable fish greeting
set fish_greeting

alias lll "ls -la"
alias kc "kubectl"
alias kx "kubectx"
alias kn "kubens"
alias kt "kubetail"
alias mgs "mgitstatus ~/workspace 3"

# Pyenv auto activation support
status --is-interactive; and source (pyenv init -|psub)
#status --is-interactive; and source (pyenv virtualenv-init -|psub)

# Set pipenv virtualens directory to the one managed by pyenv
set -gx WORKON_HOME ~/.pyenv/versions

# Pure fish config
set -g pure_symbol_prompt '>'
set -g pure_symbol_git_unpulled_commits '\\'
set -g pure_symbol_git_unpushed_commits '/'
