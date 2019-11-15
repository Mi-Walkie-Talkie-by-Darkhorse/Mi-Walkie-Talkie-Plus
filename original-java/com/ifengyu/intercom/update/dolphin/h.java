package com.ifengyu.intercom.update.dolphin;

import com.google.protobuf.ByteString;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.protos.MitalkProtos.FilePack;
import com.ifengyu.intercom.protos.MitalkProtos.FilePack.Builder;

/* compiled from: McuDataSplitManager */
public class h extends a<Builder> {
    private byte[] f;

    /* renamed from: e */
    public Builder f() {
        int i = 128;
        int i2 = this.c - this.b;
        if (i2 != 0) {
            if (i2 <= 128) {
                i = i2;
            }
            Builder newBuilder = FilePack.newBuilder();
            a(newBuilder, i);
            this.d++;
            return newBuilder;
        }
        this.d++;
        return null;
    }

    private void a(Builder builder, int i) {
        a(i);
        byte b = 0;
        for (int i2 = 0; i2 < i; i2++) {
            b ^= this.a[this.b];
            this.f[i2] = this.a[this.b];
            this.b++;
        }
        builder.setSeq(this.d);
        builder.setXor(b);
        builder.setData(ByteString.copyFrom(this.f));
        if (s.b()) {
            s.b("UpdateHelper", "assembleData[seq=" + this.d + ", xor=" + b + "]");
        }
    }

    private void a(int i) {
        if (this.f == null || this.f.length != i) {
            if (this.f != null) {
                s.b("UpdateHelper", "updateBufferSize: change size from " + this.f.length + " to " + i);
            }
            this.f = new byte[i];
        }
    }
}
