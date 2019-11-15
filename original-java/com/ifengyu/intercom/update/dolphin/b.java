package com.ifengyu.intercom.update.dolphin;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.SparseArray;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.protos.MitalkProtos.FILETYPE;

/* compiled from: AbsUpdateTransport */
abstract class b<T> implements g {
    protected Context a;
    FILETYPE b;
    e<T> c;
    SparseArray<T> d = new SparseArray<>();
    T e;
    int f;
    int g;
    private AlarmManager h;
    private String i;
    private int j;

    b(Context context, AlarmManager alarmManager, e<T> eVar, String str) {
        this.c = eVar;
        this.h = alarmManager;
        this.a = context;
        this.i = str;
    }

    public int a(int i2) {
        int b2 = this.c.b();
        if (b2 == 0 || this.j > b2) {
            return i2;
        }
        return ((this.j * 94) / b2) + 5;
    }

    public int a() {
        return this.d.size();
    }

    public int b() {
        return this.j + 1;
    }

    public boolean c() {
        return this.c.d() + -1 < this.c.b();
    }

    public boolean d() {
        return this.d.indexOfKey(this.f) >= 0;
    }

    public boolean e() {
        return this.j == this.c.b();
    }

    public void a(String str, int i2, FILETYPE filetype) {
        this.c.a(str);
        this.g = i2;
        this.b = filetype;
    }

    public void f() {
        this.c.a(null);
        this.d.clear();
    }

    public void b(int i2) {
        s.d(this.i, "resetSendingSeq");
        if (i2 != 0 || this.f <= 0) {
            this.f = i2;
        } else {
            this.f--;
        }
    }

    public void c(int i2) {
        s.a(this.i, "notifyReceivedAckId: seqId=" + i2);
        if (i2 >= 0 && i2 <= this.c.b()) {
            this.j = i2;
            this.d.remove(i2 - 1);
        }
    }

    /* access modifiers changed from: 0000 */
    public void g() {
        if (this.f >= 0 && this.f < this.c.b() && !d()) {
            this.d.append(this.f, this.e);
        }
    }

    /* access modifiers changed from: 0000 */
    public void d(int i2) {
        l();
        a((long) i2);
    }

    private void l() {
        this.h.cancel(m());
    }

    private void a(long j2) {
        this.h.set(2, SystemClock.elapsedRealtime() + j2, m());
    }

    private PendingIntent m() {
        return PendingIntent.getBroadcast(this.a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.a.getPackageName()), 268435456);
    }
}
