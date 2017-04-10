# My zsh configuration
# ------------------------
# Last update - 23.03.2017


# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Some useful stuff
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PATH=$PATH:/opt/local/bin

# GNU compilers for C and C++
alias gcc=/usr/local/Cellar/gcc/6.3.0_1/bin/gcc-6
alias g++=/usr/local/Cellar/gcc/6.3.0_1/bin/g++-6

# Ctags 
alias ctags="`brew --prefix`/bin/ctags"

# Useful to repeat a command n times
function run() {
    number=$1
    shift
    for n in $(seq $number); do
      $@
    done
}
