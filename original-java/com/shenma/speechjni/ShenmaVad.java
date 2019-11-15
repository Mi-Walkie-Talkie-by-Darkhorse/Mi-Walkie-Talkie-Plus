package com.shenma.speechjni;

public class ShenmaVad {
    public native int[] check(byte[] bArr, int i);

    public native int init(String str, String str2, String str3);

    public native int release();

    public native int reset();
}
