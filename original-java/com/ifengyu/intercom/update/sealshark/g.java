package com.ifengyu.intercom.update.sealshark;

import android.app.AlarmManager;
import android.content.Context;
import com.google.protobuf.Message;
import com.ifengyu.intercom.b.b;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.m;
import com.ifengyu.intercom.node.m.a;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequest;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequest.Builder;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequest.SEAL_FILECMD;
import com.ifengyu.intercom.protos.SealProtos.SEAL_UpGradeFileRequest.SEAL_FILETYPE;

/* compiled from: SealMcuUpdateTransport */
class g extends b<m> {
    private a g;

    g(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new f(), "SealMcuUpdateTransport");
    }

    public boolean d() {
        i();
        h();
        Builder newBuilder = SEAL_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SEAL_FILECMD.SEAL_UP_START);
        newBuilder.setFType(SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE);
        this.g.a(20012);
        s.a("SealMcuUpdateTransport", "SEAL_UpGradeFileRequest:" + newBuilder.build().toString());
        this.g.a((Message) newBuilder.build());
        return g();
    }

    public boolean e(int i) {
        if (a()) {
            this.e = this.d.get(this.b);
            if (this.e != null) {
                h();
                this.g.a(((m) this.e).a());
                this.g.a(((m) this.e).b());
                if (g()) {
                    return true;
                }
            }
        } else {
            this.e = this.c.a(i);
            if (this.e != null) {
                h();
                this.g.a(((m) this.e).a());
                this.g.a(((m) this.e).b());
                if (g()) {
                    c();
                    return true;
                }
            }
        }
        return false;
    }

    public boolean e() {
        h();
        int b = this.c.b();
        long a = b.a().a(this.c.a(), 0, this.c.b());
        if (s.b()) {
            s.b("SealMcuUpdateTransport", "Send upgrade finish: file length=" + b + ", crc32Result=" + a);
        }
        Builder newBuilder = SEAL_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SEAL_FILECMD.SEAL_UP_COMPLE);
        newBuilder.setFType(SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE);
        newBuilder.setFSize(b);
        newBuilder.setFCrc32((int) a);
        s.a("SealMcuUpdateTransport", "upGradeFileRequest:" + newBuilder.build().toString());
        this.g.a((Message) newBuilder.build());
        this.g.a(20012);
        return f(60000);
    }

    public boolean f() {
        h();
        Builder newBuilder = SEAL_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SEAL_FILECMD.SEAL_UP_REBOOT);
        newBuilder.setFType(SEAL_FILETYPE.SEAL_APP_UPGRADE_FILE);
        this.g.a(20012);
        s.a("SealMcuUpdateTransport", "upGradeFileRequest:" + newBuilder.build().toString());
        this.g.a((Message) newBuilder.build());
        return f(0);
    }

    private boolean g() {
        return f(10000);
    }

    private boolean f(int i) {
        s.b("SealMcuUpdateTransport", "sendCommand...");
        if (i != 0) {
            d(i);
        }
        com.ifengyu.intercom.update.a a = com.ifengyu.intercom.update.a.a();
        if (a == null) {
            return false;
        }
        if (a.a(5, (com.ifengyu.intercom.node.a) this.g.a())) {
            return true;
        }
        s.e("SealMcuUpdateTransport", "sendData error");
        return false;
    }

    private void h() {
        if (this.g == null) {
            this.g = new a();
        }
    }

    private void i() {
        k.a(this.c.a() != null && this.c.b() > 0, (Object) "you should call prepareForUpdate() first.");
    }
}
