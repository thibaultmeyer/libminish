# Decodes a URL-encoded string.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] URL-encoded string
#
# Example:
#
#   minish_url_decode "u%3Djohanna%26p%3Dpassword%26s%3Dhello%20world"
function minish_url_decode() {

    echo -e "${1//%/\\x}"
}


# URL-encodes a string.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] String to URL-encode
#
# Example:
#
#   minish_url_encode "var=hello world"
function minish_url_encode() {

    local -r length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:$i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) printf '%s' "$c" ;;
            *) printf '%%%02X' "'$c" ;;
        esac
    done
}
