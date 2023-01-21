#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_uppercase() no arguments" {
    run minish_string_uppercase

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_uppercase() single character" {
    run minish_string_uppercase "a"

    [ "$status" -eq 0 ]
    [ "$output" == "A" ]
}

@test "minish_string_uppercase() single word" {
    run minish_string_uppercase "hello"

    [ "$status" -eq 0 ]
    [ "$output" == "HELLO" ]
}

@test "minish_string_uppercase() sentence" {
    run minish_string_uppercase "hello world"

    [ "$status" -eq 0 ]
    [ "$output" == "HELLO WORLD" ]
}
