#!/usr/bin/env bash

languages=$(echo "typescript javascript" | tr " " "\n")
core_utils=$(echo "find xargs sed awk" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "Query: " query

if echo "$languages" | grep -qs $selected; then
  tmux split-window -p 22 -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less -R"
else
  curl cht.sh/$selected~$query
fi

# if echo "$languages" | grep -qs $selected; then
#     query=`echo $query | tr ' ' '+'`
#     tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
# else
#     tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
# fi