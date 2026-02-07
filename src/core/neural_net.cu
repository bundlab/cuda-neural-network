#include <cuda_runtime.h>
#include <iostream>
#include "cuda_nn/neural_net.h"

__global__ void relu(float* x, int n) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < n) x[i] = x[i] > 0 ? x[i] : 0;
}

__global__ void matmul(float* A, float* B, float* C,
                       int M, int N, int K) {
    int row = blockIdx.y * blockDim.y + threadIdx.y;
    int col = blockIdx.x * blockDim.x + threadIdx.x;

    if (row < M && col < K) {
        float sum = 0;
        for (int i = 0; i < N; i++)
            sum += A[row * N + i] * B[i * K + col];
        C[row * K + col] = sum;
    }
}

NeuralNet::NeuralNet(int input, int hidden, int output)
    : in(input), hid(hidden), out(output) {

    cudaMalloc(&W1, in * hid * sizeof(float));
    cudaMalloc(&b1, hid * sizeof(float));
    cudaMalloc(&W2, hid * out * sizeof(float));
    cudaMalloc(&b2, out * sizeof(float));
}

NeuralNet::~NeuralNet() {
    cudaFree(W1);
    cudaFree(b1);
    cudaFree(W2);
    cudaFree(b2);
}

void NeuralNet::predict(float* x, float* out_cpu) {
    float *d_x, *h_out, *o_out;

    cudaMalloc(&d_x, in * sizeof(float));
    cudaMalloc(&h_out, hid * sizeof(float));
    cudaMalloc(&o_out, out * sizeof(float));

    cudaMemcpy(d_x, x, in * sizeof(float), cudaMemcpyHostToDevice);

    dim3 threads(16, 16);
    dim3 blocks((hid + 15) / 16, 1);

    matmul<<<blocks, threads>>>(d_x, W1, h_out, 1, in, hid);
    relu<<<(hid + 255) / 256, 256>>>(h_out, hid);
    matmul<<<blocks, threads>>>(h_out, W2, o_out, 1, hid, out);

    cudaMemcpy(out_cpu, o_out, out * sizeof(float), cudaMemcpyDeviceToHost);

    cudaFree(d_x);
    cudaFree(h_out);
    cudaFree(o_out);
}

void NeuralNet::train(float*, float*, int, float, int) {
    std::cout << "Training kernel placeholder (extendable)" << std::endl;
}
