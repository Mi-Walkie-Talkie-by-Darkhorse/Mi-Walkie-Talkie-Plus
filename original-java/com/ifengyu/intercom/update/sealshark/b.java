package com.ifengyu.intercom.update.sealshark;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.SparseArray;
import com.ifengyu.intercom.b.s;

/* compiled from: AbsUpdateTransport */
abstract class b<T> implements e {
    protected Context a;
    protected int b;
    c<T> c;
    SparseArray<T> d = new SparseArray<>();
    T e;
    int f;
    private AlarmManager g;
    private String h;

    b(Context context, AlarmManager alarmManager, c<T> cVar, String str) {
        this.c = cVar;
        this.g = alarmManager;
        this.a = context;
        this.h = str;
    }

    public int a(int i) {
        return (int) (((((float) i) * 1.0f) / ((float) this.c.b())) * 100.0f);
    }

    public boolean b(int i) {
        return i < this.c.b();
    }

    public boolean a() {
        return this.d.indexOfKey(this.b) >= 0;
    }

    public void a(String str, int i) {
        this.c.a(str);
        this.f = i;
    }

    public void b() {
        this.c.a((String) null);
        this.d.clear();
    }

    public void c(int i) {
        s.a(this.h, "notifyReceivedAck: offset=" + i + "  dataLength=" + this.c.b());
        if (i >= 0 && i < this.c.b()) {
            this.b = i;
            this.d.remove(i - 1);
        }
    }

    /* access modifiers changed from: 0000 */
    public void c() {
        if (this.b >= 0 && this.b < this.c.b() && !a()) {
            this.d.append(this.b, this.e);
        }
    }

    /* access modifiers changed from: 0000 */
    public void d(int i) {
        g();
        a((long) i);
    }

    private void g() {
        this.g.cancel(h());
    }

    private void a(long j) {
        this.g.set(2, SystemClock.elapsedRealtime() + j, h());
    }

    private PendingIntent h() {
        return PendingIntent.getBroadcast(this.a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.a.getPackageName()), 268435456);
    }
}
