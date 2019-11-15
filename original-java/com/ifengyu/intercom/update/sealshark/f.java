package com.ifengyu.intercom.update.sealshark;

import com.google.protobuf.ByteString;
import com.google.protobuf.Message;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.m;
import com.ifengyu.intercom.node.m.a;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePack;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFilePack.Builder;

/* compiled from: SealMcuDataSplitManager */
public class f extends a<m> {
    private byte[] e;

    /* renamed from: b */
    public m a(int i) {
        this.c = i;
        if (this.c >= b()) {
            return null;
        }
        this.d = 128;
        if (this.c + 128 > b()) {
            this.d = b() - this.c;
        }
        a aVar = new a();
        Builder newBuilder = SEAL_UpGradeFilePack.newBuilder();
        a(newBuilder, this.c, this.d);
        if (s.b()) {
            s.a("SealMcuDataSplitManager", "SEAL_UpGradeFilePack:\n" + newBuilder.build().toString());
        }
        aVar.a(20013);
        aVar.a((Message) newBuilder.build());
        return aVar.a();
    }

    private void a(Builder builder, int i, int i2) {
        c(i2);
        byte b = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            b ^= this.a[i];
            this.e[i3] = this.a[i];
            i++;
        }
        builder.setOffset(this.c);
        builder.setXor(b);
        builder.setData(ByteString.copyFrom(this.e));
        if (s.b()) {
            s.b("UpdateHelper", "assembleData[size=" + i2 + ", xor=" + b + "]");
        }
    }

    private void c(int i) {
        if (this.e == null || this.e.length != i) {
            if (this.e != null) {
                s.b("UpdateHelper", "updateBufferSize: change size from " + this.e.length + " to " + i);
            }
            this.e = new byte[i];
        }
    }
}
