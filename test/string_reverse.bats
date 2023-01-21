#!/usr/bin/env bats

load ../lib/libminish_string


@test "minish_string_reverse() no arguments" {
    run minish_string_reverse

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_string_reverse() single word" {
    run minish_string_reverse "hello"

    [ "$status" -eq 0 ]
    [ "$output" == "olleh" ]
}

@test "minish_string_reverse() single character" {
    run minish_string_reverse "a"

    [ "$status" -eq 0 ]
    [ "$output" == "a" ]
}

@test "minish_string_reverse() sentence" {
    run minish_string_reverse "good morning everyone"

    [ "$status" -eq 0 ]
    [ "$output" == "enoyreve gninrom doog" ]
}
