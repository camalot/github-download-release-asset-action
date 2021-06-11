#!/usr/bin/env sh
alias errcho='>&2 echo'

__error() {
	errcho "::error::${@:1}"
	exit 9;
}
__warning() {
	echo "::warning::${@:1}"
}
__debug() {
	echo "::debug::${@:1}"
}
__info() {
	echo "${@:1}"
}

__set_output() {
	echo "::set-output name=$1::${@:2}";
}