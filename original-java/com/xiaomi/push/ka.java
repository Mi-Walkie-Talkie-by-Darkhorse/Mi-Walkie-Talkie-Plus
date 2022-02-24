package com.xiaomi.push;

/* loaded from: classes2.dex */
public final class ka extends kb {

    /* renamed from: a  reason: collision with root package name */
    private int f9178a;

    /* renamed from: a  reason: collision with other field name */
    private byte[] f834a;

    /* renamed from: b  reason: collision with root package name */
    private int f9179b;

    @Override // com.xiaomi.push.kb
    /* renamed from: a */
    public int mo523a() {
        return this.f9178a;
    }

    @Override // com.xiaomi.push.kb
    /* renamed from: a */
    public int mo522a(byte[] bArr, int i, int i2) {
        int b2 = b();
        if (i2 > b2) {
            i2 = b2;
        }
        if (i2 > 0) {
            System.arraycopy(this.f834a, this.f9178a, bArr, i, i2);
            a(i2);
        }
        return i2;
    }

    @Override // com.xiaomi.push.kb
    public void a(int i) {
        this.f9178a += i;
    }

    public void a(byte[] bArr) {
        b(bArr, 0, bArr.length);
    }

    @Override // com.xiaomi.push.kb
    /* renamed from: a  reason: collision with other method in class */
    public void mo522a(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // com.xiaomi.push.kb
    /* renamed from: a  reason: collision with other method in class */
    public byte[] mo523a() {
        return this.f834a;
    }

    @Override // com.xiaomi.push.kb
    public int b() {
        return this.f9179b - this.f9178a;
    }

    @Override // com.xiaomi.push.kb
    public void b(byte[] bArr, int i, int i2) {
        this.f834a = bArr;
        this.f9178a = i;
        this.f9179b = i + i2;
    }
}
