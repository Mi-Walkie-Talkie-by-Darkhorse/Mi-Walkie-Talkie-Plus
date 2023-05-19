package com.ifengyu.intercom.device.oldDevice.sealshark.update;

import android.app.AlarmManager;
import android.content.Context;
import com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p169b.SealCommand;
import com.ifengyu.intercom.p214p.AES128;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.CommonUtil;
import com.ifengyu.intercom.protos.SealProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.g */
/* loaded from: classes2.dex */
class SealMcuUpdateTransport extends AbstractC3829b<SealCommand> {

    /* renamed from: h */
    private SealCommand.C3637a f13615h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SealMcuUpdateTransport(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new SealMcuDataSplitManager(), "SealMcuUpdateTransport");
    }

    /* renamed from: o */
    private void m12534o() {
        if (this.f13615h == null) {
            this.f13615h = new SealCommand.C3637a();
        }
    }

    /* renamed from: p */
    private void m12533p() {
        CommonUtil.m11085e(this.f13611e.mo12546a() != null && this.f13611e.mo12544c() > 0, "you should call prepareForUpdate() first.");
    }

    /* renamed from: q */
    private boolean m12532q() {
        return m12531r(10000);
    }

    /* renamed from: r */
    private boolean m12531r(int i) {
        C4161y.m11054a("SealMcuUpdateTransport", "sendCommand...");
        if (i != 0) {
            m12548m(i);
        }
        SealSharkUpdateDeviceService m12530a = SealSharkUpdateDeviceService.m12530a();
        if (m12530a != null) {
            m12530a.m12527d(this.f13615h.m13014c());
            return true;
        }
        return false;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: a */
    public boolean mo12516a() {
        m12533p();
        m12534o();
        SealProtos.SEAL_UpGradeFileRequest.Builder newBuilder = SealProtos.SEAL_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILECMD.SEAL_UP_START);
        newBuilder.setFType(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE);
        this.f13615h.m13013d(20012);
        C4161y.m11043l("SealMcuUpdateTransport", "SEAL_UpGradeFileRequest:" + newBuilder.build().toString());
        this.f13615h.m13012e(newBuilder.build());
        return m12532q();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: b */
    public boolean mo12515b() {
        m12534o();
        SealProtos.SEAL_UpGradeFileRequest.Builder newBuilder = SealProtos.SEAL_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILECMD.SEAL_UP_REBOOT);
        newBuilder.setFType(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE);
        this.f13615h.m13013d(20012);
        C4161y.m11043l("SealMcuUpdateTransport", "upGradeFileRequest:" + newBuilder.build().toString());
        this.f13615h.m13012e(newBuilder.build());
        return m12531r(0);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: d */
    public boolean mo12514d() {
        m12534o();
        int mo12544c = this.f13611e.mo12544c();
        long m11097a = AES128.m11096b().m11097a(this.f13611e.mo12546a(), 0, this.f13611e.mo12544c());
        if (C4161y.m11048g()) {
            C4161y.m11054a("SealMcuUpdateTransport", "Send upgrade finish: file length=" + mo12544c + ", crc32Result=" + m11097a);
        }
        SealProtos.SEAL_UpGradeFileRequest.Builder newBuilder = SealProtos.SEAL_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILECMD.SEAL_UP_COMPLE);
        newBuilder.setFType(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE);
        newBuilder.setFSize(mo12544c);
        newBuilder.setFCrc32((int) m11097a);
        C4161y.m11043l("SealMcuUpdateTransport", "upGradeFileRequest:" + newBuilder.build().toString());
        this.f13615h.m13012e(newBuilder.build());
        this.f13615h.m13013d(20012);
        return m12531r(60000);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6, types: [T, java.lang.Object] */
    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: h */
    public boolean mo12513h(int i) {
        if (m12550k()) {
            ?? r3 = this.f13612f.get(this.f13610d);
            this.f13613g = r3;
            if (r3 != 0) {
                m12534o();
                this.f13615h.m13013d(((SealCommand) this.f13613g).m12508a());
                this.f13615h.m13012e(((SealCommand) this.f13613g).m12507b());
                if (m12532q()) {
                    return true;
                }
            }
        } else {
            ?? mo12520d = this.f13611e.mo12520d(i);
            this.f13613g = mo12520d;
            if (mo12520d != 0) {
                m12534o();
                this.f13615h.m13013d(((SealCommand) this.f13613g).m12508a());
                this.f13615h.m13012e(((SealCommand) this.f13613g).m12507b());
                if (m12532q()) {
                    m12549l();
                    return true;
                }
            }
        }
        return false;
    }
}
