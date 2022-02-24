package com.ifengyu.intercom.update.dolphin;

import com.google.protobuf.ByteString;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.MitalkProtos;

/* compiled from: McuDataSplitManager.java */
/* loaded from: classes2.dex */
public class h extends a<MitalkProtos.FilePack.Builder> {
    private byte[] f;

    private void a(MitalkProtos.FilePack.Builder builder, int i) {
        a(i);
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            byte[] bArr = this.f7132a;
            int i4 = this.f7133b;
            i2 ^= bArr[i4];
            this.f[i3] = bArr[i4];
            this.f7133b = i4 + 1;
        }
        builder.setSeq(this.d);
        builder.setXor(i2);
        builder.setData(ByteString.copyFrom(this.f));
        if (z.a()) {
            z.a("UpdateHelper", "assembleData[seq=" + this.d + ", xor=" + i2 + "]");
        }
    }

    @Override // com.ifengyu.intercom.update.dolphin.e
    public MitalkProtos.FilePack.Builder e() {
        int i = this.f7134c - this.f7133b;
        if (i != 0) {
            if (i > 128) {
                i = 128;
            }
            MitalkProtos.FilePack.Builder newBuilder = MitalkProtos.FilePack.newBuilder();
            a(newBuilder, i);
            this.d++;
            return newBuilder;
        }
        this.d++;
        return null;
    }

    private void a(int i) {
        byte[] bArr = this.f;
        if (bArr == null || bArr.length != i) {
            if (this.f != null) {
                z.a("UpdateHelper", "updateBufferSize: change size from " + this.f.length + " to " + i);
            }
            this.f = new byte[i];
        }
    }
}
