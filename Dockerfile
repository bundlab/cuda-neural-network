# ==========================================
# CUDA Neural Network Docker Environment
# ==========================================

FROM nvidia/cuda:12.3.1-devel-ubuntu22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    make \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project into container
COPY . .

# Build project
RUN mkdir -p build && cd build && cmake .. && make

# Default command: run executable
CMD ["./build/cuda_nn"]
