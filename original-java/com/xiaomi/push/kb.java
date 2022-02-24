package com.xiaomi.push;

/* loaded from: classes2.dex */
public abstract class kb {
    /* renamed from: a */
    public int mo523a() {
        return 0;
    }

    /* renamed from: a */
    public abstract int mo522a(byte[] bArr, int i, int i2);

    public void a(int i) {
    }

    public abstract void a(byte[] bArr, int i, int i2);

    public byte[] a() {
        return null;
    }

    public int b() {
        return -1;
    }

    public int b(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int a2 = mo522a(bArr, i + i3, i2 - i3);
            if (a2 > 0) {
                i3 += a2;
            } else {
                throw new kc("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes.");
            }
        }
        return i3;
    }
}
