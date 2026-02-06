cmake_minimum_required(VERSION 3.18)

project(cuda_neural_net LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

# Try enabling CUDA if available
include(CheckLanguage)
check_language(CUDA)

if(CMAKE_CUDA_COMPILER)
    enable_language(CUDA)
    message(STATUS "CUDA found: Building with GPU support")

    add_executable(cuda_nn
        src/main.cpp
        src/neural_net.cu
    )

    set_target_properties(cuda_nn PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON
    )

else()
    message(WARNING "CUDA toolkit not found. Building skipped in CI.")
endif()

