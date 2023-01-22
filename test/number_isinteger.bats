#!/usr/bin/env bats

load ../lib/libminish_number


@test "minish_number_isinteger() no arguments" {
    run minish_number_isinteger

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_number_isinteger() not a number" {
    run minish_number_isinteger "hello"

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_number_isinteger() positive integer" {
    run minish_number_isinteger "1337"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_number_isinteger() negative integer" {
    run minish_number_isinteger "-42"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}
