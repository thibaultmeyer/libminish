# Checks if given string represent an integer.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] String to check
#
# Example:
#
#   minish_number_isinteger "42"
function minish_number_isinteger() {

    [[ "${1}" =~ ^-{0,1}[0-9]+$ ]]
}


# Checks if given string represent a number.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] String to check
#
# Example:
#
#   minish_number_isnumber "42"
#   minish_number_isnumber "1337.45"
function minish_number_isnumber() {

    [[ "${1}" =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]
}


# Checks if given number is positive.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Number to check
#
# Example:
#
#   minish_number_ispositive 42
#   minish_number_ispositive 42.45
function minish_number_ispositive() {

    [[ "${#1}" -gt 0 ]] && [[ "${1:0:1}" != "-" ]]
}
