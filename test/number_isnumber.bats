#!/usr/bin/env bats

load ../lib/libminish_number


@test "minish_number_isnumber() no arguments" {
    run minish_number_isnumber

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_number_isnumber() not a number" {
    run minish_number_isnumber "hello"

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_number_isnumber() positive integer" {
    run minish_number_isnumber "1337"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_number_isnumber() negative integer" {
    run minish_number_isnumber "-42"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_number_isnumber() positive float" {
    run minish_number_isnumber "45.365"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_number_isnumber() negative float" {
    run minish_number_isnumber "-85.175"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}
