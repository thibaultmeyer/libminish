#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_rtrim() no arguments" {
    run minish_string_rtrim

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_rtrim() no space to remove" {
    run minish_string_rtrim "    Hello"

    [ "$status" -eq 0 ]
    [ "$output" == "    Hello" ]
}

@test "minish_string_rtrim() space to remove" {
    run minish_string_rtrim "    Hello    "

    [ "$status" -eq 0 ]
    [ "$output" == "    Hello" ]
}
