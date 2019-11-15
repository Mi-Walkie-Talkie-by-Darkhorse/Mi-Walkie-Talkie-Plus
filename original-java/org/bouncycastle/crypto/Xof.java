package org.bouncycastle.crypto;

public interface Xof extends ExtendedDigest {
    int doFinal(byte[] bArr, int i, int i2);
}
