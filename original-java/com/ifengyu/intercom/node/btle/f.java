package com.ifengyu.intercom.node.btle;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.ConnectionPermissionException;
import com.ifengyu.intercom.node.VersionMismatchException;
import com.ifengyu.intercom.node.q.c;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionThread.java */
/* loaded from: classes2.dex */
public class f extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5890a;

    /* renamed from: b  reason: collision with root package name */
    private final BtleCentralService f5891b;

    /* renamed from: c  reason: collision with root package name */
    private final Lock f5892c;
    private final Condition d;
    private final Handler e;
    private final PendingIntent f;
    private final BluetoothDevice g;
    private final ConnectionConfiguration h;
    private final PowerManager.WakeLock j;
    private Method k;
    private c l;
    private volatile boolean m = false;
    private final Runnable n = new a();
    private final AtomicBoolean i = new AtomicBoolean(true);

    /* compiled from: ConnectionThread.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.c("ConnectionThread", "sending retry broadcast");
            ((AlarmManager) f.this.f5890a.getSystemService("alarm")).cancel(f.this.f);
            f.this.f5890a.sendBroadcast(new Intent("com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION", new Uri.Builder().scheme("content").authority(f.this.h.a()).build()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context, BtleCentralService btleCentralService, BluetoothDevice bluetoothDevice, ConnectionConfiguration connectionConfiguration, Handler handler) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f5892c = reentrantLock;
        this.d = reentrantLock.newCondition();
        this.f5890a = context;
        this.f5891b = btleCentralService;
        this.g = bluetoothDevice;
        this.h = connectionConfiguration;
        this.e = handler;
        this.j = ((PowerManager) this.f5890a.getSystemService("power")).newWakeLock(1, "ConnectionThread[" + this.g.getName() + "]");
        this.f = PendingIntent.getBroadcast(this.f5890a, 1, new Intent("com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION", new Uri.Builder().scheme("content").authority(this.h.a()).build()), 134217728);
        c f = c.f();
        this.l = f;
        f.b();
        if (c0.f(19)) {
            try {
                this.k = AlarmManager.class.getMethod("setExact", Integer.TYPE, Long.TYPE, PendingIntent.class);
            } catch (NoSuchMethodException unused) {
                this.k = null;
            }
        }
    }

    private void d() {
        if (this.j.isHeld()) {
            this.j.release();
        }
    }

    private void e() throws GattException {
        z.a("ConnectionThread", "Setting up a Bluetooth connection");
        this.f5891b.a(this.g);
        synchronized (this) {
            this.f5891b.k();
        }
    }

    private void f() {
        z.d("ConnectionThread", "Setting up a walktalk connection");
        try {
            this.f5891b.a(ConnectState.CONNECTED);
            com.ifengyu.intercom.service.a.b().a(this.f5891b.g(), this.f5891b.i(), com.ifengyu.intercom.service.a.b().a(), this.f5891b.c(), this.f5891b.h(), this.e);
        } catch (ConnectionPermissionException e) {
            z.e("ConnectionThread", "ConnectionPermissionException:" + e.getMessage());
            c();
            this.f5891b.a(true);
            this.l.d();
        } catch (VersionMismatchException e2) {
            z.e("ConnectionThread", "VersionMismatchException:" + e2.getMessage());
            c();
            this.f5891b.a(true);
            this.l.d();
        }
    }

    private void g() throws InterruptedException {
        long a2 = this.l.a();
        this.f5892c.lock();
        try {
            try {
                a(SystemClock.elapsedRealtime() + a2);
                this.e.removeCallbacks(this.n);
                this.e.postDelayed(this.n, a2);
                z.a("ConnectionThread", "Alarm set. Releasing the WakeLock so that the device may sleep..");
                d();
                if (z.a()) {
                    z.a("ConnectionThread", "Waiting " + (a2 / 1000) + " seconds to retry the connection..");
                }
                while (!this.m) {
                    this.d.await();
                }
                this.m = false;
            } catch (InterruptedException unused) {
                Thread.interrupted();
            }
        } finally {
            this.f5892c.unlock();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        z.d("ConnectionThread", "Try to set up new connection");
        GattException e = null;
        while (!this.f5891b.o()) {
            try {
            } catch (GattException e2) {
                e = e2;
                z.b("ConnectionThread", "Got GattException while setup connection: " + e.getMessage());
                this.f5891b.a(e);
            } catch (RuntimeException e3) {
                if (Thread.currentThread().isInterrupted()) {
                    z.e("ConnectionThread", "ConnectionThread was interrupted");
                }
                z.b("ConnectionThread", "Got RuntimeException while setup connection: " + e3.getMessage());
            }
            if (this.f5891b.a(ConnectState.CONNECTING, "Starting connection thread")) {
                e();
                this.l.e();
                this.l.a(true);
                this.f5891b.r();
                f();
                this.f5891b.a(ConnectState.DISCONNECTED);
                if (!this.f5891b.o()) {
                    z.a("ConnectionThread", "Acquiring the WakeLock so that an alarm can be set.");
                    b();
                    try {
                        g();
                        z.d("ConnectionThread", "Releasing the WakeLock so that the device may go sleep..");
                        d();
                        a(e);
                    } catch (InterruptedException unused) {
                        z.b("ConnectionThread", "Connection interrupted, shutting down. isInterrupted: " + isInterrupted());
                    }
                }
                synchronized (this.i) {
                    this.i.set(false);
                    d();
                }
            } else {
                return;
            }
        }
    }

    private void a(GattException gattException) {
        z.a("ConnectionThread", "doReconnectionWork");
        c();
        synchronized (this) {
            this.f5891b.a(ConnectState.CONNECTING);
            if (gattException != null) {
                this.f5891b.k();
                z.e("ConnectionThread", "Got Exception:" + gattException.getMessage());
                if (this.f5891b.e() != 0 && this.f5891b.e() % 3 == 0) {
                    z.e("ConnectionThread", "Too many consecutive failures.  maybe need refreshing bluetooth");
                }
                this.f5891b.e();
                if (this.f5891b.e() >= 16) {
                    z.e("ConnectionThread", "Too many consecutive failures.  give up connecting.");
                    this.f5891b.q();
                    this.f5891b.j();
                }
            }
        }
    }

    private boolean b() {
        synchronized (this.i) {
            if (!this.i.get()) {
                return false;
            }
            this.j.acquire();
            return true;
        }
    }

    private void c() {
        if (this.f5891b.l() && this.f5891b.f().f()) {
            z.a("ConnectionThread", "disconnecting");
            this.f5891b.a();
        }
        this.f5891b.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f5892c.lock();
        try {
            this.e.removeCallbacks(this.n);
            ((AlarmManager) this.f5890a.getSystemService("alarm")).cancel(this.f);
            this.m = true;
            z.a("ConnectionThread", "Acquiring the WakeLock to signal a connection retry.");
            b();
            this.d.signal();
        } finally {
            this.f5892c.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(long r8) {
        /*
            r7 = this;
            android.content.Context r0 = r7.f5890a
            java.lang.String r1 = "alarm"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.app.AlarmManager r0 = (android.app.AlarmManager) r0
            java.lang.reflect.Method r1 = r7.k
            r2 = 1
            r3 = 0
            r4 = 2
            java.lang.String r5 = "ConnectionThread"
            if (r1 == 0) goto L_0x0041
            r1 = 19
            boolean r1 = com.ifengyu.intercom.i.c0.f(r1)
            if (r1 == 0) goto L_0x0041
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.Integer r6 = java.lang.Integer.valueOf(r4)
            r1[r3] = r6
            java.lang.Long r6 = java.lang.Long.valueOf(r8)
            r1[r2] = r6
            android.app.PendingIntent r6 = r7.f
            r1[r4] = r6
            java.lang.String r6 = "set exact alarm"
            com.ifengyu.intercom.i.z.c(r5, r6)     // Catch: InvocationTargetException -> 0x0039, IllegalArgumentException -> 0x003b, IllegalAccessException -> 0x003d
            java.lang.reflect.Method r6 = r7.k     // Catch: InvocationTargetException -> 0x0039, IllegalArgumentException -> 0x003b, IllegalAccessException -> 0x003d
            r6.invoke(r0, r1)     // Catch: InvocationTargetException -> 0x0039, IllegalArgumentException -> 0x003b, IllegalAccessException -> 0x003d
            goto L_0x0042
        L_0x0039:
            r1 = move-exception
            goto L_0x003e
        L_0x003b:
            r1 = move-exception
            goto L_0x003e
        L_0x003d:
            r1 = move-exception
        L_0x003e:
            com.ifengyu.intercom.i.z.a(r5, r1)
        L_0x0041:
            r2 = 0
        L_0x0042:
            if (r2 != 0) goto L_0x004e
            java.lang.String r1 = "set"
            com.ifengyu.intercom.i.z.e(r5, r1)
            android.app.PendingIntent r1 = r7.f
            r0.set(r4, r8, r1)
        L_0x004e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.node.btle.f.a(long):void");
    }
}
