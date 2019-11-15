package com.mi.milinkforgame.sdk.util.compress;

public class NoCompression implements ICompression {
    public byte[] compress(byte[] bArr) {
        return bArr;
    }

    public byte[] decompress(byte[] bArr) {
        return bArr;
    }
}
