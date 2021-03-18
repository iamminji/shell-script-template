#!/bin/bash

match() {
  while IFS='=' read -r key val; do
    [[ $key == '#'* ]] && continue
    keys+=("$key")
    vals+=("$val")
  done <$1

  for ((i = 0; i < ${#keys[@]}; i++)); do
    if [[ $2 == ${keys[i]} ]]; then
      echo ${vals[i]}
      exit 0
    fi
  done
  return
}

