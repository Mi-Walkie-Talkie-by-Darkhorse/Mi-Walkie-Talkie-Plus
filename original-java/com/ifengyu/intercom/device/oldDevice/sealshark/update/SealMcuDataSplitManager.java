package com.ifengyu.intercom.device.oldDevice.sealshark.update;

import com.google.protobuf.ByteString;
import com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p169b.SealCommand;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.SealProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.f */
/* loaded from: classes2.dex */
public class SealMcuDataSplitManager extends AbstractC3828a<SealCommand> {

    /* renamed from: d */
    private byte[] f13614d;

    /* renamed from: f */
    private void m12537f(SealProtos.SEAL_UpGradeFilePack.Builder builder, int i, int i2) {
        m12535h(i2);
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr = this.f13604a;
            i3 ^= bArr[i];
            this.f13614d[i4] = bArr[i];
            i++;
        }
        builder.setOffset(this.f13605b);
        builder.setXor(i3);
        builder.setData(ByteString.copyFrom(this.f13614d));
        if (C4161y.m11048g()) {
            C4161y.m11054a("SealSharkUpdateHelper", "assembleData[size=" + i2 + ", xor=" + i3 + "]");
        }
    }

    /* renamed from: h */
    private void m12535h(int i) {
        byte[] bArr = this.f13614d;
        if (bArr == null || bArr.length != i) {
            if (bArr != null) {
                C4161y.m11054a("SealSharkUpdateHelper", "updateBufferSize: change size from " + this.f13614d.length + " to " + i);
            }
            this.f13614d = new byte[i];
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3830c
    /* renamed from: g */
    public SealCommand mo12520d(int i) {
        this.f13605b = i;
        if (i < mo12544c()) {
            this.f13606c = 128;
            if (this.f13605b + 128 > mo12544c()) {
                this.f13606c = mo12544c() - this.f13605b;
            }
            SealCommand.C3637a c3637a = new SealCommand.C3637a();
            SealProtos.SEAL_UpGradeFilePack.Builder newBuilder = SealProtos.SEAL_UpGradeFilePack.newBuilder();
            m12537f(newBuilder, this.f13605b, this.f13606c);
            if (C4161y.m11048g()) {
                C4161y.m11043l("SealMcuDataSplitManager", "SEAL_UpGradeFilePack:\n" + newBuilder.build().toString());
            }
            c3637a.m13013d(20013);
            c3637a.m13012e(newBuilder.build());
            return c3637a.m13014c();
        }
        return null;
    }
}
