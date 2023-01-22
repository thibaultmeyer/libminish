#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_trim() no arguments" {
    run minish_string_trim

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_trim() no space to remove" {
    run minish_string_trim "Hello"

    [ "$status" -eq 0 ]
    [ "$output" == "Hello" ]
}

@test "minish_string_trim() space to remove" {
    run minish_string_trim "    Hello    "

    [ "$status" -eq 0 ]
    [ "$output" == "Hello" ]
}

@test "minish_string_trim() only contains whitespaces" {
    run minish_string_trim "     "

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}
