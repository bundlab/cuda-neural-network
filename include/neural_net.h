#pragma once

class NeuralNet {
public:
    NeuralNet(int input, int hidden, int output);
    ~NeuralNet();

    void train(float* x, float* y, int samples, float lr, int epochs);
    void predict(float* x, float* out);

private:
    int in, hid, out;

    float *W1, *b1;
    float *W2, *b2;
};
