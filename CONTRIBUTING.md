# Contributing to CUDA Neural Network

First off, thank you for considering contributing to **CUDA Neural Network**! 🚀

Whether you're fixing a bug, improving documentation, optimizing CUDA kernels, or proposing a new feature, your contributions are greatly appreciated.

This document provides guidelines to help make the contribution process smooth and consistent for everyone.

---

# Table of Contents

* [Code of Conduct](#code-of-conduct)
* [Ways to Contribute](#ways-to-contribute)
* [Getting Started](#getting-started)
* [Development Setup](#development-setup)
* [Project Structure](#project-structure)
* [Coding Standards](#coding-standards)
* [Submitting Changes](#submitting-changes)
* [Commit Message Guidelines](#commit-message-guidelines)
* [Pull Request Guidelines](#pull-request-guidelines)
* [Reporting Issues](#reporting-issues)
* [Feature Requests](#feature-requests)
* [Documentation Contributions](#documentation-contributions)
* [Testing](#testing)
* [Community Guidelines](#community-guidelines)
* [License](#license)

---

# Code of Conduct

By participating in this project, you agree to:

* Be respectful and welcoming.
* Provide constructive feedback.
* Collaborate professionally.
* Respect different ideas and approaches.
* Help create a positive open-source community.

Harassment, discrimination, or abusive behavior will not be tolerated.

---

# Ways to Contribute

There are many ways to contribute:

* 🐛 Fix bugs
* 🚀 Improve CUDA performance
* 🧠 Implement new neural network layers
* 📚 Improve documentation
* 🧪 Add unit tests
* ⚡ Optimize CUDA kernels
* 🛠 Improve the build system
* 📈 Benchmark performance
* 💡 Suggest new ideas
* 🔒 Improve code quality and maintainability

Every contribution matters.

---

# Getting Started

## 1. Fork the Repository

Fork this repository to your GitHub account.

## 2. Clone Your Fork

```bash
git clone https://github.com/bundlab/cuda-neural-network.git
cd cuda-neural-network
```

## 3. Add the Upstream Repository

```bash
git remote add upstream https://github.com/bundlab/cuda-neural-network.git
```

Verify your remotes:

```bash
git remote -v
```

---

# Development Setup

## Requirements

* C++17 compatible compiler
* NVIDIA CUDA Toolkit
* CMake 3.18 or newer
* Git
* Docker (optional)

Verify CUDA installation:

```bash
nvcc --version
```

Build the project:

```bash
mkdir build
cd build
cmake ..
make
```

Run:

```bash
./cuda_nn
```

---

# Project Structure

```
cuda-neural-network/

.github/
cmake/
docs/
include/
src/
tests/
scripts/

CMakeLists.txt
README.md
LICENSE
CONTRIBUTING.md
Dockerfile
```

Please place new files in the appropriate directory to keep the project organized.

---

# Coding Standards

Please follow these guidelines:

## General

* Use modern C++17.
* Write readable, maintainable code.
* Keep functions focused on a single responsibility.
* Avoid duplicated code.
* Prefer descriptive names.

## Formatting

Use the project's formatting configuration:

```bash
clang-format -i src/**/*.cpp
clang-format -i src/**/*.cu
clang-format -i include/**/*.h
```

## Naming

### Classes

```cpp
class NeuralNetwork
```

### Functions

```cpp
trainNetwork()
```

### Variables

```cpp
learningRate
hiddenLayer
```

### Constants

```cpp
constexpr int BLOCK_SIZE = 256;
```

---

# Submitting Changes

Create a new branch before making changes.

```bash
git checkout -b feature/your-feature-name
```

Examples:

```
feature/add-softmax
feature/mnist-training
fix/kernel-memory-leak
docs/update-readme
```

After making changes:

```bash
git add .
git commit -m "feat: add softmax activation"
git push origin feature/your-feature-name
```

Then open a Pull Request.

---

# Commit Message Guidelines

Follow a consistent commit style.

Examples:

```
feat: add convolution layer

fix: resolve CUDA memory leak

docs: improve installation guide

refactor: simplify training pipeline

test: add forward propagation tests

ci: update GitHub Actions workflow

build: improve CMake configuration
```

Keep commit messages concise and descriptive.

---

# Pull Request Guidelines

Before opening a Pull Request, ensure that:

* The project builds successfully.
* New code follows the existing style.
* Documentation is updated when necessary.
* Changes are focused on a single topic.
* Unrelated files are not modified.

In your Pull Request description, include:

* Summary of the change
* Motivation
* Testing performed
* Screenshots (if applicable)
* Related issue numbers

Small, focused pull requests are easier to review.

---

# Reporting Issues

If you encounter a bug, please include:

* Operating system
* Compiler version
* CUDA Toolkit version
* GPU model (if relevant)
* CMake version
* Steps to reproduce
* Expected behavior
* Actual behavior
* Error messages or logs

Providing clear information helps us reproduce and resolve issues more efficiently.

---

# Feature Requests

Feature ideas are welcome.

When suggesting a feature, please explain:

* The problem you're trying to solve.
* Your proposed solution.
* Why it would benefit the project.
* Possible implementation details (optional).

---

# Documentation Contributions

Documentation improvements are always appreciated.

You can help by:

* Fixing typos
* Improving explanations
* Adding diagrams
* Updating examples
* Expanding tutorials
* Clarifying setup instructions

Clear documentation benefits every contributor.

---

# Testing

Before submitting your changes:

Build the project:

```bash
mkdir -p build
cd build
cmake ..
make
```

Run the executable:

```bash
./cuda_nn
```

If you add new functionality, include or update tests whenever practical.

---

# Community Guidelines

We value:

* Respect
* Collaboration
* Constructive discussion
* Learning
* Continuous improvement

Everyone is encouraged to participate regardless of experience level.

---

# License

By contributing to this repository, you agree that your contributions will be licensed under the same license as this project.

Thank you for helping improve **CUDA Neural Network**.

Happy coding! 🚀
