#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_indexof() no arguments" {
    run minish_string_indexof

    [ "$status" -eq 0 ]
    [ "$output" == "0" ]
}

@test "minish_string_indexof() no substring or character to search" {
    run minish_string_indexof "hello world"

    [ "$status" -eq 0 ]
    [ "$output" == "0" ]
}

@test "minish_string_indexof() first parameter is empty, second is provided" {
    run minish_string_indexof "" "need"

    [ "$status" -eq 0 ]
    [ "$output" == "-1" ]
}

@test "minish_string_indexof() no matching" {
    run minish_string_indexof "hello world" "bye"

    [ "$status" -eq 0 ]
    [ "$output" == "-1" ]
}

@test "minish_string_indexof() matching string" {
    run minish_string_indexof "hello world" "wor"

    [ "$status" -eq 0 ]
    [ "$output" == "6" ]
}

@test "minish_string_indexof() matching character" {
    run minish_string_indexof "hello world" "l"

    [ "$status" -eq 0 ]
    [ "$output" == "2" ]
}

@test "minish_string_indexof() matching character (first position)" {
    run minish_string_indexof "hello world" "h"

    [ "$status" -eq 0 ]
    [ "$output" == "0" ]
}
