package com.mi.milinkforgame.sdk.util.compress;

public interface ICompression {
    byte[] compress(byte[] bArr);

    byte[] decompress(byte[] bArr);
}
