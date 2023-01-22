#!/usr/bin/env bats

load ../lib/libminish_number


@test "minish_number_ispositive() no arguments" {
    run minish_number_ispositive

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_number_ispositive() positive integer" {
    run minish_number_ispositive 1337

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_number_ispositive() negative integer" {
    run minish_number_ispositive -42

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_number_ispositive() positive float" {
    run minish_number_ispositive 45.365

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_number_ispositive() negative float" {
    run minish_number_ispositive -85.175

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}
