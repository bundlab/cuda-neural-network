#include <iostream>
#include "neural_net.h"

int main() {
    NeuralNet nn(2, 4, 1);

    float input[2] = {1.0f, 0.0f};
    float output[1];

    nn.predict(input, output);

    std::cout << "Prediction: " << output[0] << std::endl;
    return 0;
}
