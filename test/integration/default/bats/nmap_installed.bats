#!/usr/bin/env bats

@test "nmap binary is found in PATH" {
    run which nmap
    [ "$status" -eq 0 ]
}
