package com.ifengyu.intercom.update.dolphin;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.SparseArray;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.protos.MitalkProtos;

/* compiled from: AbsUpdateTransport.java */
/* loaded from: classes2.dex */
abstract class b<T> implements g {

    /* renamed from: a  reason: collision with root package name */
    protected Context f7135a;

    /* renamed from: b  reason: collision with root package name */
    private AlarmManager f7136b;

    /* renamed from: c  reason: collision with root package name */
    private String f7137c;
    private int d;
    MitalkProtos.FILETYPE e;
    e<T> f;
    SparseArray<T> g = new SparseArray<>();
    T h;
    int i;
    int j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, AlarmManager alarmManager, e<T> eVar, String str) {
        this.f = eVar;
        this.f7136b = alarmManager;
        this.f7135a = context;
        this.f7137c = str;
    }

    private void j() {
        this.f7136b.cancel(k());
    }

    private PendingIntent k() {
        return PendingIntent.getBroadcast(this.f7135a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.f7135a.getPackageName()), 268435456);
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public int a(int i) {
        int i2;
        int d = this.f.d();
        return (d == 0 || (i2 = this.d) > d) ? i : ((i2 * 94) / d) + 5;
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public void b(int i) {
        int i2;
        z.e(this.f7137c, "resetSendingSeq");
        if (i != 0 || (i2 = this.i) <= 0) {
            this.i = i;
        } else {
            this.i = i2 - 1;
        }
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public void c(int i) {
        String str = this.f7137c;
        z.d(str, "notifyReceivedAckId: seqId=" + i);
        if (i >= 0 && i <= this.f.d()) {
            this.d = i;
            this.g.remove(i - 1);
        }
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public boolean d() {
        return this.g.indexOfKey(this.i) >= 0;
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public int f() {
        return this.g.size();
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public boolean g() {
        return this.d == this.f.d();
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public int h() {
        return this.d + 1;
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public boolean hasNext() {
        return this.f.c() - 1 < this.f.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        int i = this.i;
        if (i >= 0 && i < this.f.d() && !d()) {
            this.g.append(this.i, this.h);
        }
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public void release() {
        this.f.a(null);
        this.g.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i) {
        j();
        a(i);
    }

    @Override // com.ifengyu.intercom.update.dolphin.g
    public void a(String str, int i, MitalkProtos.FILETYPE filetype) {
        this.f.a(str);
        this.j = i;
        this.e = filetype;
    }

    private void a(long j) {
        this.f7136b.set(2, j + SystemClock.elapsedRealtime(), k());
    }
}
