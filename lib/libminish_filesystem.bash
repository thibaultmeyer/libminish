# Checks that the given path refers to a block device.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   minish_fs_isblockdevice "/dev/tty0"
function minish_fs_isblockdevice() {

    if [[ -b "${1}" ]]; then
        echo "1"
    else
        echo "0"
    fi
}


# Checks that the given path refers to a character device.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   minish_fs_ischaracterdevice "/dev/tty0"
function minish_fs_ischaracterdevice() {

    if [[ -c "${1}" ]]; then
        echo "1"
    else
        echo "0"
    fi
}


# Checks that the given path refers to a directory.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   minish_fs_isdirectory "/tmp"
function minish_fs_isdirectory() {

    if [[ -d "${1}" ]]; then
        echo "1"
    else
        echo "0"
    fi
}


# Checks that the given path refers to a non empty file.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   minish_fs_isnotemptyfile "/tmp/file"
function minish_fs_isnotemptyfile() {

    if [[ -s "${1}" ]]; then
        echo "1"
    else
        echo "0"
    fi
}


# Checks that the given path refers to an existing file or directory.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   minish_fs_isexist "/tmp"
#   minish_fs_isexist "/tmp/file"
function minish_fs_isexist() {

    if [[ -e "${1}" ]]; then
        echo "1"
    else
        echo "0"
    fi
}


# Checks that the given path refers to a regular file.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   minish_fs_isfile "/tmp/file"
function minish_fs_isfile() {

    if [[ -f "${1}" ]]; then
        echo "1"
    else
        echo "0"
    fi
}


# Checks that the given path refers to a pipe.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   minish_fs_ispipe "/tmp/pipe"
function minish_fs_ispipe() {

    if [[ -p "${1}" ]]; then
        echo "1"
    else
        echo "0"
    fi
}


# Checks that the given path refers to a symbolic link.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   minish_fs_issymboliclink "/tmp/examplesymlink"
function minish_fs_issymboliclink() {

    if [[ -h "${1}" ]]; then
        echo "1"
    else
        echo "0"
    fi
}


# Checks that the given path refers to a socket.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   minish_fs_issocket "/tmp/nginx.socket"
function minish_fs_issocket() {

    if [[ -S "${1}" ]]; then
        echo "1"
    else
        echo "0"
    fi
}
