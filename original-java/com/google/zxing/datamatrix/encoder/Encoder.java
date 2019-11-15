package com.google.zxing.datamatrix.encoder;

interface Encoder {
    void encode(EncoderContext encoderContext);

    int getEncodingMode();
}
