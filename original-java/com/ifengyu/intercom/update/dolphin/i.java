package com.ifengyu.intercom.update.dolphin;

import android.app.AlarmManager;
import android.content.Context;
import com.google.protobuf.Message;
import com.ifengyu.intercom.b.b;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.protos.MitalkProtos.CTRLCODE;
import com.ifengyu.intercom.protos.MitalkProtos.Command;
import com.ifengyu.intercom.protos.MitalkProtos.Control;
import com.ifengyu.intercom.protos.MitalkProtos.FILECMD;
import com.ifengyu.intercom.protos.MitalkProtos.FilePack.Builder;
import com.ifengyu.intercom.protos.MitalkProtos.FileRequest;
import com.ifengyu.intercom.update.a;

/* compiled from: McuUpdateTransport */
class i extends b<Builder> {
    private Command.Builder h;

    i(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new h(), "McuUpdateTransport");
    }

    public boolean h() {
        n();
        int b = this.c.b();
        int c = this.c.c();
        long a = b.a().a(this.c.a(), 0, this.c.c());
        if (s.b()) {
            s.b("McuUpdateTransport", "sendUpdateRequest: chunk count=" + b + ", file length=" + c + ", crc32Result=" + a);
        }
        m();
        FileRequest.Builder newBuilder = FileRequest.newBuilder();
        newBuilder.setVersion(w.a);
        newBuilder.setFCmd(FILECMD.START);
        newBuilder.setFType(this.b);
        newBuilder.setFSize(c);
        newBuilder.setFCrc32((int) a);
        newBuilder.setFVersion(this.g);
        newBuilder.setFPackNum(b);
        this.h.setFileReq(newBuilder);
        return l();
    }

    public boolean i() {
        if (d()) {
            this.e = this.d.get(this.f);
            if (this.e != null) {
                m();
                this.h.setFilePack((Builder) this.e);
                if (l()) {
                    this.f++;
                    return true;
                }
            }
        } else {
            this.f = this.c.d();
            this.e = this.c.f();
            if (this.e != null) {
                m();
                this.h.setFilePack((Builder) this.e);
                if (l()) {
                    g();
                    this.f++;
                    return true;
                }
            }
        }
        return false;
    }

    public boolean j() {
        m();
        FileRequest.Builder newBuilder = FileRequest.newBuilder();
        newBuilder.setVersion(w.a);
        newBuilder.setFCmd(FILECMD.COMPLETE);
        this.h.setFileReq(newBuilder);
        return e(60000);
    }

    public boolean k() {
        m();
        Control.Builder newBuilder = Control.newBuilder();
        newBuilder.setVersion(w.a);
        newBuilder.setCtrlCode(CTRLCODE.RSTDEVICE);
        this.h.setControl(newBuilder);
        return e(0);
    }

    private boolean l() {
        return e(10000);
    }

    private boolean e(int i) {
        s.b("McuUpdateTransport", "sendCommand...");
        if (i != 0) {
            d(i);
        }
        a a = a.a();
        if (a == null) {
            return false;
        }
        if (a.a((Message) this.h.build())) {
            return true;
        }
        s.e("McuUpdateTransport", "sendDolphinData error");
        return false;
    }

    private void m() {
        if (this.h == null) {
            this.h = Command.newBuilder();
        }
        this.h.clear();
    }

    private void n() {
        k.a(this.c.a() != null && this.c.c() > 0, (Object) "you should call prepareForUpdate() first.");
    }
}
