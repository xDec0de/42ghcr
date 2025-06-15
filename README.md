# 42ghcr ![Docker Image CI](https://github.com/xdec0de/42ghcr/actions/workflows/publish.yml/badge.svg)

Custom Docker image for development and validation environments in 42 projects.

## Description

This Docker image is based on Ubuntu 22.04 and includes essential tools for compiling, testing,
and validating projects for the 42 cursus, such as:

- Build tools (`build-essential`, `make`, `gcc`, `g++`)
- [Valgrind](https://valgrind.org) for memory analysis
- Development libraries (`libreadline-dev`)
- Python 3 and pip
- [Norminette](https://github.com/42School/norminette)
- Git
- [lcov](https://github.com/linux-test-project/lcov) for code coverage

The goal is to provide a consistent, fast, and ready to use environment for CI/CD workflows. In
my case, I went from 1m 40s of workflow run time, to just about 25s.

## Usage

You can use this image as a base in your GitHub Actions workflows with:

```yaml
container:
  image: ghcr.io/xdec0de/42ghcr:main
```

Here is a basic workflow that just runs `make` for your project.

```yaml
name: Make project
on:
  push:
    branches: [ "master" ]
  pull_request:
    branches: [ "master" ]
jobs:
  make:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/xdec0de/42ghcr:main
    steps:
      - uses: actions/checkout@v4
      - name: Make project
        run: make
```

If you want to see a real example, my minishell project uses this image
[here](https://github.com/xDec0de/42minishell/blob/master/.github/workflows/validate.yml).
