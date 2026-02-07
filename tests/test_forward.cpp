#include <iostream>
#include "cuda_nn/neural_net.h"

int main() {
    NeuralNet nn(2, 4, 1);

    float x[2] = {1, 0};
    float out[1];

    nn.predict(x, out);

    std::cout << "Test Forward Output: " << out[0] << std::endl;
    return 0;
}
