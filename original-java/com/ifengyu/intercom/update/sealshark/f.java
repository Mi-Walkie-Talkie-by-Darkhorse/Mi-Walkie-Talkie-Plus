package com.ifengyu.intercom.update.sealshark;

import com.google.protobuf.ByteString;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.l;
import com.ifengyu.intercom.protos.SealProtos;

/* compiled from: SealMcuDataSplitManager.java */
/* loaded from: classes2.dex */
public class f extends a<l> {
    private byte[] d;

    private void b(int i) {
        byte[] bArr = this.d;
        if (bArr == null || bArr.length != i) {
            if (this.d != null) {
                z.a("UpdateHelper", "updateBufferSize: change size from " + this.d.length + " to " + i);
            }
            this.d = new byte[i];
        }
    }

    @Override // com.ifengyu.intercom.update.sealshark.c
    public l a(int i) {
        this.f7159b = i;
        if (i >= b()) {
            return null;
        }
        this.f7160c = 128;
        if (this.f7159b + 128 > b()) {
            this.f7160c = b() - this.f7159b;
        }
        l.a aVar = new l.a();
        SealProtos.SEAL_UpGradeFilePack.Builder newBuilder = SealProtos.SEAL_UpGradeFilePack.newBuilder();
        a(newBuilder, this.f7159b, this.f7160c);
        if (z.a()) {
            z.d("SealMcuDataSplitManager", "SEAL_UpGradeFilePack:\n" + newBuilder.build().toString());
        }
        aVar.a(20013);
        aVar.a(newBuilder.build());
        return aVar.a();
    }

    private void a(SealProtos.SEAL_UpGradeFilePack.Builder builder, int i, int i2) {
        b(i2);
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr = this.f7158a;
            i3 ^= bArr[i];
            this.d[i4] = bArr[i];
            i++;
        }
        builder.setOffset(this.f7159b);
        builder.setXor(i3);
        builder.setData(ByteString.copyFrom(this.d));
        if (z.a()) {
            z.a("UpdateHelper", "assembleData[size=" + i2 + ", xor=" + i3 + "]");
        }
    }
}
