package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import com.ifengyu.intercom.device.oldDevice.p180x.C3841c;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.MitalkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.g */
/* loaded from: classes2.dex */
public class BleDataSplitManager extends AbsDataSplitManager<byte[]> {
    /* renamed from: h */
    private byte[] m13153h(int i, int i2) {
        byte[] bArr = new byte[i];
        C3841c.m12455g(bArr, MitalkProtos.UPDATESTATECODE.TRANSPORT.ordinal(), 0, 1);
        C3841c.m12455g(bArr, this.f12997d, 1, 2);
        bArr[3] = 0;
        for (int i3 = 4; i3 < i2 + 4; i3++) {
            byte b = bArr[3];
            byte[] bArr2 = this.f12994a;
            int i4 = this.f12995b;
            bArr[3] = (byte) (b ^ bArr2[i4]);
            bArr[i3] = bArr2[i4];
            this.f12995b = i4 + 1;
        }
        if (C4161y.m11048g()) {
            C4161y.m11054a("UpdateHelper", "addChunkHead[seq=" + this.f12997d + ", xor=" + ((int) bArr[3]) + "]");
        }
        return bArr;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IDataSplitWrap
    /* renamed from: i */
    public byte[] mo13075f() {
        int i = this.f12996c - this.f12995b;
        if (i != 0) {
            if (i > 128) {
                i = 128;
            }
            byte[] m13153h = m13153h(i + 4, i);
            this.f12997d++;
            return m13153h;
        }
        this.f12997d++;
        return null;
    }
}
