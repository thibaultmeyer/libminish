#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_substr() no arguments" {
    run minish_string_substr

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_substr() no position nor length argument" {
    run minish_string_substr "hello world"

    [ "$status" -eq 0 ]
    [ "$output" == "hello world" ]
}

@test "minish_string_substr() no length argument" {
    run minish_string_substr "hello world" 6

    [ "$status" -eq 0 ]
    [ "$output" == "world" ]
}

@test "minish_string_substr() position and length argument" {
    run minish_string_substr "hello world" 0 5

    [ "$status" -eq 0 ]
    [ "$output" == "hello" ]
}
