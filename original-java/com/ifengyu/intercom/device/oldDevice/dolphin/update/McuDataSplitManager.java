package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import com.google.protobuf.ByteString;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.MitalkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.p */
/* loaded from: classes2.dex */
public class McuDataSplitManager extends AbsDataSplitManager<MitalkProtos.FilePack.Builder> {

    /* renamed from: f */
    private byte[] f13045f;

    /* renamed from: h */
    private void m13074h(MitalkProtos.FilePack.Builder builder, int i) {
        m13072j(i);
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            byte[] bArr = this.f12994a;
            int i4 = this.f12995b;
            i2 ^= bArr[i4];
            this.f13045f[i3] = bArr[i4];
            this.f12995b = i4 + 1;
        }
        builder.setSeq(this.f12997d);
        builder.setXor(i2);
        builder.setData(ByteString.copyFrom(this.f13045f));
        if (C4161y.m11048g()) {
            C4161y.m11054a("UpdateHelper", "assembleData[seq=" + this.f12997d + ", xor=" + i2 + "]");
        }
    }

    /* renamed from: j */
    private void m13072j(int i) {
        byte[] bArr = this.f13045f;
        if (bArr == null || bArr.length != i) {
            if (bArr != null) {
                C4161y.m11054a("UpdateHelper", "updateBufferSize: change size from " + this.f13045f.length + " to " + i);
            }
            this.f13045f = new byte[i];
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IDataSplitWrap
    /* renamed from: i */
    public MitalkProtos.FilePack.Builder mo13075f() {
        int i = this.f12996c - this.f12995b;
        if (i != 0) {
            if (i > 128) {
                i = 128;
            }
            MitalkProtos.FilePack.Builder newBuilder = MitalkProtos.FilePack.newBuilder();
            m13074h(newBuilder, i);
            this.f12997d++;
            return newBuilder;
        }
        this.f12997d++;
        return null;
    }
}
