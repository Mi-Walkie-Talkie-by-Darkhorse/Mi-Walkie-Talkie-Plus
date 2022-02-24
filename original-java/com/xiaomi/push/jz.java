package com.xiaomi.push;

/* loaded from: classes2.dex */
public class jz extends kb {

    /* renamed from: a  reason: collision with root package name */
    private int f9177a;

    /* renamed from: a  reason: collision with other field name */
    private jj f833a;

    public jz(int i) {
        this.f833a = new jj(i);
    }

    @Override // com.xiaomi.push.kb
    /* renamed from: a */
    public int mo522a(byte[] bArr, int i, int i2) {
        byte[] a2 = this.f833a.m497a();
        if (i2 > this.f833a.a() - this.f9177a) {
            i2 = this.f833a.a() - this.f9177a;
        }
        if (i2 > 0) {
            System.arraycopy(a2, this.f9177a, bArr, i, i2);
            this.f9177a += i2;
        }
        return i2;
    }

    @Override // com.xiaomi.push.kb
    /* renamed from: a  reason: collision with other method in class */
    public void mo522a(byte[] bArr, int i, int i2) {
        this.f833a.write(bArr, i, i2);
    }

    public int a_() {
        return this.f833a.size();
    }
}
