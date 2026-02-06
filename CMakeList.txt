cmake_minimum_required(VERSION 3.18)
project(cuda_neural_net LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 17)

include_directories(include)

add_executable(cuda_nn
    src/main.cpp
    src/neural_net.cu
)

set_target_properties(cuda_nn PROPERTIES
    CUDA_SEPARABLE_COMPILATION ON
)
