#! /usr/bin/env bash

check_directory() {
  if [[ -d "${1}" ]]; then
    echo "${1}"
    return 0
  fi

  if [[ -z "${1}" ]]; then
    echo "."
    return 0
  fi

  return 1
}

sort_files() {
  local regular_file="^[^.*?!]+\.([^.*?!]+)$"
  local dot_file="^\.[^.*?!]+$"

  for file in * .[^.]*; do
    if [[ ! -f "${file}" ]]; then continue; fi

    echo "Procession file: ${file}"

    if [[ ${file} =~ ${regular_file} ]]; then
      local extension="${BASH_REMATCH[1]}"
      if [[ ! -d ${extension} ]];then
        mkdir "${extension}"
      fi
      mv "${file}" "${extension}/"
    elif [[ ${file} =~ ${dot_file} ]]; then
      if [[ ! -d "dotfiles" ]]; then
        mkdir "dotfiles"
      fi
      mv "${file}" "dotfiles/"
    else
      if [[ ! -d "no_extension" ]]; then
        mkdir "no_extension"
      fi
      mv "${file}" "no_extension/"
    fi
  done
}

main() {

  local directory
  directory=$(check_directory "${1}")

  if [[ ${?} -ne 0 ]]; then
    echo "Error: '${1}' is not a directory" >&2 && exit 1
  fi

  cd "${directory}" || { echo "Error: Failed to change directory" >&2; exit 1; }

  sort_files
}

main "${1}"