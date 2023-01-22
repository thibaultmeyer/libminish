#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_isblank() no arguments" {
    run minish_string_isblank

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_isblank() empty explicit arguments" {
    run minish_string_isblank ""

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_isblank() string with whitespaces" {
    run minish_string_isblank "    "

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_isblank() not empty string" {
    run minish_string_isblank "hello world"

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_string_isblank() not empty string with leading and trailing whitespaces" {
    run minish_string_isblank "   hello world   "

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}
