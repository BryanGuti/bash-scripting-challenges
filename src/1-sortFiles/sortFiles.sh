#! /usr/bin/env bash

check_directory() {
  if [[ -d ${1} ]] then
    echo ${1} && return
  fi

  if [[ ${#1} -eq 0 ]] then
    echo "." && return
  fi

  exit 1
}

sort_files() {
  regular_file="^[A-Za-z0-9_-]+\.([A-Za-z0-9]+)$"
  dot_file="^\.[^\.]+$"

  for file in * .[^.]*; do
    if [[ ! (-f ${file}) ]]; then continue; fi

    echo ${file}

    if [[ ${file} =~ ${regular_file} ]]; then
      if [[ ! (-d ${BASH_REMATCH[1]}) ]];then
        mkdir ${BASH_REMATCH[1]}
      fi
      mv ${file} ${BASH_REMATCH[1]}
    elif [[ ${file} =~ ${dot_file} ]]; then
      if [[ ! (-d "dotfiles/") ]]; then
        mkdir dotfiles/
      fi
      mv ${file} dotfiles/
    else
      if [[ !(-d "no_extension/") ]]; then
        mkdir no_extension/
      fi
      mv ${file} no_extension/
    fi
  done
}

main() {

  directory=$(check_directory ${1})

  if [[ ${?} -ne 0 ]] then
    echo "${1} is not a directory"
    exit 1
  fi

  cd ${directory}

  sort_files
}

main ${1}