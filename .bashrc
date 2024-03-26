export CONF="$HOME/Config"

aliases=$(find $CONF/.aliases -type f)
for a in $aliases; do source $a; done

source $CONF/.functions

neofetch
