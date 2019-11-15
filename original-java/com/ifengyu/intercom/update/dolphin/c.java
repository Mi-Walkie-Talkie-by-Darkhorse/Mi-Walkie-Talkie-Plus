package com.ifengyu.intercom.update.dolphin;

import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.transport.e;
import com.ifengyu.intercom.protos.MitalkProtos.UPDATESTATECODE;

/* compiled from: BleDataSplitManager */
public class c extends a<byte[]> {
    /* renamed from: e */
    public byte[] f() {
        int i = 128;
        int i2 = this.c - this.b;
        if (i2 != 0) {
            if (i2 <= 128) {
                i = i2;
            }
            byte[] a = a(i + 4, i);
            this.d++;
            return a;
        }
        this.d++;
        return null;
    }

    private byte[] a(int i, int i2) {
        byte[] bArr = new byte[i];
        e.a(bArr, (long) UPDATESTATECODE.TRANSPORT.ordinal(), 0, 1);
        e.a(bArr, (long) this.d, 1, 2);
        bArr[3] = 0;
        for (int i3 = 4; i3 < i2 + 4; i3++) {
            bArr[3] = (byte) (bArr[3] ^ this.a[this.b]);
            bArr[i3] = this.a[this.b];
            this.b++;
        }
        if (s.b()) {
            s.b("UpdateHelper", "addChunkHead[seq=" + this.d + ", xor=" + bArr[3] + "]");
        }
        return bArr;
    }
}
