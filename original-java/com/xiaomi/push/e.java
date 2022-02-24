package com.xiaomi.push;

import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class e {
    /* renamed from: a */
    public abstract int mo223a();

    public abstract e a(b bVar);

    public e a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public e a(byte[] bArr, int i, int i2) {
        try {
            b a2 = b.a(bArr, i, i2);
            a(a2);
            a2.m80a(0);
            return this;
        } catch (d e) {
            throw e;
        } catch (IOException unused) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public abstract void a(c cVar);

    /* renamed from: a  reason: collision with other method in class */
    public void m227a(byte[] bArr, int i, int i2) {
        try {
            c a2 = c.a(bArr, i, i2);
            a(a2);
            a2.b();
        } catch (IOException unused) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(b bVar, int i) {
        return bVar.m82a(i);
    }

    public byte[] a() {
        int b2 = mo225b();
        byte[] bArr = new byte[b2];
        m227a(bArr, 0, b2);
        return bArr;
    }

    /* renamed from: b */
    public abstract int mo225b();
}
