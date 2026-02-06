# Neural Network Architecture (CUDA)

This project implements a GPU-accelerated neural network using CUDA kernels.

---

## Model Layout

Input Layer → Hidden Dense Layer → ReLU → Output Layer

---

## CUDA Kernels Included

- Matrix Multiplication (`matmul`)
- Activation (`relu`)
- Gradient Computation (`relu_grad`)
- Loss Gradient (`mse_grad`)
- SGD Weight Updates (`sgd`)

---

## Training Pipeline

1. Forward propagation on GPU
2. Compute loss gradient
3. Backpropagate gradients
4. Update weights using SGD
