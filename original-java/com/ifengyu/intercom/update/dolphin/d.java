package com.ifengyu.intercom.update.dolphin;

import android.app.AlarmManager;
import android.content.Context;
import com.ifengyu.intercom.b.b;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.transport.e;
import com.ifengyu.intercom.protos.MitalkProtos.UPDATESTATECODE;
import com.ifengyu.intercom.update.a;

/* compiled from: BleUpdateTransport */
class d extends b<byte[]> {
    d(Context context, AlarmManager alarmManager) {
        super(context, alarmManager, new c(), "BleUpdateTransport");
    }

    public boolean h() {
        l();
        int b = this.c.b();
        int c = this.c.c();
        long a = b.a().a(this.c.a(), 0, this.c.c());
        if (s.b()) {
            s.b("BleUpdateTransport", "sendUpdateRequest: chunk count=" + b + ", file length=" + c + ", crc32Result=" + a);
        }
        this.e = new byte[16];
        e.a((byte[]) this.e, (long) UPDATESTATECODE.REQUEST.ordinal(), 0, 1);
        e.a((byte[]) this.e, (long) this.b.getNumber(), 1, 1);
        e.a((byte[]) this.e, (long) b, 2, 2);
        e.a((byte[]) this.e, (long) c, 4, 4);
        e.a((byte[]) this.e, a, 8, 4);
        e.a((byte[]) this.e, (long) this.g, 12, 4);
        return a((byte[]) this.e);
    }

    public boolean i() {
        if (d()) {
            this.e = this.d.get(this.f);
            if (this.e != null && a((byte[]) this.e)) {
                this.f++;
                return true;
            }
        } else {
            this.f = this.c.d();
            this.e = this.c.f();
            if (this.e != null && a((byte[]) this.e)) {
                g();
                this.f++;
                return true;
            }
        }
        return false;
    }

    public boolean j() {
        this.e = new byte[1];
        e.a((byte[]) this.e, (long) UPDATESTATECODE.FINISH.ordinal(), 0, 1);
        return a((byte[]) this.e, 60000);
    }

    public boolean k() {
        this.e = new byte[1];
        e.a((byte[]) this.e, (long) UPDATESTATECODE.RESTART.ordinal(), 0, 1);
        return a((byte[]) this.e, 0);
    }

    private boolean a(byte[] bArr) {
        return a(bArr, 10000);
    }

    private boolean a(byte[] bArr, int i) {
        s.b("BleUpdateTransport", "sendBinaryData...");
        if (i != 0) {
            d(i);
        }
        a a = a.a();
        if (a == null) {
            return false;
        }
        if (a.a(bArr)) {
            return true;
        }
        s.e("BleUpdateTransport", "sendDolphinData error");
        return false;
    }

    private void l() {
        k.a(this.c.a() != null && this.c.c() > 0, (Object) "you should call prepareForUpdate() first.");
    }
}
