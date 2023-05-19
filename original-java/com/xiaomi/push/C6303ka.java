package com.xiaomi.push;

/* renamed from: com.xiaomi.push.ka */
/* loaded from: classes2.dex */
public final class C6303ka extends AbstractC6304kb {

    /* renamed from: a */
    private int f22821a;

    /* renamed from: a */
    private byte[] f22822a;

    /* renamed from: b */
    private int f22823b;

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: a */
    public int mo1863a() {
        return this.f22821a;
    }

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: a */
    public int mo1860a(byte[] bArr, int i, int i2) {
        int mo1858b = mo1858b();
        if (i2 > mo1858b) {
            i2 = mo1858b;
        }
        if (i2 > 0) {
            System.arraycopy(this.f22822a, this.f22821a, bArr, i, i2);
            mo1861a(i2);
        }
        return i2;
    }

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: a */
    public void mo1861a(int i) {
        this.f22821a += i;
    }

    /* renamed from: a */
    public void m1865a(byte[] bArr) {
        m1864b(bArr, 0, bArr.length);
    }

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: a */
    public void mo1859a(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: a */
    public byte[] mo1862a() {
        return this.f22822a;
    }

    @Override // com.xiaomi.push.AbstractC6304kb
    /* renamed from: b */
    public int mo1858b() {
        return this.f22823b - this.f22821a;
    }

    /* renamed from: b */
    public void m1864b(byte[] bArr, int i, int i2) {
        this.f22822a = bArr;
        this.f22821a = i;
        this.f22823b = i + i2;
    }
}
