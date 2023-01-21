#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_ltrim() no arguments" {
    run minish_string_ltrim

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_ltrim() no space to remove" {
    run minish_string_ltrim "Hello    "

    [ "$status" -eq 0 ]
    [ "$output" == "Hello    " ]
}

@test "minish_string_ltrim() space to remove" {
    run minish_string_ltrim "    Hello    "

    [ "$status" -eq 0 ]
    [ "$output" == "Hello    " ]
}
