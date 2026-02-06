#!/bin/bash

echo "🚀 Building CUDA Neural Network Docker Image..."
docker build -t cuda-neural-network .

echo "✅ Running container with GPU support..."
docker run --rm --gpus all cuda-neural-network
