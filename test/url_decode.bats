#!/usr/bin/env bats

load ../lib/libminish_url


@test "minish_url_decode() no arguments" {
    run minish_url_decode

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_url_decode() query string" {
    run minish_url_decode "u%3Djohanna%26p%3Dpassword%26s%3Dhello%20world"

    [ "$status" -eq 0 ]
    [ "$output" == "u=johanna&p=password&s=hello world" ]
}

@test "minish_url_decode() special characters" {
    run minish_url_decode "%C3%A0%C3%A4%C3%A9%C3%A8%C3%AA%C3%AB%C3%AE%C3%AF%C3%A7"

    [ "$status" -eq 0 ]
    [ "$output" == "àäéèêëîïç" ]
}
