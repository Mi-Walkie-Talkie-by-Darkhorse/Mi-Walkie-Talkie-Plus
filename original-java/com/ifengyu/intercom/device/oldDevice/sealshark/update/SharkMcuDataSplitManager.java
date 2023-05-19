package com.ifengyu.intercom.device.oldDevice.sealshark.update;

import com.google.protobuf.ByteString;
import com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p173b.SharkCommand;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.SharkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.j */
/* loaded from: classes2.dex */
public class SharkMcuDataSplitManager extends AbstractC3828a<SharkCommand> {

    /* renamed from: d */
    private byte[] f13621d;

    /* renamed from: f */
    private void m12519f(SharkProtos.SHARK_UpGradeFilePack.Builder builder, int i, int i2) {
        m12517h(i2);
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr = this.f13604a;
            i3 ^= bArr[i];
            this.f13621d[i4] = bArr[i];
            i++;
        }
        builder.setOffset(this.f13605b);
        builder.setXor(i3);
        builder.setData(ByteString.copyFrom(this.f13621d));
        if (C4161y.m11048g()) {
            C4161y.m11054a("SealSharkUpdateHelper", "assembleData[size=" + i2 + ", xor=" + i3 + "]");
        }
    }

    /* renamed from: h */
    private void m12517h(int i) {
        byte[] bArr = this.f13621d;
        if (bArr == null || bArr.length != i) {
            if (bArr != null) {
                C4161y.m11054a("SealSharkUpdateHelper", "updateBufferSize: change size from " + this.f13621d.length + " to " + i);
            }
            this.f13621d = new byte[i];
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3830c
    /* renamed from: g */
    public SharkCommand mo12520d(int i) {
        this.f13605b = i;
        if (i < mo12544c()) {
            this.f13606c = 128;
            if (this.f13605b + 128 > mo12544c()) {
                this.f13606c = mo12544c() - this.f13605b;
            }
            SharkCommand.C3654a c3654a = new SharkCommand.C3654a();
            SharkProtos.SHARK_UpGradeFilePack.Builder newBuilder = SharkProtos.SHARK_UpGradeFilePack.newBuilder();
            m12519f(newBuilder, this.f13605b, this.f13606c);
            if (C4161y.m11048g()) {
                C4161y.m11049f("SharkMcuDataSplitManager", "SHARK_UpGradeFilePack:\n" + newBuilder.build().toString());
            }
            c3654a.m12952d(20013);
            c3654a.m12951e(newBuilder.build());
            return c3654a.m12953c();
        }
        return null;
    }
}
