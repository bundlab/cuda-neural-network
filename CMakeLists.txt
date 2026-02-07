cmake_minimum_required(VERSION 3.18)

project(cuda_neural_net LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

# Include headers
include_directories(include)

# Check for CUDA
include(CheckLanguage)
check_language(CUDA)

if(CMAKE_CUDA_COMPILER)
    enable_language(CUDA)
    message(STATUS "CUDA Found: GPU Build Enabled")

    add_executable(cuda_nn
        src/main.cpp
        src/core/neural_net.cu
    )

    set_target_properties(cuda_nn PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)

else()
    message(WARNING "CUDA Toolkit not found. Skipping CUDA build.")
endif()

