package com.ifengyu.intercom.update.dolphin;

import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.transport.e;
import com.ifengyu.intercom.protos.MitalkProtos;

/* compiled from: BleDataSplitManager.java */
/* loaded from: classes2.dex */
public class c extends a<byte[]> {
    private byte[] a(int i, int i2) {
        byte[] bArr = new byte[i];
        e.a(bArr, MitalkProtos.UPDATESTATECODE.TRANSPORT.ordinal(), 0, 1);
        e.a(bArr, this.d, 1, 2);
        bArr[3] = 0;
        for (int i3 = 4; i3 < i2 + 4; i3++) {
            byte b2 = bArr[3];
            byte[] bArr2 = this.f7132a;
            int i4 = this.f7133b;
            bArr[3] = (byte) (b2 ^ bArr2[i4]);
            bArr[i3] = bArr2[i4];
            this.f7133b = i4 + 1;
        }
        if (z.a()) {
            z.a("UpdateHelper", "addChunkHead[seq=" + this.d + ", xor=" + ((int) bArr[3]) + "]");
        }
        return bArr;
    }

    @Override // com.ifengyu.intercom.update.dolphin.e
    public byte[] e() {
        int i = this.f7134c - this.f7133b;
        if (i != 0) {
            if (i > 128) {
                i = 128;
            }
            byte[] a2 = a(i + 4, i);
            this.d++;
            return a2;
        }
        this.d++;
        return null;
    }
}
