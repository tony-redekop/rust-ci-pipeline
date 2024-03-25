#! /bin/bash

# Script is used for building and testing on a local machine and using a CI/CD platform 

cargo build --verbose             # builds (we keep this here 
cargo test --verbose              # builds and tests
cargo tarpaulin --ignore-tests    # code coverage
cargo clippy -- -D warnings
cargo fmt -- --check  
cargo audit