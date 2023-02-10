#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_startswith() no arguments" {
    run minish_string_startswith

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_startswith() starts with empty" {
    run minish_string_startswith "hello world"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_startswith() matching content" {
    run minish_string_startswith "hello world" "hello"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_startswith() no matching content" {
    run minish_string_startswith "hello world" "world"

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}
