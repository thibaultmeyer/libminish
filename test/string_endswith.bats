#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_endswith() no arguments" {
    run minish_string_endswith

    [ "$status" -eq 0 ]
    [ "$output" == "1" ]
}

@test "minish_string_endswith() ends with empty" {
    run minish_string_endswith "hello world"

    [ "$status" -eq 0 ]
    [ "$output" == "1" ]
}

@test "minish_string_endswith() matching content" {
    run minish_string_endswith "hello world" "world"

    [ "$status" -eq 0 ]
    [ "$output" == "1" ]
}

@test "minish_string_endswith() no matching content" {
    run minish_string_endswith "hello world" "hello"

    [ "$status" -eq 0 ]
    [ "$output" == "0" ]
}
