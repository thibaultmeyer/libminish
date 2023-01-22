# Generates a pseudo random generated UUID (aka UUID v4).
#
# Example:
#
#   minish_uuid_generate4
function minish_uuid_generate4() {

    local -r minish_uuid_characters="abcdef0123456789";
    local minish_uuid_tmp="";

    for (( idx = 0; idx < 36; idx++ )); do
        if [[ ${idx} == 8 || ${idx} == 13 || ${idx} == 18 || ${idx} == 23 ]]; then
            minish_uuid_tmp="${minish_uuid_tmp}-"
        else
            minish_uuid_tmp="${minish_uuid_tmp}${minish_uuid_characters:${RANDOM} % 16:1}"
        fi
    done

    echo "${minish_uuid_tmp}"
}


# Checks if it is a valid UUID.
#
# Example:
#
#   if minish_uuid_isvalid "f49dae94-b841-4bfb-b18a-e59534579e69"; then
#       echo "OK"
#   fi
function minish_uuid_isvalid() {

    if [[ ${#1} != 36 ]]; then
        return 1
    fi

    local -r minish_uuid_characters="abcdefABCDEF0123456789";
    for (( idx = 0; idx < 36; idx++ )); do
        if [[ (${idx} == 8 || ${idx} == 13 || ${idx} == 18 || ${idx} == 23) ]]; then
            if [[ "${1:${idx}:1}" != "-" ]]; then
                return 1
            else
                continue
            fi
        elif [[ "${minish_uuid_characters}" != *"${1:${idx}:1}"* ]]; then
            return 1
        fi
    done

    return 0
}
