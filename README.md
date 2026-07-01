# 🚀 CUDA Neural Network in C++

![Build](https://github.com/YOUR_USERNAME/cuda-neural-network/actions/workflows/cuda-build.yml/badge.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Version](https://img.shields.io/badge/version-v1.0.0-blue.svg)

A fully GPU-powered neural network built from scratch using **C++ + CUDA**.

# 🚀 CUDA Neural Network in C++ (GPU Accelerated)

A fully GPU-powered **Neural Network implemented from scratch in C++ + CUDA**, including:

- Forward propagation on GPU
- Backpropagation on GPU
- ReLU activation + gradients
- Mean Squared Error (MSE) loss
- Stochastic Gradient Descent (SGD) updates

This project is a strong foundation for building custom deep learning frameworks and high-performance AI systems without relying on external libraries like PyTorch or TensorFlow.

---

## 📌 Project Overview

This repository demonstrates how neural networks can be trained directly on an NVIDIA GPU using CUDA kernels.

It is designed for:

- Learning CUDA-based deep learning fundamentals
- Building custom AI frameworks in C++
- Research and experimentation with GPU computing
- Extending into multi-layer and optimized networks

---

## ✨ Features
```text
✅ Fully Connected Dense Layer
✅ GPU Matrix Multiplication Kernels
✅ ReLU Activation + Derivative
✅ Full Backpropagation Support
✅ Weight Updates using SGD
✅ Modular Design (Extendable for deeper models)
```
---

## 📂 Project Structure

```text
cuda-neural-network/
├── CMakeLists.txt
├── README.md
├── .gitignore
├── include/
│ └── neural_net.h
├── src/
│ ├── neural_net.cu
│ └── main.cpp
└── build/ (generated after compilation)
```
---

## 🐳 Run with Docker (GPU Supported)

This project supports Docker for reproducible CUDA builds.

---

## GitHub Actions CI Note

GitHub-hosted runners do not include the CUDA toolkit (`nvcc`).
Therefore, CUDA compilation is skipped automatically in CI.

To build the project locally, install the NVIDIA CUDA Toolkit.

---

## ⚙️ Requirements

To build and run this project, you need:

- Docker installed
- NVIDIA GPU Drivers installed
- NVIDIA Container Toolkit installed
- NVIDIA GPU with CUDA support
- CUDA Toolkit installed
- CMake ≥ 3.18
- g++ compiler (Linux recommended)

---

## 🚀 Future Improvements

This project is designed to be extendable. Planned upgrades include:

- Multi-layer deep networks
- Softmax + Cross Entropy Loss
- MNIST Training Example
- cuBLAS Optimization (10× faster)
- CNN Layers (Convolutions)
- Model Saving & Loading

---

## 🤝 Contributing
Contributions are welcome!

If you would like to improve performance or add new features:

- Fork this repository
- Create a new branch
- Commit your changes
- Open a Pull Request

---

## 📜 License
This project is licensed under the MIT License.

You are free to use, modify, and distribute it for educational and research purposes.

---

## 👨‍💻 Author
Developed by bundlab
GPU Computing + Neural Networks in Modern C++

### Build Docker Image
```bash
docker build -t cuda-neural-network .
```

⭐ If you like this project, give it a star on GitHub!

