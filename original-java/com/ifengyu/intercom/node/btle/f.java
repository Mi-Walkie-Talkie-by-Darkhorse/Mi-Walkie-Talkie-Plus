package com.ifengyu.intercom.node.btle;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.net.Uri.Builder;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.ConnectionPermissionException;
import com.ifengyu.intercom.node.VersionMismatchException;
import com.ifengyu.intercom.node.a.c;
import com.ifengyu.intercom.service.a;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: ConnectionThread */
class f extends Thread {
    /* access modifiers changed from: private */
    public final Context a;
    private final BtleCentralService b;
    private final Lock c = new ReentrantLock();
    private final Condition d = this.c.newCondition();
    private final Handler e;
    /* access modifiers changed from: private */
    public final PendingIntent f;
    private final BluetoothDevice g;
    /* access modifiers changed from: private */
    public final ConnectionConfiguration h;
    private final AtomicBoolean i;
    private final WakeLock j;
    private Method k;
    private c l;
    private volatile boolean m = false;
    private final Runnable n = new Runnable() {
        public void run() {
            s.c("ConnectionThread", "sending retry broadcast");
            ((AlarmManager) f.this.a.getSystemService("alarm")).cancel(f.this.f);
            f.this.a.sendBroadcast(new Intent("com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION", new Builder().scheme("content").authority(f.this.h.c()).build()));
        }
    };

    f(Context context, BtleCentralService btleCentralService, BluetoothDevice bluetoothDevice, ConnectionConfiguration connectionConfiguration, Handler handler) {
        this.a = context;
        this.b = btleCentralService;
        this.g = bluetoothDevice;
        this.h = connectionConfiguration;
        this.e = handler;
        this.i = new AtomicBoolean(true);
        this.j = ((PowerManager) this.a.getSystemService("power")).newWakeLock(1, "ConnectionThread[" + this.g.getName() + "]");
        this.f = PendingIntent.getBroadcast(this.a, 1, new Intent("com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION", new Builder().scheme("content").authority(this.h.c()).build()), 134217728);
        this.l = c.a();
        this.l.b();
        if (v.h(19)) {
            try {
                this.k = AlarmManager.class.getMethod("setExact", new Class[]{Integer.TYPE, Long.TYPE, PendingIntent.class});
            } catch (NoSuchMethodException e2) {
                this.k = null;
            }
        }
    }

    public void run() {
        s.a("ConnectionThread", "Try to set up new connection");
        GattException e2 = null;
        while (!this.b.c()) {
            try {
                if (this.b.a(ConnectState.CONNECTING, "Starting connection thread")) {
                    c();
                    this.l.c();
                    this.l.a(true);
                    this.b.h();
                    d();
                    this.b.a(ConnectState.DISCONNECTED);
                    if (!this.b.c()) {
                        s.b("ConnectionThread", "Acquiring the WakeLock so that an alarm can be set.");
                        f();
                        try {
                            g();
                            s.a("ConnectionThread", "Releasing the WakeLock so that the device may go sleep..");
                            b();
                            a(e2);
                        } catch (InterruptedException e3) {
                            s.e("ConnectionThread", "Connection interrupted, shutting down. isInterrupted: " + isInterrupted());
                        }
                    }
                    synchronized (this.i) {
                        this.i.set(false);
                        b();
                    }
                } else {
                    return;
                }
            } catch (GattException e4) {
                e2 = e4;
                s.e("ConnectionThread", "Got GattException while setup connection: " + e2.getMessage());
                this.b.a(e2);
            } catch (RuntimeException e5) {
                if (Thread.currentThread().isInterrupted()) {
                    s.d("ConnectionThread", "ConnectionThread was interrupted");
                }
                s.e("ConnectionThread", "Got RuntimeException while setup connection: " + e5.getMessage());
            }
        }
    }

    private void b() {
        if (this.j.isHeld()) {
            this.j.release();
        }
    }

    private void c() throws GattException {
        s.b("ConnectionThread", "Setting up a Bluetooth connection");
        this.b.a(this.g);
        synchronized (this) {
            this.b.o();
        }
    }

    private void d() {
        s.a("ConnectionThread", "Setting up a walktalk connection");
        try {
            this.b.a(ConnectState.CONNECTED);
            a.a().a(this.b.e(), this.b.f(), a.a().a(), this.b.s(), this.b.g(), this.e);
        } catch (VersionMismatchException e2) {
            s.d("ConnectionThread", "VersionMismatchException:" + e2.getMessage());
            e();
            this.b.a(true);
            this.l.f();
        } catch (ConnectionPermissionException e3) {
            s.d("ConnectionThread", "ConnectionPermissionException:" + e3.getMessage());
            e();
            this.b.a(true);
            this.l.f();
        }
    }

    private void a(GattException gattException) {
        s.b("ConnectionThread", "doReconnectionWork");
        e();
        synchronized (this) {
            this.b.a(ConnectState.CONNECTING);
            if (gattException != null) {
                this.b.o();
                s.d("ConnectionThread", "Got Exception:" + gattException.getMessage());
                if (this.b.p() != 0 && this.b.p() % 3 == 0) {
                    s.d("ConnectionThread", "Too many consecutive failures.  maybe need refreshing bluetooth");
                }
                if (this.b.p() == 6) {
                    v.a((CharSequence) this.a.getString(R.string.connect_need_restart_bluetooth), true);
                }
                if (this.b.p() >= 16) {
                    s.d("ConnectionThread", "Too many consecutive failures.  give up connecting.");
                    this.b.q();
                    this.b.r();
                }
            }
        }
    }

    private void e() {
        if (this.b.j() && this.b.n().b()) {
            s.b("ConnectionThread", "disconnecting");
            this.b.l();
        }
        this.b.d();
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        this.c.lock();
        try {
            this.e.removeCallbacks(this.n);
            ((AlarmManager) this.a.getSystemService("alarm")).cancel(this.f);
            this.m = true;
            s.b("ConnectionThread", "Acquiring the WakeLock to signal a connection retry.");
            f();
            this.d.signal();
        } finally {
            this.c.unlock();
        }
    }

    private boolean f() {
        boolean z;
        synchronized (this.i) {
            if (this.i.get()) {
                this.j.acquire();
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    private void g() throws InterruptedException {
        long d2 = this.l.d();
        this.c.lock();
        try {
            a(SystemClock.elapsedRealtime() + d2);
            this.e.removeCallbacks(this.n);
            this.e.postDelayed(this.n, d2);
            s.b("ConnectionThread", "Alarm set. Releasing the WakeLock so that the device may sleep..");
            b();
            if (s.b()) {
                s.b("ConnectionThread", "Waiting " + (d2 / 1000) + " seconds to retry the connection..");
            }
            while (!this.m) {
                this.d.await();
            }
            this.m = false;
        } catch (InterruptedException e2) {
            Thread.interrupted();
        } finally {
            this.c.unlock();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x003a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(long r8) {
        /*
            r7 = this;
            r1 = 1
            r2 = 0
            r6 = 2
            android.content.Context r0 = r7.a
            java.lang.String r3 = "alarm"
            java.lang.Object r0 = r0.getSystemService(r3)
            android.app.AlarmManager r0 = (android.app.AlarmManager) r0
            java.lang.reflect.Method r3 = r7.k
            if (r3 == 0) goto L_0x004d
            r3 = 19
            boolean r3 = com.ifengyu.intercom.b.v.h(r3)
            if (r3 == 0) goto L_0x004d
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.Integer r4 = java.lang.Integer.valueOf(r6)
            r3[r2] = r4
            java.lang.Long r4 = java.lang.Long.valueOf(r8)
            r3[r1] = r4
            android.app.PendingIntent r4 = r7.f
            r3[r6] = r4
            java.lang.String r4 = "ConnectionThread"
            java.lang.String r5 = "set exact alarm"
            com.ifengyu.intercom.b.s.c(r4, r5)     // Catch:{ IllegalAccessException -> 0x0047, IllegalArgumentException -> 0x004f, InvocationTargetException -> 0x0051 }
            java.lang.reflect.Method r4 = r7.k     // Catch:{ IllegalAccessException -> 0x0047, IllegalArgumentException -> 0x004f, InvocationTargetException -> 0x0051 }
            r4.invoke(r0, r3)     // Catch:{ IllegalAccessException -> 0x0047, IllegalArgumentException -> 0x004f, InvocationTargetException -> 0x0051 }
        L_0x0038:
            if (r1 != 0) goto L_0x0046
            java.lang.String r1 = "ConnectionThread"
            java.lang.String r2 = "set"
            com.ifengyu.intercom.b.s.d(r1, r2)
            android.app.PendingIntent r1 = r7.f
            r0.set(r6, r8, r1)
        L_0x0046:
            return
        L_0x0047:
            r1 = move-exception
        L_0x0048:
            java.lang.String r3 = "ConnectionThread"
            com.ifengyu.intercom.b.s.a(r3, r1)
        L_0x004d:
            r1 = r2
            goto L_0x0038
        L_0x004f:
            r1 = move-exception
            goto L_0x0048
        L_0x0051:
            r1 = move-exception
            goto L_0x0048
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.node.btle.f.a(long):void");
    }
}
