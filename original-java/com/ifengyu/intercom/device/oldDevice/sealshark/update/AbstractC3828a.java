package com.ifengyu.intercom.device.oldDevice.sealshark.update;

import com.ifengyu.library.utils.C4970j;

/* compiled from: AbsDataSplitManager.java */
/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.a */
/* loaded from: classes2.dex */
public abstract class AbstractC3828a<T> implements InterfaceC3830c<T> {

    /* renamed from: a */
    protected byte[] f13604a = null;

    /* renamed from: b */
    protected int f13605b;

    /* renamed from: c */
    protected int f13606c;

    /* renamed from: e */
    private int m12553e() {
        byte[] bArr = this.f13604a;
        if (bArr != null) {
            int length = bArr.length / 128;
            return bArr.length % 128 != 0 ? length + 1 : length;
        }
        return 0;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3830c
    /* renamed from: a */
    public byte[] mo12546a() {
        return this.f13604a;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3830c
    /* renamed from: b */
    public void mo12545b(String str) {
        byte[] m8661i = C4970j.m8661i(str);
        if (m8661i == null) {
            this.f13604a = null;
            return;
        }
        byte[] bArr = new byte[m8661i.length];
        this.f13604a = bArr;
        System.arraycopy(m8661i, 0, bArr, 0, m8661i.length);
        m12553e();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3830c
    /* renamed from: c */
    public int mo12544c() {
        byte[] bArr = this.f13604a;
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }
}
