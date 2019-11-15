package com.ifengyu.intercom.update.dolphin;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.node.a.d;
import com.ifengyu.intercom.node.q;
import com.ifengyu.intercom.protos.MitalkProtos.FILETYPE;
import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.protos.MitalkProtos.UPDATESTATECODE;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: UpdateHelper */
public class k implements f {
    private static k a;
    private Context b;
    private int c = 200;
    private int d = this.c;
    private int e = this.c;
    private UPDATESTATECODE f = UPDATESTATECODE.PREPARE;
    /* access modifiers changed from: private */
    public g g;
    private Lock h = new ReentrantLock();
    private final Lock i = new ReentrantLock();
    private AlarmManager j;
    private int k = 0;
    private int l = 0;
    private volatile boolean m = false;
    private volatile boolean n = false;
    private a o;
    private final BroadcastReceiver p = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            com.ifengyu.intercom.b.k.a(intent.getAction().equals("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
            k.this.a(0);
        }
    };

    /* compiled from: UpdateHelper */
    private class a extends Thread {
        private volatile boolean b;

        private a() {
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.b = true;
        }

        public void run() {
            this.b = false;
            while (!this.b) {
                if ((k.this.g.c() && k.this.g.a() <= 2) || k.this.g.d()) {
                    k.this.g.i();
                } else if (!com.ifengyu.intercom.node.k.a().b()) {
                    k.this.b(false);
                    return;
                }
                try {
                    k.this.l();
                } catch (InterruptedException e) {
                    s.a("UpdateHelper", "SendDataThread interrupted.");
                }
            }
        }
    }

    private k(Context context, boolean z) {
        this.b = context;
        this.j = (AlarmManager) this.b.getSystemService("alarm");
        this.b.registerReceiver(this.p, new IntentFilter("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
        com.ifengyu.intercom.update.a.a().a((f) this);
        this.g = a(z);
    }

    private g a(boolean z) {
        if (z) {
            return new i(this.b, this.j);
        }
        return new d(this.b, this.j);
    }

    public static k a(Context context, boolean z) {
        if (a == null) {
            a = new k(context, z);
        }
        return a;
    }

    public void a() {
        if (!this.m) {
            com.ifengyu.intercom.update.a.a().a((f) null);
        }
        if (a != null) {
            a = null;
        }
        d b2 = com.ifengyu.intercom.service.a.b();
        if (b2 != null) {
            b2.a(w.af(), false);
        }
    }

    public void a(UPDATESTATECODE updatestatecode, boolean z, int i2) {
        boolean z2 = true;
        s.b("UpdateHelper", "processReceivedAck: state=" + updatestatecode + ", result=" + z + ", ackId=" + i2);
        this.h.lock();
        try {
            if (this.f != updatestatecode) {
                z2 = false;
            }
            com.ifengyu.intercom.b.k.a(z2, "invalid state, Expecting state is %s, but got %s", this.f.name(), updatestatecode.name());
            switch (updatestatecode) {
                case REQUEST:
                    a(z, i2);
                    break;
                case TRANSPORT:
                    b(z, i2);
                    break;
                case FINISH:
                    c(z);
                    break;
            }
        } finally {
            this.h.unlock();
        }
    }

    public void a(STATECODE statecode, int i2) {
        boolean z = true;
        s.b("UpdateHelper", "processReceivedAck state=" + this.f + ", result=" + statecode + ", ackId=" + i2);
        this.h.lock();
        try {
            switch (this.f) {
                case REQUEST:
                    if (statecode != STATECODE.SUCCESS) {
                        z = false;
                    }
                    a(z, i2);
                    break;
                case TRANSPORT:
                    if (statecode != STATECODE.SUCCESS) {
                        z = false;
                    }
                    b(z, i2);
                    break;
                case FINISH:
                    if (statecode != STATECODE.SUCCESS) {
                        z = false;
                    }
                    c(z);
                    break;
            }
        } finally {
            this.h.unlock();
        }
    }

    public void a(int i2, FILETYPE filetype, String str) {
        if (!b(i2, filetype, str)) {
            s.e("UpdateHelper", "prepare update error.");
            b(false);
            return;
        }
        d b2 = com.ifengyu.intercom.service.a.b();
        if (b2 != null) {
            b2.a(w.af(), true);
        }
        this.f = UPDATESTATECODE.REQUEST;
        this.g.h();
    }

    public int b() {
        switch (this.f) {
            case REQUEST:
                if (this.k < 4) {
                    this.k++;
                    break;
                }
                break;
            case TRANSPORT:
                if (this.k < 98) {
                    this.k = this.g.a(this.k);
                    break;
                }
                break;
            case FINISH:
                if (this.k < 99) {
                    this.k++;
                    break;
                }
                break;
            case PREPARE:
                if (this.k < 1) {
                    this.k++;
                    break;
                }
                break;
        }
        return this.k;
    }

    public boolean c() {
        return this.m;
    }

    public boolean d() {
        return this.n;
    }

    private boolean b(int i2, FILETYPE filetype, String str) {
        if (s.a()) {
            s.a("UpdateHelper", "prepareForUpdate: version=" + i2 + ", updateType=" + filetype.name() + ", filePath=" + str);
        }
        this.m = false;
        this.n = false;
        e();
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        this.g.a(str, i2, filetype);
        a(2, UPDATESTATECODE.PREPARE);
        return true;
    }

    private void e() {
        q a2 = com.ifengyu.intercom.service.a.a();
        int i2 = 200;
        int i3 = 0;
        if (a2 != null) {
            i3 = a2.b();
        }
        if (i3 < 160) {
            i2 = 100000;
        } else if (v.h(21)) {
            i2 = 100;
        }
        this.e = i2;
        this.c = i2;
        this.d = this.c;
        s.b("UpdateHelper", "adjustSendInterval: interval=" + i2);
    }

    private void a(int i2, UPDATESTATECODE updatestatecode) {
        this.k = i2;
        this.f = updatestatecode;
    }

    /* access modifiers changed from: private */
    public void b(boolean z) {
        if (!this.m) {
            if (this.f.ordinal() > UPDATESTATECODE.REQUEST.ordinal() && !z) {
                this.g.k();
            }
            this.b.unregisterReceiver(this.p);
            g();
            this.g.f();
            f();
            this.j = null;
            this.m = true;
            this.n = z;
        }
    }

    private void f() {
        if (this.o != null) {
            this.o.a();
            this.o = null;
        }
    }

    /* access modifiers changed from: private */
    public void a(int i2) {
        s.d("UpdateHelper", "handleAckWaitingTimerFired");
        this.h.lock();
        try {
            this.l++;
            if (this.l == 5) {
                s.e("UpdateHelper", "Too many consecutive failures, discard update.");
                b(false);
            } else if (this.f == UPDATESTATECODE.REQUEST) {
                s.e("UpdateHelper", "update request timeout, discard update.");
                b(false);
                this.h.unlock();
            } else if (this.f == UPDATESTATECODE.FINISH) {
                s.e("UpdateHelper", "wait crc32 result timeout, discard update.");
                b(false);
                this.h.unlock();
            } else {
                if (this.g != null) {
                    this.g.b(i2);
                }
                m();
                this.h.unlock();
            }
        } finally {
            this.h.unlock();
        }
    }

    private void g() {
        if (this.j != null) {
            this.j.cancel(h());
        }
    }

    private PendingIntent h() {
        return PendingIntent.getBroadcast(this.b, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.b.getPackageName()), 268435456);
    }

    private void a(boolean z, int i2) {
        if (s.b()) {
            s.b("UpdateHelper", "onRequestAckReceived, result=" + z + ", ackId=" + i2);
        }
        if (!z || i2 != 0) {
            s.e("UpdateHelper", "response false or not expected ack, exit update.");
            b(false);
            return;
        }
        g();
        i();
        a(5, UPDATESTATECODE.TRANSPORT);
        if (this.o == null) {
            this.o = new a();
        }
        this.o.start();
    }

    private void b(boolean z, int i2) {
        if (s.b()) {
            s.b("UpdateHelper", "onTransportAckReceived: result=" + z + ", ackId=" + i2);
        }
        if (z) {
            g();
            i();
            k();
            this.g.c(i2);
            if (this.g.e()) {
                a(99, UPDATESTATECODE.FINISH);
                if (!this.g.j()) {
                    b(false);
                }
                f();
                return;
            }
            m();
            return;
        }
        s.e("UpdateHelper", "response false or not expected ackId, ackId=" + i2 + ", expected ackId=" + this.g.b());
        j();
        a(i2);
    }

    private void c(boolean z) {
        if (z) {
            g();
            i();
            a(100, UPDATESTATECODE.RESTART);
            if (!this.g.k()) {
                b(false);
            } else {
                b(true);
            }
        } else {
            s.e("UpdateHelper", "update failed, maybe crc32 is not right.");
            b(false);
        }
    }

    private void i() {
        this.l = 0;
    }

    private void j() {
        if (this.c >= this.e || this.c <= this.d) {
            this.c += 5;
            s.b("UpdateHelper", "increase sendInterval to " + this.c);
        }
    }

    private void k() {
        if (this.c <= this.e && this.c <= this.d && this.c > 5) {
            this.c -= 5;
            if (this.c < this.d) {
                this.d = this.c;
            }
            s.b("UpdateHelper", "decrease sendInterval to " + this.c);
        }
    }

    /* access modifiers changed from: private */
    public void l() throws InterruptedException {
        synchronized (this.i) {
            this.i.wait();
        }
    }

    private void m() {
        synchronized (this.i) {
            this.i.notifyAll();
        }
    }
}
