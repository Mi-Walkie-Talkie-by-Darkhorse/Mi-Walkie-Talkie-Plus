package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import android.app.AlarmManager;
import android.content.Context;
import com.ifengyu.intercom.device.oldDevice.p180x.C3841c;
import com.ifengyu.intercom.p214p.AES128;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.CommonUtil;
import com.ifengyu.intercom.protos.MitalkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.h */
/* loaded from: classes2.dex */
class BleUpdateTransport extends AbsUpdateTransport<byte[]> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BleUpdateTransport(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new BleDataSplitManager(), "BleUpdateTransport");
    }

    /* renamed from: r */
    private void m13151r() {
        CommonUtil.m11085e(this.f13004f.mo13090a() != null && this.f13004f.mo13088c() > 0, "you should call prepareForUpdate() first.");
    }

    /* renamed from: s */
    private boolean m13150s(byte[] bArr) {
        return m13149t(bArr, 10000);
    }

    /* renamed from: t */
    private boolean m13149t(byte[] bArr, int i) {
        C4161y.m11054a("BleUpdateTransport", "sendBinaryData...");
        if (i != 0) {
            m13155p(i);
        }
        DolphinUpdateDeviceService m13148a = DolphinUpdateDeviceService.m13148a();
        if (m13148a != null) {
            m13148a.m13145d(bArr);
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [T, byte[]] */
    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: a */
    public boolean mo13071a() {
        m13151r();
        int mo13086e = this.f13004f.mo13086e();
        int mo13088c = this.f13004f.mo13088c();
        long m11097a = AES128.m11096b().m11097a(this.f13004f.mo13090a(), 0, this.f13004f.mo13088c());
        if (C4161y.m11048g()) {
            C4161y.m11054a("BleUpdateTransport", "sendUpdateRequest: chunk count=" + mo13086e + ", file length=" + mo13088c + ", crc32Result=" + m11097a);
        }
        ?? r4 = new byte[16];
        this.f13006h = r4;
        C3841c.m12455g((byte[]) r4, MitalkProtos.UPDATESTATECODE.REQUEST.ordinal(), 0, 1);
        C3841c.m12455g((byte[]) this.f13006h, this.f13003e.getNumber(), 1, 1);
        C3841c.m12455g((byte[]) this.f13006h, mo13086e, 2, 2);
        C3841c.m12455g((byte[]) this.f13006h, mo13088c, 4, 4);
        C3841c.m12455g((byte[]) this.f13006h, m11097a, 8, 4);
        C3841c.m12455g((byte[]) this.f13006h, this.f13008j, 12, 4);
        return m13150s((byte[]) this.f13006h);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, byte[]] */
    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: b */
    public boolean mo13070b() {
        ?? r1 = new byte[1];
        this.f13006h = r1;
        C3841c.m12455g((byte[]) r1, MitalkProtos.UPDATESTATECODE.RESTART.ordinal(), 0, 1);
        return m13149t((byte[]) this.f13006h, 0);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, byte[]] */
    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: d */
    public boolean mo13069d() {
        ?? r1 = new byte[1];
        this.f13006h = r1;
        C3841c.m12455g((byte[]) r1, MitalkProtos.UPDATESTATECODE.FINISH.ordinal(), 0, 1);
        return m13149t((byte[]) this.f13006h, 60000);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: f */
    public boolean mo13068f() {
        if (mo13082e()) {
            ?? r0 = this.f13005g.get(this.f13007i);
            this.f13006h = r0;
            if (r0 != 0 && m13150s((byte[]) r0)) {
                this.f13007i++;
                return true;
            }
        } else {
            this.f13007i = this.f13004f.mo13087d();
            ?? mo13075f = this.f13004f.mo13075f();
            this.f13006h = mo13075f;
            if (mo13075f != 0 && m13150s((byte[]) mo13075f)) {
                m13156o();
                this.f13007i++;
                return true;
            }
        }
        return false;
    }
}
