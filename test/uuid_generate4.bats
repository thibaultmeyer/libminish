#!/usr/bin/env bats

load ../lib/libminish_uuid


@test "minish_uuid_generate4()" {
    run minish_uuid_generate4

    [ "$status" -eq 0 ]
    [[ "$output" =~ ^\{?[a-z0-9]{8}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{4}-[a-z0-9]{12}\}?$ ]]
}
