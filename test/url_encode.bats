#!/usr/bin/env bats

load ../lib/libminish_url


@test "minish_url_encode() no arguments" {
    run minish_url_encode

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_url_encode() query string" {
    run minish_url_encode "u=johanna&p=password&s=hello world"

    [ "$status" -eq 0 ]
    [ "$output" == "u%3Djohanna%26p%3Dpassword%26s%3Dhello%20world" ]
}

@test "minish_url_encode() special characters" {
    run minish_url_encode "àäéèêëîïç"

    [ "$status" -eq 0 ]
    [ "$output" == "%E0%E4%E9%E8%EA%EB%EE%EF%E7" ]
}
