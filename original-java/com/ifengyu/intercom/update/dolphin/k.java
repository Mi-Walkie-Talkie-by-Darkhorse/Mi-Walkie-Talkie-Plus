package com.ifengyu.intercom.update.dolphin;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.node.p;
import com.ifengyu.intercom.node.q.d;
import com.ifengyu.intercom.protos.MitalkProtos;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: UpdateHelper.java */
/* loaded from: classes2.dex */
public class k implements f {
    private static k p;

    /* renamed from: a  reason: collision with root package name */
    private Context f7138a;
    private g f;
    private AlarmManager i;
    private c n;

    /* renamed from: b  reason: collision with root package name */
    private int f7139b = 200;

    /* renamed from: c  reason: collision with root package name */
    private int f7140c = 200;
    private int d = 200;
    private MitalkProtos.UPDATESTATECODE e = MitalkProtos.UPDATESTATECODE.PREPARE;
    private Lock g = new ReentrantLock();
    private final Lock h = new ReentrantLock();
    private int j = 0;
    private int k = 0;
    private volatile boolean l = false;
    private volatile boolean m = false;
    private final BroadcastReceiver o = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UpdateHelper.java */
    /* loaded from: classes2.dex */
    public class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o.a(intent.getAction().equals("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
            k.this.a(0);
        }
    }

    /* compiled from: UpdateHelper.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7142a;

        static {
            int[] iArr = new int[MitalkProtos.UPDATESTATECODE.values().length];
            f7142a = iArr;
            try {
                iArr[MitalkProtos.UPDATESTATECODE.REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7142a[MitalkProtos.UPDATESTATECODE.TRANSPORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7142a[MitalkProtos.UPDATESTATECODE.FINISH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7142a[MitalkProtos.UPDATESTATECODE.PREPARE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UpdateHelper.java */
    /* loaded from: classes2.dex */
    public class c extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f7143a;

        private c() {
        }

        void a() {
            this.f7143a = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f7143a = false;
            while (!this.f7143a) {
                if ((k.this.f.hasNext() && k.this.f.f() <= 2) || k.this.f.d()) {
                    k.this.f.e();
                } else if (!j.b().a()) {
                    k.this.c(false);
                    return;
                }
                try {
                    k.this.m();
                } catch (InterruptedException unused) {
                    z.d("UpdateHelper", "SendDataThread interrupted.");
                }
            }
        }

        /* synthetic */ c(k kVar, a aVar) {
            this();
        }
    }

    private k(Context context, boolean z) {
        this.f7138a = context;
        this.i = (AlarmManager) context.getSystemService("alarm");
        this.f7138a.registerReceiver(this.o, new IntentFilter("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
        com.ifengyu.intercom.h.a.a().a(this);
        this.f = a(z);
    }

    private void e() {
        int i;
        p b2 = com.ifengyu.intercom.service.a.b();
        if ((b2 != null ? b2.b() : 0) >= 160) {
            i = c0.f(21) ? 100 : 200;
        } else {
            i = 100000;
        }
        this.d = i;
        this.f7139b = i;
        this.f7140c = i;
        z.a("UpdateHelper", "adjustSendInterval: interval=" + i);
    }

    private void f() {
        AlarmManager alarmManager = this.i;
        if (alarmManager != null) {
            alarmManager.cancel(h());
        }
    }

    private void g() {
        int i;
        int i2 = this.f7139b;
        if (i2 <= this.d && i2 <= (i = this.f7140c) && i2 > 5) {
            int i3 = i2 - 5;
            this.f7139b = i3;
            if (i3 < i) {
                this.f7140c = i3;
            }
            z.a("UpdateHelper", "decrease sendInterval to " + this.f7139b);
        }
    }

    private PendingIntent h() {
        return PendingIntent.getBroadcast(this.f7138a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.f7138a.getPackageName()), 268435456);
    }

    private void i() {
        int i = this.f7139b;
        if (i >= this.d || i <= this.f7140c) {
            this.f7139b += 5;
            z.a("UpdateHelper", "increase sendInterval to " + this.f7139b);
        }
    }

    private void j() {
        synchronized (this.h) {
            this.h.notifyAll();
        }
    }

    private void k() {
        c cVar = this.n;
        if (cVar != null) {
            cVar.a();
            this.n = null;
        }
    }

    private void l() {
        this.k = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() throws InterruptedException {
        synchronized (this.h) {
            this.h.wait();
        }
    }

    public boolean c() {
        return this.m;
    }

    public void d() {
        if (!this.l) {
            com.ifengyu.intercom.h.a.a().a((f) null);
        }
        if (p != null) {
            p = null;
        }
        d a2 = com.ifengyu.intercom.service.a.a();
        if (a2 != null) {
            a2.a(d0.p(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        if (!this.l) {
            if (this.e.ordinal() > MitalkProtos.UPDATESTATECODE.REQUEST.ordinal() && !z) {
                this.f.b();
            }
            this.f7138a.unregisterReceiver(this.o);
            f();
            this.f.release();
            k();
            this.i = null;
            this.l = true;
            this.m = z;
        }
    }

    public boolean b() {
        return this.l;
    }

    private boolean b(int i, MitalkProtos.FILETYPE filetype, String str) {
        if (z.c()) {
            z.d("UpdateHelper", "prepareForUpdate: version=" + i + ", updateType=" + filetype.name() + ", filePath=" + str);
        }
        this.l = false;
        this.m = false;
        e();
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        this.f.a(str, i, filetype);
        a(2, MitalkProtos.UPDATESTATECODE.PREPARE);
        return true;
    }

    private g a(boolean z) {
        if (z) {
            return new i(this.f7138a, this.i);
        }
        return new d(this.f7138a, this.i);
    }

    public static k a(Context context, boolean z) {
        if (p == null) {
            p = new k(context, z);
        }
        return p;
    }

    @Override // com.ifengyu.intercom.update.dolphin.f
    public void a(MitalkProtos.UPDATESTATECODE updatestatecode, boolean z, int i) {
        z.a("UpdateHelper", "processReceivedAck: state=" + updatestatecode + ", result=" + z + ", ackId=" + i);
        this.g.lock();
        try {
            o.b(this.e == updatestatecode, "invalid state, Expecting state is %s, but got %s", this.e.name(), updatestatecode.name());
            int i2 = b.f7142a[updatestatecode.ordinal()];
            if (i2 == 1) {
                a(z, i);
            } else if (i2 == 2) {
                b(z, i);
            } else if (i2 == 3) {
                b(z);
            }
        } finally {
            this.g.unlock();
        }
    }

    private void b(boolean z, int i) {
        if (z.a()) {
            z.a("UpdateHelper", "onTransportAckReceived: result=" + z + ", ackId=" + i);
        }
        if (z) {
            f();
            l();
            g();
            this.f.c(i);
            if (this.f.g()) {
                a(99, MitalkProtos.UPDATESTATECODE.FINISH);
                if (!this.f.c()) {
                    c(false);
                }
                k();
                return;
            }
            j();
            return;
        }
        z.b("UpdateHelper", "response false or not expected ackId, ackId=" + i + ", expected ackId=" + this.f.h());
        i();
        a(i);
    }

    @Override // com.ifengyu.intercom.update.dolphin.f
    public void a(MitalkProtos.STATECODE statecode, int i) {
        z.a("UpdateHelper", "processReceivedAck state=" + this.e + ", result=" + statecode + ", ackId=" + i);
        this.g.lock();
        try {
            int i2 = b.f7142a[this.e.ordinal()];
            boolean z = false;
            if (i2 == 1) {
                if (statecode == MitalkProtos.STATECODE.SUCCESS) {
                    z = true;
                }
                a(z, i);
            } else if (i2 == 2) {
                if (statecode == MitalkProtos.STATECODE.SUCCESS) {
                    z = true;
                }
                b(z, i);
            } else if (i2 == 3) {
                if (statecode == MitalkProtos.STATECODE.SUCCESS) {
                    z = true;
                }
                b(z);
            }
        } finally {
            this.g.unlock();
        }
    }

    private void b(boolean z) {
        if (z) {
            f();
            l();
            a(100, MitalkProtos.UPDATESTATECODE.RESTART);
            if (!this.f.b()) {
                c(false);
            } else {
                c(true);
            }
        } else {
            z.b("UpdateHelper", "update failed, maybe crc32 is not right.");
            c(false);
        }
    }

    public void a(int i, MitalkProtos.FILETYPE filetype, String str) {
        if (!b(i, filetype, str)) {
            z.b("UpdateHelper", "prepare update error.");
            c(false);
            return;
        }
        d a2 = com.ifengyu.intercom.service.a.a();
        if (a2 != null) {
            a2.a(d0.p(), true);
        }
        this.e = MitalkProtos.UPDATESTATECODE.REQUEST;
        this.f.a();
    }

    public int a() {
        int i;
        int i2 = b.f7142a[this.e.ordinal()];
        if (i2 == 1) {
            int i3 = this.j;
            if (i3 < 4) {
                this.j = i3 + 1;
            }
        } else if (i2 == 2) {
            int i4 = this.j;
            if (i4 < 98) {
                this.j = this.f.a(i4);
            }
        } else if (i2 == 3) {
            int i5 = this.j;
            if (i5 < 99) {
                this.j = i5 + 1;
            }
        } else if (i2 == 4 && (i = this.j) < 1) {
            this.j = i + 1;
        }
        return this.j;
    }

    private void a(int i, MitalkProtos.UPDATESTATECODE updatestatecode) {
        this.j = i;
        this.e = updatestatecode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        z.e("UpdateHelper", "handleAckWaitingTimerFired");
        this.g.lock();
        try {
            int i2 = this.k + 1;
            this.k = i2;
            if (i2 == 5) {
                z.b("UpdateHelper", "Too many consecutive failures, discard update.");
                c(false);
            } else if (this.e == MitalkProtos.UPDATESTATECODE.REQUEST) {
                z.b("UpdateHelper", "update request timeout, discard update.");
                c(false);
            } else if (this.e == MitalkProtos.UPDATESTATECODE.FINISH) {
                z.b("UpdateHelper", "wait crc32 result timeout, discard update.");
                c(false);
            } else {
                if (this.f != null) {
                    this.f.b(i);
                }
                j();
            }
        } finally {
            this.g.unlock();
        }
    }

    private void a(boolean z, int i) {
        if (z.a()) {
            z.a("UpdateHelper", "onRequestAckReceived, result=" + z + ", ackId=" + i);
        }
        if (!z || i != 0) {
            z.b("UpdateHelper", "response false or not expected ack, exit update.");
            c(false);
            return;
        }
        f();
        l();
        a(5, MitalkProtos.UPDATESTATECODE.TRANSPORT);
        if (this.n == null) {
            this.n = new c(this, null);
        }
        this.n.start();
    }
}
