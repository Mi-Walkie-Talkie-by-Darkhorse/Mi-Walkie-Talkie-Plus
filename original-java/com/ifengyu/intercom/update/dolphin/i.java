package com.ifengyu.intercom.update.dolphin;

import android.app.AlarmManager;
import android.content.Context;
import com.ifengyu.intercom.h.a;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.h;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.MitalkProtos;

/* compiled from: McuUpdateTransport.java */
/* loaded from: classes2.dex */
class i extends b<MitalkProtos.FilePack.Builder> {
    private MitalkProtos.Command.Builder k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new h(), "McuUpdateTransport");
    }

    private void j() {
        if (this.k == null) {
            this.k = MitalkProtos.Command.newBuilder();
        }
        this.k.clear();
    }

    private void k() {
        o.a(this.f.a() != null && this.f.b() > 0, "you should call prepareForUpdate() first.");
    }

    private boolean l() {
        return e(10000);
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public boolean a() {
        k();
        int d = this.f.d();
        int b2 = this.f.b();
        long a2 = h.a().a(this.f.a(), 0, this.f.b());
        if (z.a()) {
            z.a("McuUpdateTransport", "sendUpdateRequest: chunk count=" + d + ", file length=" + b2 + ", crc32Result=" + a2);
        }
        j();
        MitalkProtos.FileRequest.Builder newBuilder = MitalkProtos.FileRequest.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        newBuilder.setFCmd(MitalkProtos.FILECMD.START);
        newBuilder.setFType(this.e);
        newBuilder.setFSize(b2);
        newBuilder.setFCrc32((int) a2);
        newBuilder.setFVersion(this.j);
        newBuilder.setFPackNum(d);
        this.k.setFileReq(newBuilder);
        return l();
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public boolean b() {
        j();
        MitalkProtos.Control.Builder newBuilder = MitalkProtos.Control.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        newBuilder.setCtrlCode(MitalkProtos.CTRLCODE.RSTDEVICE);
        this.k.setControl(newBuilder);
        return e(0);
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public boolean c() {
        j();
        MitalkProtos.FileRequest.Builder newBuilder = MitalkProtos.FileRequest.newBuilder();
        newBuilder.setVersion(d0.f5308a);
        newBuilder.setFCmd(MitalkProtos.FILECMD.COMPLETE);
        this.k.setFileReq(newBuilder);
        return e(60000);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.ifengyu.intercom.update.dolphin.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean e() {
        /*
            r3 = this;
            boolean r0 = r3.d()
            r1 = 1
            if (r0 == 0) goto L_0x002b
            android.util.SparseArray<T> r0 = r3.g
            int r2 = r3.i
            java.lang.Object r0 = r0.get(r2)
            r3.h = r0
            if (r0 == 0) goto L_0x0058
            r3.j()
            com.ifengyu.intercom.protos.MitalkProtos$Command$Builder r0 = r3.k
            T r2 = r3.h
            com.ifengyu.intercom.protos.MitalkProtos$FilePack$Builder r2 = (com.ifengyu.intercom.protos.MitalkProtos.FilePack.Builder) r2
            r0.setFilePack(r2)
            boolean r0 = r3.l()
            if (r0 == 0) goto L_0x0058
            int r0 = r3.i
            int r0 = r0 + r1
            r3.i = r0
            goto L_0x0059
        L_0x002b:
            com.ifengyu.intercom.update.dolphin.e<T> r0 = r3.f
            int r0 = r0.c()
            r3.i = r0
            com.ifengyu.intercom.update.dolphin.e<T> r0 = r3.f
            java.lang.Object r0 = r0.e()
            r3.h = r0
            if (r0 == 0) goto L_0x0058
            r3.j()
            com.ifengyu.intercom.protos.MitalkProtos$Command$Builder r0 = r3.k
            T r2 = r3.h
            com.ifengyu.intercom.protos.MitalkProtos$FilePack$Builder r2 = (com.ifengyu.intercom.protos.MitalkProtos.FilePack.Builder) r2
            r0.setFilePack(r2)
            boolean r0 = r3.l()
            if (r0 == 0) goto L_0x0058
            r3.i()
            int r0 = r3.i
            int r0 = r0 + r1
            r3.i = r0
            goto L_0x0059
        L_0x0058:
            r1 = 0
        L_0x0059:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.update.dolphin.i.e():boolean");
    }

    private boolean e(int i) {
        z.a("McuUpdateTransport", "sendCommand...");
        if (i != 0) {
            d(i);
        }
        a a2 = a.a();
        if (a2 == null) {
            return false;
        }
        if (a2.a(this.k.build())) {
            return true;
        }
        z.b("McuUpdateTransport", "sendDolphinData error");
        return false;
    }
}
