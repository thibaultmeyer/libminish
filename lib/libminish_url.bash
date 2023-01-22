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
