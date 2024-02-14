# based on https://github.com/alpinelinux/aports/blob/master/.travis/common.sh

readonly BUILDER_ROOT="$HOME/builder"

# Prints formatted and colored text.
print() {
	local style=0
	local fcolor=9

	local opt; while getopts 's:c:' opt; do
		case "$opt" in
			s) style="$OPTARG";;
			c) fcolor="$OPTARG";;
		esac
	done

	shift $(( OPTIND - 1 ))
	local text="$@"

	printf "\033[${style};3${fcolor}m$text\033[0m"
}

title() {
	printf '\n'
	print -s1 -c6 "==> $@\n"
}

die() {
	printf "\n::error::$@\n" 1>&2
	exit 1
}

# Marks start of named folding section for Travis and prints title.
fold_start() {
	local name="$1"
	local title="$2"

	printf "\n::group::$title \n"
}

# Marks end of the named folding section.
fold_end() {
	local name="$1"

	printf "::endgroup::\n"
}