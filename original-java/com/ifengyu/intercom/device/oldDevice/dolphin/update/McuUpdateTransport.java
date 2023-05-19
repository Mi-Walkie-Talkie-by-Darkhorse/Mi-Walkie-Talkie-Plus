package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import android.app.AlarmManager;
import android.content.Context;
import com.ifengyu.intercom.p214p.AES128;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.CommonUtil;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.protos.MitalkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.q */
/* loaded from: classes2.dex */
class McuUpdateTransport extends AbsUpdateTransport<MitalkProtos.FilePack.Builder> {

    /* renamed from: k */
    private MitalkProtos.Command.Builder f13046k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public McuUpdateTransport(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new McuDataSplitManager(), "McuUpdateTransport");
    }

    /* renamed from: r */
    private void m13067r() {
        if (this.f13046k == null) {
            this.f13046k = MitalkProtos.Command.newBuilder();
        }
        this.f13046k.clear();
    }

    /* renamed from: s */
    private void m13066s() {
        CommonUtil.m11085e(this.f13004f.mo13090a() != null && this.f13004f.mo13088c() > 0, "you should call prepareForUpdate() first.");
    }

    /* renamed from: t */
    private boolean m13065t() {
        return m13064u(10000);
    }

    /* renamed from: u */
    private boolean m13064u(int i) {
        C4161y.m11054a("McuUpdateTransport", "sendCommand...");
        if (i != 0) {
            m13155p(i);
        }
        DolphinUpdateDeviceService m13148a = DolphinUpdateDeviceService.m13148a();
        if (m13148a != null) {
            m13148a.m13146c(this.f13046k.build());
            return true;
        }
        return false;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: a */
    public boolean mo13071a() {
        m13066s();
        int mo13086e = this.f13004f.mo13086e();
        int mo13088c = this.f13004f.mo13088c();
        long m11097a = AES128.m11096b().m11097a(this.f13004f.mo13090a(), 0, this.f13004f.mo13088c());
        if (C4161y.m11048g()) {
            C4161y.m11054a("McuUpdateTransport", "sendUpdateRequest: chunk count=" + mo13086e + ", file length=" + mo13088c + ", crc32Result=" + m11097a);
        }
        m13067r();
        MitalkProtos.FileRequest.Builder newBuilder = MitalkProtos.FileRequest.newBuilder();
        newBuilder.setVersion(MiTalkClientUtil.f14440a);
        newBuilder.setFCmd(MitalkProtos.FILECMD.START);
        newBuilder.setFType(this.f13003e);
        newBuilder.setFSize(mo13088c);
        newBuilder.setFCrc32((int) m11097a);
        newBuilder.setFVersion(this.f13008j);
        newBuilder.setFPackNum(mo13086e);
        this.f13046k.setFileReq(newBuilder);
        return m13065t();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: b */
    public boolean mo13070b() {
        m13067r();
        MitalkProtos.Control.Builder newBuilder = MitalkProtos.Control.newBuilder();
        newBuilder.setVersion(MiTalkClientUtil.f14440a);
        newBuilder.setCtrlCode(MitalkProtos.CTRLCODE.RSTDEVICE);
        this.f13046k.setControl(newBuilder);
        return m13064u(0);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: d */
    public boolean mo13069d() {
        m13067r();
        MitalkProtos.FileRequest.Builder newBuilder = MitalkProtos.FileRequest.newBuilder();
        newBuilder.setVersion(MiTalkClientUtil.f14440a);
        newBuilder.setFCmd(MitalkProtos.FILECMD.COMPLETE);
        this.f13046k.setFileReq(newBuilder);
        return m13064u(60000);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: f */
    public boolean mo13068f() {
        if (mo13082e()) {
            ?? r0 = this.f13005g.get(this.f13007i);
            this.f13006h = r0;
            if (r0 != 0) {
                m13067r();
                this.f13046k.setFilePack((MitalkProtos.FilePack.Builder) this.f13006h);
                if (m13065t()) {
                    this.f13007i++;
                    return true;
                }
            }
        } else {
            this.f13007i = this.f13004f.mo13087d();
            ?? mo13075f = this.f13004f.mo13075f();
            this.f13006h = mo13075f;
            if (mo13075f != 0) {
                m13067r();
                this.f13046k.setFilePack((MitalkProtos.FilePack.Builder) this.f13006h);
                if (m13065t()) {
                    m13156o();
                    this.f13007i++;
                    return true;
                }
            }
        }
        return false;
    }
}
