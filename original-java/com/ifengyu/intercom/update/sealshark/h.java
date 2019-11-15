package com.ifengyu.intercom.update.sealshark;

import com.google.protobuf.ByteString;
import com.google.protobuf.Message;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.n;
import com.ifengyu.intercom.node.n.a;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePack;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFilePack.Builder;

/* compiled from: SharkMcuDataSplitManager */
public class h extends a<n> {
    private byte[] e;

    /* renamed from: b */
    public n a(int i) {
        this.c = i;
        if (this.c >= b()) {
            return null;
        }
        this.d = 128;
        if (this.c + 128 > b()) {
            this.d = b() - this.c;
        }
        a aVar = new a();
        Builder newBuilder = SHARK_UpGradeFilePack.newBuilder();
        a(newBuilder, this.c, this.d);
        if (s.b()) {
            s.c("SharkMcuDataSplitManager", "SHARK_UpGradeFilePack:\n" + newBuilder.build().toString());
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
