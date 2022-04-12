# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

if [[ -z "${DOTFILES_DIR}" ]]; then
    export DOTFILES_DIR=${HOME}/.dotfiles
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$DOTFILE/.bashrc" ]; then
	. "$DOTFILE/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$DOTFILE/bin" ] ; then
    PATH="$DOTFILE/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi