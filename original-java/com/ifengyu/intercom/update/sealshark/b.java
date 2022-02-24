package com.ifengyu.intercom.update.sealshark;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.SparseArray;
import com.ifengyu.intercom.i.z;

/* compiled from: AbsUpdateTransport.java */
/* loaded from: classes2.dex */
abstract class b<T> implements e {

    /* renamed from: a  reason: collision with root package name */
    protected Context f7161a;

    /* renamed from: b  reason: collision with root package name */
    private AlarmManager f7162b;

    /* renamed from: c  reason: collision with root package name */
    private String f7163c;
    protected int d;
    c<T> e;
    SparseArray<T> f = new SparseArray<>();
    T g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, AlarmManager alarmManager, c<T> cVar, String str) {
        this.e = cVar;
        this.f7162b = alarmManager;
        this.f7161a = context;
        this.f7163c = str;
    }

    private void f() {
        this.f7162b.cancel(g());
    }

    private PendingIntent g() {
        return PendingIntent.getBroadcast(this.f7161a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.f7161a.getPackageName()), 268435456);
    }

    @Override // com.ifengyu.intercom.update.sealshark.e
    public int a(int i) {
        return (int) (((i * 1.0f) / this.e.b()) * 100.0f);
    }

    @Override // com.ifengyu.intercom.update.sealshark.e
    public void b(int i) {
        String str = this.f7163c;
        z.d(str, "notifyReceivedAck: offset=" + i + "  dataLength=" + this.e.b());
        if (i >= 0 && i < this.e.b()) {
            this.d = i;
            this.f.remove(i - 1);
        }
    }

    @Override // com.ifengyu.intercom.update.sealshark.e
    public boolean c(int i) {
        return i < this.e.b();
    }

    public boolean d() {
        return this.f.indexOfKey(this.d) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        int i = this.d;
        if (i >= 0 && i < this.e.b() && !d()) {
            this.f.append(this.d, this.g);
        }
    }

    @Override // com.ifengyu.intercom.update.sealshark.e
    public void release() {
        this.e.a((String) null);
        this.f.clear();
    }

    @Override // com.ifengyu.intercom.update.sealshark.e
    public void a(String str, int i) {
        this.e.a(str);
    }

    private void a(long j) {
        this.f7162b.set(2, j + SystemClock.elapsedRealtime(), g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i) {
        f();
        a(i);
    }
}
