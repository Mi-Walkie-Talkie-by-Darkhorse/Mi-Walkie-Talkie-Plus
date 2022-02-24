package com.ifengyu.intercom.update.sealshark;

import android.app.AlarmManager;
import android.content.Context;
import com.ifengyu.intercom.h.a;
import com.ifengyu.intercom.i.h;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.l;
import com.ifengyu.intercom.protos.SealProtos;

/* compiled from: SealMcuUpdateTransport.java */
/* loaded from: classes2.dex */
class g extends b<l> {
    private l.a h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new f(), "SealMcuUpdateTransport");
    }

    private boolean f(int i) {
        z.a("SealMcuUpdateTransport", "sendCommand...");
        if (i != 0) {
            e(i);
        }
        a a2 = a.a();
        if (a2 == null) {
            return false;
        }
        if (a2.a(5, this.h.a())) {
            return true;
        }
        z.b("SealMcuUpdateTransport", "sendData error");
        return false;
    }

    private void g() {
        o.a(this.e.a() != null && this.e.b() > 0, "you should call prepareForUpdate() first.");
    }

    private boolean h() {
        return f(10000);
    }

    @Override // com.ifengyu.intercom.update.sealshark.e
    public boolean a() {
        g();
        f();
        SealProtos.SEAL_UpGradeFileRequest.Builder newBuilder = SealProtos.SEAL_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILECMD.SEAL_UP_START);
        newBuilder.setFType(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE);
        this.h.a(20012);
        z.d("SealMcuUpdateTransport", "SEAL_UpGradeFileRequest:" + newBuilder.build().toString());
        this.h.a(newBuilder.build());
        return h();
    }

    @Override // com.ifengyu.intercom.update.sealshark.e
    public boolean b() {
        f();
        SealProtos.SEAL_UpGradeFileRequest.Builder newBuilder = SealProtos.SEAL_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILECMD.SEAL_UP_REBOOT);
        newBuilder.setFType(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE);
        this.h.a(20012);
        z.d("SealMcuUpdateTransport", "upGradeFileRequest:" + newBuilder.build().toString());
        this.h.a(newBuilder.build());
        return f(0);
    }

    @Override // com.ifengyu.intercom.update.sealshark.e
    public boolean c() {
        f();
        int b2 = this.e.b();
        long a2 = h.a().a(this.e.a(), 0, this.e.b());
        if (z.a()) {
            z.a("SealMcuUpdateTransport", "Send upgrade finish: file length=" + b2 + ", crc32Result=" + a2);
        }
        SealProtos.SEAL_UpGradeFileRequest.Builder newBuilder = SealProtos.SEAL_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILECMD.SEAL_UP_COMPLE);
        newBuilder.setFType(SealProtos.SEAL_UpGradeFileRequest.SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE);
        newBuilder.setFSize(b2);
        newBuilder.setFCrc32((int) a2);
        z.d("SealMcuUpdateTransport", "upGradeFileRequest:" + newBuilder.build().toString());
        this.h.a(newBuilder.build());
        this.h.a(20012);
        return f(60000);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.ifengyu.intercom.update.sealshark.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean d(int r3) {
        /*
            r2 = this;
            boolean r0 = r2.d()
            r1 = 1
            if (r0 == 0) goto L_0x0037
            android.util.SparseArray<T> r3 = r2.f
            int r0 = r2.d
            java.lang.Object r3 = r3.get(r0)
            r2.g = r3
            if (r3 == 0) goto L_0x0068
            r2.f()
            com.ifengyu.intercom.node.l$a r3 = r2.h
            T r0 = r2.g
            com.ifengyu.intercom.node.l r0 = (com.ifengyu.intercom.node.l) r0
            int r0 = r0.a()
            r3.a(r0)
            com.ifengyu.intercom.node.l$a r3 = r2.h
            T r0 = r2.g
            com.ifengyu.intercom.node.l r0 = (com.ifengyu.intercom.node.l) r0
            com.google.protobuf.Message r0 = r0.b()
            r3.a(r0)
            boolean r3 = r2.h()
            if (r3 == 0) goto L_0x0068
            goto L_0x0069
        L_0x0037:
            com.ifengyu.intercom.update.sealshark.c<T> r0 = r2.e
            java.lang.Object r3 = r0.a(r3)
            r2.g = r3
            if (r3 == 0) goto L_0x0068
            r2.f()
            com.ifengyu.intercom.node.l$a r3 = r2.h
            T r0 = r2.g
            com.ifengyu.intercom.node.l r0 = (com.ifengyu.intercom.node.l) r0
            int r0 = r0.a()
            r3.a(r0)
            com.ifengyu.intercom.node.l$a r3 = r2.h
            T r0 = r2.g
            com.ifengyu.intercom.node.l r0 = (com.ifengyu.intercom.node.l) r0
            com.google.protobuf.Message r0 = r0.b()
            r3.a(r0)
            boolean r3 = r2.h()
            if (r3 == 0) goto L_0x0068
            r2.e()
            goto L_0x0069
        L_0x0068:
            r1 = 0
        L_0x0069:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.update.sealshark.g.d(int):boolean");
    }

    private void f() {
        if (this.h == null) {
            this.h = new l.a();
        }
    }
}
