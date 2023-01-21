#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_length() no arguments" {
    run minish_string_length

    [ "$status" -eq 0 ]
    [ "$output" == "0" ]
}

@test "minish_string_length() single character" {
    run minish_string_length "A"

    [ "$status" -eq 0 ]
    [ "$output" == "1" ]
}

@test "minish_string_length() single word" {
    run minish_string_length "Hello"

    [ "$status" -eq 0 ]
    [ "$output" == "5" ]
}

@test "minish_string_length() sentence" {
    run minish_string_length "Good evening!"

    [ "$status" -eq 0 ]
    [ "$output" == "13" ]
}
