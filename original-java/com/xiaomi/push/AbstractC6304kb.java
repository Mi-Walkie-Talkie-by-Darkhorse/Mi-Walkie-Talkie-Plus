package com.xiaomi.push;

/* renamed from: com.xiaomi.push.kb */
/* loaded from: classes2.dex */
public abstract class AbstractC6304kb {
    /* renamed from: a */
    public int mo1863a() {
        return 0;
    }

    /* renamed from: a */
    public abstract int mo1860a(byte[] bArr, int i, int i2);

    /* renamed from: a */
    public void mo1861a(int i) {
    }

    /* renamed from: a */
    public abstract void mo1859a(byte[] bArr, int i, int i2);

    /* renamed from: a */
    public byte[] mo1862a() {
        return null;
    }

    /* renamed from: b */
    public int mo1858b() {
        return -1;
    }

    /* renamed from: b */
    public int m1857b(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int mo1860a = mo1860a(bArr, i + i3, i2 - i3);
            if (mo1860a <= 0) {
                throw new C6305kc("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes.");
            }
            i3 += mo1860a;
        }
        return i3;
    }
}
