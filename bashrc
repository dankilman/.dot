#! /usr/bin/env bash

[[ $- != *i* ]] && return

# required order:
# functions -> completions
# git       -> prompt      -> fasd

__sourced=(
    exports
    colors
    aliases
    functions
    completions
    git
    prompt
    rvm
    see
    virtualenvwrapper
    fasd
)

__script_path="$(readlink -nf ${BASH_SOURCE[0]})"
__script_dir=${__script_path%/*}

for __item in ${__sourced[@]}; do
    source "${__script_dir}/${__item}"
done

unset __item
unset __script_path
unset __script_dir
unset __sourced
