package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import com.ifengyu.library.utils.C4970j;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.e */
/* loaded from: classes2.dex */
public abstract class AbsDataSplitManager<T> implements IDataSplitWrap<T> {

    /* renamed from: a */
    protected byte[] f12994a = null;

    /* renamed from: b */
    protected int f12995b = 0;

    /* renamed from: c */
    protected int f12996c = 0;

    /* renamed from: d */
    protected int f12997d;

    /* renamed from: e */
    protected int f12998e;

    /* renamed from: g */
    private int m13159g() {
        byte[] bArr = this.f12994a;
        if (bArr != null) {
            int length = bArr.length / 128;
            return bArr.length % 128 != 0 ? length + 1 : length;
        }
        return 0;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IDataSplitWrap
    /* renamed from: a */
    public byte[] mo13090a() {
        return this.f12994a;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IDataSplitWrap
    /* renamed from: b */
    public void mo13089b(String str) {
        byte[] m8661i = C4970j.m8661i(str);
        if (m8661i == null) {
            this.f12994a = null;
            this.f12996c = 0;
            this.f12995b = 0;
            this.f12997d = 0;
            this.f12998e = 0;
            return;
        }
        byte[] bArr = new byte[m8661i.length];
        this.f12994a = bArr;
        System.arraycopy(m8661i, 0, bArr, 0, m8661i.length);
        this.f12996c = m8661i.length;
        this.f12995b = 0;
        this.f12997d = 0;
        this.f12998e = m13159g();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IDataSplitWrap
    /* renamed from: c */
    public int mo13088c() {
        byte[] bArr = this.f12994a;
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IDataSplitWrap
    /* renamed from: d */
    public int mo13087d() {
        return this.f12997d;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IDataSplitWrap
    /* renamed from: e */
    public int mo13086e() {
        return this.f12998e;
    }
}
