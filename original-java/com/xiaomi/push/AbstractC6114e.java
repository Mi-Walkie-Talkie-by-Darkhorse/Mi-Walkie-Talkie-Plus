package com.xiaomi.push;

import java.io.IOException;

/* renamed from: com.xiaomi.push.e */
/* loaded from: classes2.dex */
public abstract class AbstractC6114e {
    /* renamed from: a */
    public abstract int mo3145a();

    /* renamed from: a */
    public abstract AbstractC6114e mo3143a(C6001b c6001b);

    /* renamed from: a */
    public AbstractC6114e m3140a(byte[] bArr) {
        return m3139a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public AbstractC6114e m3139a(byte[] bArr, int i, int i2) {
        try {
            C6001b m3709a = C6001b.m3709a(bArr, i, i2);
            mo3143a(m3709a);
            m3709a.m3715a(0);
            return this;
        } catch (C6071d e) {
            throw e;
        } catch (IOException unused) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    /* renamed from: a */
    public abstract void mo3141a(C6035c c6035c);

    /* renamed from: a */
    public void m3138a(byte[] bArr, int i, int i2) {
        try {
            C6035c m3546a = C6035c.m3546a(bArr, i, i2);
            mo3141a(m3546a);
            m3546a.m3544b();
        } catch (IOException unused) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public boolean m3142a(C6001b c6001b, int i) {
        return c6001b.m3714a(i);
    }

    /* renamed from: a */
    public byte[] m3144a() {
        int mo3137b = mo3137b();
        byte[] bArr = new byte[mo3137b];
        m3138a(bArr, 0, mo3137b);
        return bArr;
    }

    /* renamed from: b */
    public abstract int mo3137b();
}
