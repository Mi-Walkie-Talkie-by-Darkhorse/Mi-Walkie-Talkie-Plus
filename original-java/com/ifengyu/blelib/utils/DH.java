package com.ifengyu.blelib.utils;

import com.ifengyu.blelib.p152c.ByteUtils;
import com.ifengyu.library.utils.C4971k;

/* renamed from: com.ifengyu.blelib.utils.a */
/* loaded from: classes2.dex */
public class DH {

    /* renamed from: d */
    private static final String f12078d = "a";

    /* renamed from: a */
    public byte[] f12079a;

    /* renamed from: b */
    private byte[] f12080b;

    /* renamed from: c */
    private byte[] f12081c;

    /* renamed from: a */
    public void m14322a() {
        byte[] bArr = new byte[32];
        byte[] bArr2 = new byte[64];
        int method06 = FooUtils.method06(bArr, bArr2);
        if (method06 != 0) {
            String str = f12078d;
            C4971k.m8657c(str, "generate key pair error, ret: " + method06);
            return;
        }
        this.f12080b = bArr;
        this.f12079a = bArr2;
    }

    /* renamed from: b */
    public void m14321b(byte[] bArr) {
        byte[] bArr2 = this.f12080b;
        if (bArr2 != null && bArr != null) {
            byte[] bArr3 = new byte[32];
            int method07 = FooUtils.method07(bArr2, bArr, bArr3);
            if (method07 != 0) {
                String str = f12078d;
                C4971k.m8657c(str, "generate secret key error, ret: " + method07);
                return;
            }
            this.f12081c = bArr3;
            return;
        }
        C4971k.m8657c(f12078d, "generate secret key error, privateKey or receivedPublicKey must be not null");
        throw new IllegalArgumentException("privateKey or receivedPublicKey must be not null");
    }

    /* renamed from: c */
    public byte[] m14320c() {
        byte[] bArr = this.f12081c;
        if (bArr == null || bArr.length < 32) {
            return null;
        }
        return ByteUtils.m14364e(bArr, 16, 16);
    }

    /* renamed from: d */
    public byte[] m14319d() {
        byte[] bArr = this.f12081c;
        if (bArr == null || bArr.length < 32) {
            return null;
        }
        return ByteUtils.m14364e(bArr, 0, 16);
    }

    /* renamed from: e */
    public byte[] m14318e() {
        return this.f12079a;
    }

    /* renamed from: f */
    public byte[] m14317f() {
        return this.f12081c;
    }
}
