#
# ~/.profile
#
# @author losedavidpb
#

source ~/.config/shell/exports

case $SHELL_NAME in
    "zsh") exec zsh ;;
    "bash") exec bash ;;
esac