package com.ifengyu.intercom.update.dolphin;

import com.ifengyu.intercom.i.r;

/* compiled from: AbsDataSplitManager.java */
/* loaded from: classes2.dex */
public abstract class a<T> implements e<T> {

    /* renamed from: a  reason: collision with root package name */
    protected byte[] f7132a = null;

    /* renamed from: b  reason: collision with root package name */
    protected int f7133b = 0;

    /* renamed from: c  reason: collision with root package name */
    protected int f7134c = 0;
    protected int d;
    protected int e;

    private int f() {
        byte[] bArr = this.f7132a;
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length / 128;
        return bArr.length % 128 != 0 ? length + 1 : length;
    }

    @Override // com.ifengyu.intercom.update.dolphin.e
    public void a(String str) {
        byte[] b2 = r.b(str);
        if (b2 == null) {
            this.f7132a = null;
            this.f7134c = 0;
            this.f7133b = 0;
            this.d = 0;
            this.e = 0;
            return;
        }
        byte[] bArr = new byte[b2.length];
        this.f7132a = bArr;
        System.arraycopy(b2, 0, bArr, 0, b2.length);
        this.f7134c = b2.length;
        this.f7133b = 0;
        this.d = 0;
        this.e = f();
    }

    @Override // com.ifengyu.intercom.update.dolphin.e
    public int b() {
        byte[] bArr = this.f7132a;
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }

    @Override // com.ifengyu.intercom.update.dolphin.e
    public int c() {
        return this.d;
    }

    @Override // com.ifengyu.intercom.update.dolphin.e
    public int d() {
        return this.e;
    }

    @Override // com.ifengyu.intercom.update.dolphin.e
    public byte[] a() {
        return this.f7132a;
    }
}
