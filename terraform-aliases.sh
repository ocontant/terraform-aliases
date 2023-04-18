# If you notice, aliases are bounded to each other
# Why? Gives the freedom to override the lower levels and to affect all of them
# e.g.: alias tfi=terraform init -no-color -reconfigure

alias tf=terraform

alias tfi='tf init'

alias tfp='tf plan'
alias tfip='tfi && tfp'

alias tfa='tf apply'
alias tfia='tfi && tfa'

alias tfd='tf destroy'
alias tfid='tfi && tfd'

# DANGER zone
alias tfa!='tfa -auto-approve'
alias tfia!='tfi && tfa!'
# DANGER++!!
alias tfd!='tfd -auto-approve'
alias tfid!='tfi && tfd!'

alias tfc='tf console'
alias tff='tf fmt'
alias tfg='tf graph'
alias tfget='tf get'
alias tfimp='tf import'
alias tfo='tf output'
alias tfprov='tf providers'
alias tfr='tf refresh'
alias tfs='tf show'
alias tfst='tf state'
alias tft='tf taint'
alias tfu='tf untaint'
alias tfv='tf validate'
alias tfver='tf version'
alias tfw='tf workspace'
alias tfwn='tfw new'
alias tfwl='tfw list'
alias tfws='tfw show'
alias tfwse='tfw select'

complete -o nospace -C $(which terraform) terraform
