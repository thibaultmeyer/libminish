#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_lowercase() no arguments" {
    run minish_string_lowercase

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_lowercase() single character" {
    run minish_string_lowercase "A"

    [ "$status" -eq 0 ]
    [ "$output" == "a" ]
}

@test "minish_string_lowercase() sentence" {
    run minish_string_lowercase "HELLO WORLD"

    [ "$status" -eq 0 ]
    [ "$output" == "hello world" ]
}
