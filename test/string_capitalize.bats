#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_capitalize() no arguments" {
    run minish_string_capitalize

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_capitalize() single character" {
    run minish_string_capitalize "a"

    [ "$status" -eq 0 ]
    [ "$output" == "A" ]
}

@test "minish_string_capitalize() sentence" {
    run minish_string_capitalize "HELLO WORLD"

    [ "$status" -eq 0 ]
    [ "$output" == "Hello World" ]
}
