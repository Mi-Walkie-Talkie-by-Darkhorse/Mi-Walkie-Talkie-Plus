package com.ifengyu.intercom.update.sealshark;

import com.ifengyu.intercom.i.r;

/* compiled from: AbsDataSplitManager.java */
/* loaded from: classes2.dex */
public abstract class a<T> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    protected byte[] f7158a = null;

    /* renamed from: b  reason: collision with root package name */
    protected int f7159b;

    /* renamed from: c  reason: collision with root package name */
    protected int f7160c;

    private int c() {
        byte[] bArr = this.f7158a;
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length / 128;
        return bArr.length % 128 != 0 ? length + 1 : length;
    }

    @Override // com.ifengyu.intercom.update.sealshark.c
    public void a(String str) {
        byte[] b2 = r.b(str);
        if (b2 == null) {
            this.f7158a = null;
            return;
        }
        byte[] bArr = new byte[b2.length];
        this.f7158a = bArr;
        System.arraycopy(b2, 0, bArr, 0, b2.length);
        c();
    }

    @Override // com.ifengyu.intercom.update.sealshark.c
    public int b() {
        byte[] bArr = this.f7158a;
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }

    @Override // com.ifengyu.intercom.update.sealshark.c
    public byte[] a() {
        return this.f7158a;
    }
}
