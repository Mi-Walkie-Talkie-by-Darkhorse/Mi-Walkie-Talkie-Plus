package com.ifengyu.blelib.utils;

/* compiled from: DH.java */
/* loaded from: classes.dex */
public class a {
    private static final String d = "a";

    /* renamed from: a  reason: collision with root package name */
    public byte[] f5210a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f5211b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f5212c;

    public void a() {
        byte[] bArr = new byte[32];
        byte[] bArr2 = new byte[64];
        int method06 = FooUtils.method06(bArr, bArr2);
        if (method06 != 0) {
            String str = d;
            com.ifengyu.blelib.a.b(str, "generate key pair error, ret: " + method06);
            return;
        }
        this.f5211b = bArr;
        this.f5210a = bArr2;
    }

    public byte[] b() {
        byte[] bArr = this.f5212c;
        if (bArr == null || bArr.length < 32) {
            return null;
        }
        return com.ifengyu.blelib.d.a.a(bArr, 16, 16);
    }

    public byte[] c() {
        byte[] bArr = this.f5212c;
        if (bArr == null || bArr.length < 32) {
            return null;
        }
        return com.ifengyu.blelib.d.a.a(bArr, 0, 16);
    }

    public byte[] d() {
        return this.f5210a;
    }

    public byte[] e() {
        return this.f5212c;
    }

    public void a(byte[] bArr) {
        byte[] bArr2 = this.f5211b;
        if (bArr2 == null || bArr == null) {
            com.ifengyu.blelib.a.b(d, "generate secret key error, privateKey or receivedPublicKey must be not null");
            throw new IllegalArgumentException("privateKey or receivedPublicKey must be not null");
        }
        byte[] bArr3 = new byte[32];
        int method07 = FooUtils.method07(bArr2, bArr, bArr3);
        if (method07 != 0) {
            String str = d;
            com.ifengyu.blelib.a.b(str, "generate secret key error, ret: " + method07);
            return;
        }
        this.f5212c = bArr3;
    }
}
