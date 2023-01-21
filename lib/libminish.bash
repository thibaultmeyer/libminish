LIBMINISH_DIRECTORY="$(dirname "${BASH_SOURCE[0]}")"
declare -r LIBMINISH_DIRECTORY

for script_fullpath in "${LIBMINISH_DIRECTORY}"/*.bash; do

    __minish_lib_filename="$(basename "${script_fullpath}")"
    [[ "${__minish_lib_filename}" != "libminish.bash" ]] || continue

    # shellcheck disable=SC1090
    source "${LIBMINISH_DIRECTORY}/${__minish_lib_filename}"
    unset __minish_lib_filename
done
