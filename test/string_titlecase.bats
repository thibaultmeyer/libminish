#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_titlecase() no arguments" {
    run minish_string_titlecase

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_titlecase() single character" {
    run minish_string_titlecase "a"

    [ "$status" -eq 0 ]
    [ "$output" == "A" ]
}

@test "minish_string_titlecase() single word" {
    run minish_string_titlecase "hello"

    [ "$status" -eq 0 ]
    [ "$output" == "Hello" ]
}

@test "minish_string_titlecase() sentence" {
    run minish_string_titlecase "hello world"

    [ "$status" -eq 0 ]
    [ "$output" == "Hello World" ]
}
