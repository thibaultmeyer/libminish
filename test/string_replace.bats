#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_replace() no arguments" {
    run minish_string_replace

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_replace() matching content" {
    run minish_string_replace "hello world" "world" "universe"

    [ "$status" -eq 0 ]
    [ "$output" == "hello universe" ]
}

@test "minish_string_replace() multiple matching content" {
    run minish_string_replace "a A A a" "a" "B"

    [ "$status" -eq 0 ]
    [ "$output" == "B A A B" ]
}

@test "minish_string_replace() no matching content" {
    run minish_string_replace "hello world" "nothing" "universe"

    [ "$status" -eq 0 ]
    [ "$output" == "hello world" ]
}
