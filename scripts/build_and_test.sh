#! /bin/bash

# Script is used for building and testing in  local environments
# and on VMs/containers/runners provided by CI/CD platform, decoupling 
# the CI pipeline from the CI/CD platform. 
# This ensure congruence in the CI sequence between local and test 
# environments and makes it easier to migrate to a different CI/CD platform.

cargo build --verbose             # `cargo build` used here to be explicit & for separate reporting
cargo test --verbose              # `cargo test` builds project and runs unit / integration tests
cargo tarpaulin --ignore-tests    # code coverage
cargo clippy -- -D warnings
cargo fmt -- --check  
cargo audit
