package com.ifengyu.intercom.update.sealshark;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.k;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.node.q;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class UpdateHelper implements d {
    private Context a;
    private int b = 200;
    private int c = this.b;
    private int d = this.b;
    private int e = -1;
    /* access modifiers changed from: private */
    public e f;
    private Lock g = new ReentrantLock();
    private final Lock h = new ReentrantLock();
    private AlarmManager i;
    private int j = 0;
    private int k = 0;
    private volatile boolean l = false;
    private volatile boolean m = false;
    /* access modifiers changed from: private */
    public int n;
    /* access modifiers changed from: private */
    public b o;
    private a p;
    private final BroadcastReceiver q = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            k.a(intent.getAction().equals("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
            UpdateHelper.this.d();
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    public @interface UpdateState {
    }

    private class a extends Thread {
        private volatile boolean b;

        private a() {
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.b = true;
            UpdateHelper.this.k();
        }

        public void run() {
            this.b = false;
            while (!this.b) {
                if (UpdateHelper.this.f.b(UpdateHelper.this.n)) {
                    if (!com.ifengyu.intercom.node.k.a().b()) {
                        UpdateHelper.this.a(false);
                        return;
                    }
                    UpdateHelper.this.f.e(UpdateHelper.this.n);
                }
                try {
                    UpdateHelper.this.j();
                } catch (InterruptedException e) {
                    s.a("UpdateHelper", "SendDataThread interrupted.");
                }
            }
        }
    }

    public interface b {
        void a();

        void a(int i);

        void b(int i);
    }

    public UpdateHelper(Context context) {
        this.a = context;
        this.i = (AlarmManager) this.a.getSystemService("alarm");
        if (w.ad() == 5) {
            this.f = new g(this.a, this.i);
        } else if (w.ad() == 4) {
            this.f = new i(this.a, this.i);
        }
        this.a.registerReceiver(this.q, new IntentFilter("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
        com.ifengyu.intercom.update.a.a().a((d) this);
    }

    private String a(int i2) {
        switch (i2) {
            case 0:
                return "ready";
            case 1:
                return "transmitting";
            case 2:
                return "completed";
            default:
                return "unknow";
        }
    }

    public void a(boolean z, int i2) {
        s.b("UpdateHelper", "Current update state is " + a(this.e));
        this.n = i2;
        this.g.lock();
        try {
            switch (this.e) {
                case 0:
                    c(z, this.n);
                    break;
                case 1:
                    d(z, this.n);
                    break;
                case 2:
                    b(z);
                    break;
            }
            if (this.o != null && z && this.f.b(this.n)) {
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        UpdateHelper.this.o.a(UpdateHelper.this.f.a(UpdateHelper.this.n));
                    }
                });
            }
        } finally {
            this.g.unlock();
        }
    }

    public void a() {
        b(false, 1);
    }

    public void a(int i2, String str, b bVar) {
        if (this.e == -1) {
            this.o = bVar;
            if (!a(i2, str)) {
                s.e("UpdateHelper", "prepare update error.");
                a(false);
                return;
            }
            this.e = 0;
            this.f.d();
        }
    }

    private boolean a(int i2, String str) {
        if (s.a()) {
            s.a("UpdateHelper", "prepareForUpdate: version=" + i2 + ", filePath=" + str);
        }
        this.l = false;
        this.m = false;
        b();
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        this.f.a(str, i2);
        a(2, 0);
        return true;
    }

    private void b() {
        q a2 = com.ifengyu.intercom.service.a.a();
        int i2 = 200;
        int i3 = 0;
        if (a2 != null) {
            i3 = a2.b();
        }
        if (i3 < 160) {
            i2 = 100000;
        } else if (VERSION.SDK_INT >= 21) {
            i2 = 100;
        }
        this.d = i2;
        this.b = i2;
        this.c = this.b;
        s.b("UpdateHelper", "adjustSendInterval: interval=" + i2);
    }

    private void a(int i2, int i3) {
        this.j = i2;
        this.e = i3;
    }

    /* access modifiers changed from: private */
    public void a(boolean z) {
        b(z, 0);
    }

    private void b(final boolean z, final int i2) {
        if (!this.l) {
            if (this.e > 0 && !z) {
                this.f.f();
            }
            try {
                this.a.unregisterReceiver(this.q);
            } catch (IllegalArgumentException e2) {
                ThrowableExtension.printStackTrace(e2);
            } finally {
                e();
                this.f.b();
                c();
                this.i = null;
                this.l = true;
                this.m = z;
                this.e = -1;
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        if (UpdateHelper.this.o == null) {
                            return;
                        }
                        if (z) {
                            UpdateHelper.this.o.a();
                        } else {
                            UpdateHelper.this.o.b(i2);
                        }
                    }
                });
            }
        }
    }

    private void c() {
        if (this.p != null) {
            this.p.a();
            this.p = null;
        }
    }

    /* access modifiers changed from: private */
    public void d() {
        s.d("UpdateHelper", "handleAckWaitingTimerFired");
        this.g.lock();
        try {
            this.k++;
            if (this.k == 5) {
                s.e("UpdateHelper", "Too many consecutive failures, discard update.");
                a(false);
            } else if (this.e == 0) {
                s.e("UpdateHelper", "update request timeout, discard update.");
                a(false);
                this.g.unlock();
            } else if (this.e == 2) {
                s.e("UpdateHelper", "wait crc32 result timeout, discard update.");
                a(false);
                this.g.unlock();
            } else {
                k();
                this.g.unlock();
            }
        } finally {
            this.g.unlock();
        }
    }

    private void e() {
        if (this.i != null) {
            this.i.cancel(f());
        }
    }

    private PendingIntent f() {
        return PendingIntent.getBroadcast(this.a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.a.getPackageName()), 268435456);
    }

    private void c(boolean z, int i2) {
        if (s.b()) {
            s.b("UpdateHelper", "onReady, result=" + z + ", offset=" + i2);
        }
        if (!z || !this.f.b(i2)) {
            s.e("UpdateHelper", "response false or not expected offset, exit update.");
            a(false);
            return;
        }
        e();
        g();
        a(5, 1);
        if (this.p == null) {
            this.p = new a();
        }
        this.p.start();
    }

    private void d(boolean z, int i2) {
        if (s.b()) {
            s.b("UpdateHelper", "onTransport: result=" + z + ", offset=" + i2);
        }
        if (z) {
            e();
            g();
            i();
            this.f.c(i2);
            if (!this.f.b(i2)) {
                a(99, 2);
                if (!this.f.e()) {
                    a(false);
                }
                c();
                return;
            }
            k();
            return;
        }
        h();
        d();
    }

    private void b(boolean z) {
        if (z) {
            e();
            g();
            a(100, 2);
            if (!this.f.f()) {
                a(false);
            } else {
                a(true);
            }
        } else {
            s.e("UpdateHelper", "update failed, maybe crc32 is not right.");
            a(false);
        }
    }

    private void g() {
        this.k = 0;
    }

    private void h() {
        if (this.b >= this.d || this.b <= this.c) {
            this.b += 5;
            s.b("UpdateHelper", "increase sendInterval to " + this.b);
        }
    }

    private void i() {
        if (this.b <= this.d && this.b <= this.c && this.b > 5) {
            this.b -= 5;
            if (this.b < this.c) {
                this.c = this.b;
            }
            s.b("UpdateHelper", "decrease sendInterval to " + this.b);
        }
    }

    /* access modifiers changed from: private */
    public void j() throws InterruptedException {
        synchronized (this.h) {
            this.h.wait();
        }
    }

    /* access modifiers changed from: private */
    public void k() {
        synchronized (this.h) {
            this.h.notifyAll();
        }
    }
}
