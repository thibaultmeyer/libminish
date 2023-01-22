#!/usr/bin/env bats

load ../lib/libminish_uuid


@test "minish_uuid_isvalid() no arguments" {
    run minish_uuid_isvalid

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_uuid_isvalid() invalid size" {
    run minish_uuid_isvalid "6939131b-776d-4a36"

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_uuid_isvalid() invalid data" {
    run minish_uuid_isvalid "This is not a valid UUID"

    [ "$status" -eq 1 ]
    [ "$output" == "" ]
}

@test "minish_uuid_isvalid() valid UUID (lowercase)" {
    run minish_uuid_isvalid "6939131b-776d-4a36-a89d-a5e834786e72"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}

@test "minish_uuid_isvalid() valid UUID (uppercase)" {
    run minish_uuid_isvalid "E5388422-881C-404F-B3E4-12D6E7226987"

    [ "$status" -eq 0 ]
    [ "$output" == "" ]
}
