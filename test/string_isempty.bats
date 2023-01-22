#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_isempty() no arguments" {
    run minish_string_isempty

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_isempty() empty explicit arguments" {
    run minish_string_isempty ""

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}


@test "minish_string_isempty() not empty string" {
    run minish_string_isempty "hello world"

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_string_isempty() string with whitespaces" {
    run minish_string_isempty "       "

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}
