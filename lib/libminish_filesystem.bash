# Checks that the given path refers to a block device.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   if minish_fs_isblockdevice "/dev/tty0"; then
#       echo "BLOCK DEVICE"
#   fi
function minish_fs_isblockdevice() {

    [[ -b "${1}" ]]
}


# Checks that the given path refers to a character device.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   if minish_fs_ischaracterdevice "/dev/tty0"; then
#       echo "CHARACTER DEVICE"
#   fi
function minish_fs_ischaracterdevice() {

    [[ -c "${1}" ]]
}


# Checks that the given path refers to a directory.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   if minish_fs_isdirectory "/tmp"; then
#       echo "DIR"
#   fi
function minish_fs_isdirectory() {

    [[ -d "${1}" ]]
}


# Checks that the given path refers to a non empty file.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   if minish_fs_isnotemptyfile "/tmp/file"; then
#       echo "NOT EMPTY"
#   fi
function minish_fs_isnotemptyfile() {

    [[ -s "${1}" ]]
}


# Checks that the given path refers to an existing file or directory.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   if minish_fs_isexist "/tmp"; then
#       echo "DIR EXISTS"
#   fi
#
#   if minish_fs_isexist "/tmp/file"; then
#       echo "FILE EXISTS"
#   fi
function minish_fs_isexist() {

    [[ -e "${1}" ]]
}


# Checks that the given path refers to a regular file.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   if minish_fs_isfile "/tmp/file"; then
#       echo "FILE"
#   fi
function minish_fs_isfile() {

    [[ -f "${1}" ]]
}


# Checks that the given path refers to a pipe.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   if minish_fs_ispipe "/tmp/pipe"; then
#       echo "PIPE"
#   fi
function minish_fs_ispipe() {

    [[ -p "${1}" ]]
}


# Checks that the given path refers to a symbolic link.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   if minish_fs_issymboliclink "/tmp/examplesymlink"; then
#       echo "SYM. LINK"
#   fi
function minish_fs_issymboliclink() {

    [[ -h "${1}" ]]
}


# Checks that the given path refers to a socket.
#
# Arguments:
#
#   $1 - [IN][REQUIRED] Path to test
#
# Example:
#
#   if minish_fs_issocket "/tmp/nginx.socket"; then
#       echo "SOCKET"
#   fi
function minish_fs_issocket() {

    [[ -S "${1}" ]]
}
