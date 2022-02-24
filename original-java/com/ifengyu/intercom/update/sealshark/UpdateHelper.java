package com.ifengyu.intercom.update.sealshark;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.o;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.node.p;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class UpdateHelper implements d {

    /* renamed from: a  reason: collision with root package name */
    private Context f7148a;
    private e f;
    private AlarmManager i;
    private int l;
    private e m;
    private d n;

    /* renamed from: b  reason: collision with root package name */
    private int f7149b = 200;

    /* renamed from: c  reason: collision with root package name */
    private int f7150c = 200;
    private int d = 200;
    private int e = -1;
    private Lock g = new ReentrantLock();
    private final Lock h = new ReentrantLock();
    private int j = 0;
    private volatile boolean k = false;
    private final BroadcastReceiver o = new a();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface UpdateState {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o.a(intent.getAction().equals("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
            UpdateHelper.this.f();
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UpdateHelper.this.m.a(UpdateHelper.this.f.a(UpdateHelper.this.l));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f7153a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f7154b;

        c(boolean z, int i) {
            this.f7153a = z;
            this.f7154b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (UpdateHelper.this.m == null) {
                return;
            }
            if (this.f7153a) {
                UpdateHelper.this.m.a();
            } else {
                UpdateHelper.this.m.b(this.f7154b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f7156a;

        private d() {
        }

        void a() {
            this.f7156a = true;
            UpdateHelper.this.h();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f7156a = false;
            while (!this.f7156a) {
                if (UpdateHelper.this.f.c(UpdateHelper.this.l)) {
                    if (!j.b().a()) {
                        UpdateHelper.this.b(false);
                        return;
                    }
                    UpdateHelper.this.f.d(UpdateHelper.this.l);
                }
                try {
                    UpdateHelper.this.k();
                } catch (InterruptedException unused) {
                    z.d("UpdateHelper", "SendDataThread interrupted.");
                }
            }
        }

        /* synthetic */ d(UpdateHelper updateHelper, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a();

        void a(int i);

        void b(int i);
    }

    public UpdateHelper(Context context) {
        this.f7148a = context;
        this.i = (AlarmManager) context.getSystemService("alarm");
        if (d0.g() == 5) {
            this.f = new g(this.f7148a, this.i);
        } else if (d0.g() == 4) {
            this.f = new i(this.f7148a, this.i);
        }
        this.f7148a.registerReceiver(this.o, new IntentFilter("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"));
        com.ifengyu.intercom.h.a.a().a(this);
    }

    private String a(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "unknow" : "completed" : "transmitting" : "ready";
    }

    private void g() {
        int i = this.f7149b;
        if (i >= this.d || i <= this.f7150c) {
            this.f7149b += 5;
            z.a("UpdateHelper", "increase sendInterval to " + this.f7149b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        synchronized (this.h) {
            this.h.notifyAll();
        }
    }

    private void i() {
        d dVar = this.n;
        if (dVar != null) {
            dVar.a();
            this.n = null;
        }
    }

    private void j() {
        this.j = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() throws InterruptedException {
        synchronized (this.h) {
            this.h.wait();
        }
    }

    private void b() {
        int i;
        p b2 = com.ifengyu.intercom.service.a.b();
        if ((b2 != null ? b2.b() : 0) >= 160) {
            i = Build.VERSION.SDK_INT >= 21 ? 100 : 200;
        } else {
            i = 100000;
        }
        this.d = i;
        this.f7149b = i;
        this.f7150c = i;
        z.a("UpdateHelper", "adjustSendInterval: interval=" + i);
    }

    private void c() {
        AlarmManager alarmManager = this.i;
        if (alarmManager != null) {
            alarmManager.cancel(e());
        }
    }

    private void d(boolean z, int i) {
        c cVar;
        if (!this.k) {
            if (this.e > 0 && !z) {
                this.f.b();
            }
            try {
                try {
                    this.f7148a.unregisterReceiver(this.o);
                    c();
                    this.f.release();
                    i();
                    this.i = null;
                    this.k = true;
                    this.e = -1;
                    cVar = new c(z, i);
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                    c();
                    this.f.release();
                    i();
                    this.i = null;
                    this.k = true;
                    this.e = -1;
                    cVar = new c(z, i);
                }
                k0.a(cVar);
            } catch (Throwable th) {
                c();
                this.f.release();
                i();
                this.i = null;
                this.k = true;
                this.e = -1;
                k0.a(new c(z, i));
                throw th;
            }
        }
    }

    private PendingIntent e() {
        return PendingIntent.getBroadcast(this.f7148a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.f7148a.getPackageName()), 268435456);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        z.e("UpdateHelper", "handleAckWaitingTimerFired");
        this.g.lock();
        try {
            int i = this.j + 1;
            this.j = i;
            if (i == 5) {
                z.b("UpdateHelper", "Too many consecutive failures, discard update.");
                b(false);
            } else if (this.e == 0) {
                z.b("UpdateHelper", "update request timeout, discard update.");
                b(false);
            } else if (this.e == 2) {
                z.b("UpdateHelper", "wait crc32 result timeout, discard update.");
                b(false);
            } else {
                h();
            }
        } finally {
            this.g.unlock();
        }
    }

    @Override // com.ifengyu.intercom.update.sealshark.d
    public void a(boolean z, int i) {
        z.a("UpdateHelper", "Current update state is " + a(this.e));
        this.l = i;
        this.g.lock();
        try {
            int i2 = this.e;
            if (i2 == 0) {
                b(z, this.l);
            } else if (i2 == 1) {
                c(z, this.l);
            } else if (i2 == 2) {
                a(z);
            }
            if (this.m != null && z && this.f.c(this.l)) {
                k0.a(new b());
            }
        } finally {
            this.g.unlock();
        }
    }

    private void c(boolean z, int i) {
        if (z.a()) {
            z.a("UpdateHelper", "onTransport: result=" + z + ", offset=" + i);
        }
        if (z) {
            c();
            j();
            d();
            this.f.b(i);
            if (!this.f.c(i)) {
                a(99, 2);
                if (!this.f.c()) {
                    b(false);
                }
                i();
                return;
            }
            h();
            return;
        }
        g();
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        d(z, 0);
    }

    private void b(boolean z, int i) {
        if (z.a()) {
            z.a("UpdateHelper", "onReady, result=" + z + ", offset=" + i);
        }
        if (!z || !this.f.c(i)) {
            z.b("UpdateHelper", "response false or not expected offset, exit update.");
            b(false);
            return;
        }
        c();
        j();
        a(5, 1);
        if (this.n == null) {
            this.n = new d(this, null);
        }
        this.n.start();
    }

    @Override // com.ifengyu.intercom.update.sealshark.d
    public void a() {
        d(false, 1);
    }

    public void a(int i, String str, e eVar) {
        if (this.e == -1) {
            this.m = eVar;
            if (!a(i, str)) {
                z.b("UpdateHelper", "prepare update error.");
                b(false);
                return;
            }
            this.e = 0;
            this.f.a();
        }
    }

    private boolean a(int i, String str) {
        if (z.c()) {
            z.d("UpdateHelper", "prepareForUpdate: version=" + i + ", filePath=" + str);
        }
        this.k = false;
        b();
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        this.f.a(str, i);
        a(2, 0);
        return true;
    }

    private void a(int i, int i2) {
        this.e = i2;
    }

    private void d() {
        int i;
        int i2 = this.f7149b;
        if (i2 <= this.d && i2 <= (i = this.f7150c) && i2 > 5) {
            int i3 = i2 - 5;
            this.f7149b = i3;
            if (i3 < i) {
                this.f7150c = i3;
            }
            z.a("UpdateHelper", "decrease sendInterval to " + this.f7149b);
        }
    }

    private void a(boolean z) {
        if (z) {
            c();
            j();
            a(100, 2);
            if (!this.f.b()) {
                b(false);
            } else {
                b(true);
            }
        } else {
            z.b("UpdateHelper", "update failed, maybe crc32 is not right.");
            b(false);
        }
    }
}
