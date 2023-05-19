package com.ifengyu.intercom.device.oldDevice.sealshark.update;

import android.app.AlarmManager;
import android.content.Context;
import com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p173b.SharkCommand;
import com.ifengyu.intercom.p214p.AES128;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.CommonUtil;
import com.ifengyu.intercom.protos.SharkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.k */
/* loaded from: classes2.dex */
class SharkMcuUpdateTransport extends AbstractC3829b<SharkCommand> {

    /* renamed from: h */
    private SharkCommand.C3654a f13622h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SharkMcuUpdateTransport(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new SharkMcuDataSplitManager(), "SharkMcuUpdateTransport");
    }

    /* renamed from: o */
    private void m12512o() {
        if (this.f13622h == null) {
            this.f13622h = new SharkCommand.C3654a();
        }
    }

    /* renamed from: p */
    private void m12511p() {
        CommonUtil.m11085e(this.f13611e.mo12546a() != null && this.f13611e.mo12544c() > 0, "you should call prepareForUpdate() first.");
    }

    /* renamed from: q */
    private boolean m12510q() {
        return m12509r(10000);
    }

    /* renamed from: r */
    private boolean m12509r(int i) {
        C4161y.m11054a("SharkMcuUpdateTransport", "sendCommand...");
        if (i != 0) {
            m12548m(i);
        }
        SealSharkUpdateDeviceService m12530a = SealSharkUpdateDeviceService.m12530a();
        if (m12530a != null) {
            m12530a.m12526e(this.f13622h.m12953c());
            return true;
        }
        return false;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: a */
    public boolean mo12516a() {
        m12511p();
        m12512o();
        SharkProtos.SHARK_UpGradeFileRequest.Builder newBuilder = SharkProtos.SHARK_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SharkProtos.SHARK_UpGradeFileRequest.SHARK_FILECMD.SHARK_UP_START);
        newBuilder.setFType(SharkProtos.SHARK_UpGradeFileRequest.SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE);
        this.f13622h.m12952d(20012);
        C4161y.m11054a("SharkMcuUpdateTransport", "SHARK_UpGradeFileRequest:" + newBuilder.build().toString());
        this.f13622h.m12951e(newBuilder.build());
        return m12510q();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: b */
    public boolean mo12515b() {
        m12512o();
        SharkProtos.SHARK_UpGradeFileRequest.Builder newBuilder = SharkProtos.SHARK_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SharkProtos.SHARK_UpGradeFileRequest.SHARK_FILECMD.SHARK_UP_REBOOT);
        newBuilder.setFType(SharkProtos.SHARK_UpGradeFileRequest.SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE);
        this.f13622h.m12952d(20012);
        C4161y.m11043l("SharkMcuUpdateTransport", "upGradeFileRequest:" + newBuilder.build().toString());
        this.f13622h.m12951e(newBuilder.build());
        return m12509r(0);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: d */
    public boolean mo12514d() {
        m12512o();
        int mo12544c = this.f13611e.mo12544c();
        long m11097a = AES128.m11096b().m11097a(this.f13611e.mo12546a(), 0, this.f13611e.mo12544c());
        if (C4161y.m11048g()) {
            C4161y.m11054a("SharkMcuUpdateTransport", "Send upgrade finish: file length=" + mo12544c + ", crc32Result=" + m11097a);
        }
        SharkProtos.SHARK_UpGradeFileRequest.Builder newBuilder = SharkProtos.SHARK_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SharkProtos.SHARK_UpGradeFileRequest.SHARK_FILECMD.SHARK_UP_COMPLE);
        newBuilder.setFType(SharkProtos.SHARK_UpGradeFileRequest.SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE);
        newBuilder.setFSize(mo12544c);
        newBuilder.setFCrc32((int) m11097a);
        C4161y.m11054a("SharkMcuUpdateTransport", "SHARK_UpGradeFileRequest:" + newBuilder.build().toString());
        this.f13622h.m12951e(newBuilder.build());
        this.f13622h.m12952d(20012);
        return m12509r(60000);
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
                m12512o();
                this.f13622h.m12952d(((SharkCommand) this.f13613g).m12508a());
                this.f13622h.m12951e(((SharkCommand) this.f13613g).m12507b());
                if (m12510q()) {
                    return true;
                }
            }
        } else {
            ?? mo12520d = this.f13611e.mo12520d(i);
            this.f13613g = mo12520d;
            if (mo12520d != 0) {
                m12512o();
                this.f13622h.m12952d(((SharkCommand) this.f13613g).m12508a());
                this.f13622h.m12951e(((SharkCommand) this.f13613g).m12507b());
                if (m12510q()) {
                    m12549l();
                    return true;
                }
            }
        }
        return false;
    }
}
