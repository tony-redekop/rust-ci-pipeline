rust-ci-pipeline

Minimal continuous integration (CI) pipeline for Rust

- Implemented as a shell script located in the `scripts/` directory of the repo and a `.yml` workflow for for the CI/CD platform (GitHub Actions)
- Decouples build and test steps of the pipeline from GitHub Actions to facilitate migrations to a different CI/CD platform
- Maintains build and test congruence between local environments and VM/container environments where the workflow is executed

References

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- Zero to Production in Rust by Luca Palmieri.
