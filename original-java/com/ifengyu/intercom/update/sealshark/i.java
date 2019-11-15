package com.ifengyu.intercom.update.sealshark;

import android.app.AlarmManager;
import android.content.Context;
import com.google.protobuf.Message;
import com.ifengyu.intercom.b.b;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.n;
import com.ifengyu.intercom.node.n.a;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequest;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequest.Builder;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequest.SHARK_FILECMD;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_UpGradeFileRequest.SHARK_FILETYPE;

/* compiled from: SharkMcuUpdateTransport */
class i extends b<n> {
    private a g;

    i(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new h(), "SharkMcuUpdateTransport");
    }

    public boolean d() {
        i();
        h();
        Builder newBuilder = SHARK_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SHARK_FILECMD.SHARK_UP_START);
        newBuilder.setFType(SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE);
        this.g.a(20012);
        s.b("SharkMcuUpdateTransport", "SHARK_UpGradeFileRequest:" + newBuilder.build().toString());
        this.g.a((Message) newBuilder.build());
        return g();
    }

    public boolean e(int i) {
        if (a()) {
            this.e = this.d.get(this.b);
            if (this.e != null) {
                h();
                this.g.a(((n) this.e).a());
                this.g.a(((n) this.e).b());
                if (g()) {
                    return true;
                }
            }
        } else {
            this.e = this.c.a(i);
            if (this.e != null) {
                h();
                this.g.a(((n) this.e).a());
                this.g.a(((n) this.e).b());
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
            s.b("SharkMcuUpdateTransport", "Send upgrade finish: file length=" + b + ", crc32Result=" + a);
        }
        Builder newBuilder = SHARK_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SHARK_FILECMD.SHARK_UP_COMPLE);
        newBuilder.setFType(SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE);
        newBuilder.setFSize(b);
        newBuilder.setFCrc32((int) a);
        s.b("SharkMcuUpdateTransport", "SHARK_UpGradeFileRequest:" + newBuilder.build().toString());
        this.g.a((Message) newBuilder.build());
        this.g.a(20012);
        return f(60000);
    }

    public boolean f() {
        h();
        Builder newBuilder = SHARK_UpGradeFileRequest.newBuilder();
        newBuilder.setVersion(1);
        newBuilder.setFCmd(SHARK_FILECMD.SHARK_UP_REBOOT);
        newBuilder.setFType(SHARK_FILETYPE.SHARK_APP_UPGRADE_FILE);
        this.g.a(20012);
        s.a("SharkMcuUpdateTransport", "upGradeFileRequest:" + newBuilder.build().toString());
        this.g.a((Message) newBuilder.build());
        return f(0);
    }

    private boolean g() {
        return f(10000);
    }

    private boolean f(int i) {
        s.b("SharkMcuUpdateTransport", "sendCommand...");
        if (i != 0) {
            d(i);
        }
        com.ifengyu.intercom.update.a a = com.ifengyu.intercom.update.a.a();
        if (a == null) {
            return false;
        }
        if (a.a(4, (com.ifengyu.intercom.node.a) this.g.a())) {
            return true;
        }
        s.e("SharkMcuUpdateTransport", "sendData error");
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
