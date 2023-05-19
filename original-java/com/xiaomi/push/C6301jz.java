package com.xiaomi.push;

/* renamed from: com.xiaomi.push.jz */
/* loaded from: classes2.dex */
public class C6301jz extends AbstractC6304kb {

    /* renamed from: a */
    private int f22819a;

    /* renamed from: a */
    private C6283jj f22820a;

    public C6301jz(int i) {
        this.f22820a = new C6283jj(i);
    }

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: a */
    public int mo1860a(byte[] bArr, int i, int i2) {
        byte[] m1911a = this.f22820a.m1911a();
        if (i2 > this.f22820a.m1912a() - this.f22819a) {
            i2 = this.f22820a.m1912a() - this.f22819a;
        }
        if (i2 > 0) {
            System.arraycopy(m1911a, this.f22819a, bArr, i, i2);
            this.f22819a += i2;
        }
        return i2;
    }

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: a */
    public void mo1859a(byte[] bArr, int i, int i2) {
        this.f22820a.write(bArr, i, i2);
    }

    /* renamed from: a_ */
    public int m1866a_() {
        return this.f22820a.size();
    }
}
