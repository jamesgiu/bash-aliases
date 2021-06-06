alias ls='ls -lahF --color'
alias cd=cdTree $1
alias pls='sudo $(\history -p !!)'
alias ss=ezSed $1 $2 $3
alias ..='cd ..'
alias -- -='cd -'
alias history=histSearch $1

# $1 = the directory to cd into
function cdTree() {
  \cd $1 && tree -L 1 -fapugh -C
}

# $1 = value to replace
# $2 = new value
# $3 = filename matcher, surrounded in quotes (e.g. "*.yml")
function ezSed() {
  sed -i -e "s/$1/$2/g" $3
}

# $1 = term to search history for
function histSearch() {
  \history | grep -i $1
}

