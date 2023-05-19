package com.ifengyu.intercom.device.oldDevice.sealshark.update;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.SparseArray;
import com.ifengyu.intercom.p214p.C4161y;

/* compiled from: AbsUpdateTransport.java */
/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.update.b */
/* loaded from: classes2.dex */
abstract class AbstractC3829b<T> implements InterfaceC3831e {

    /* renamed from: a */
    protected Context f13607a;

    /* renamed from: b */
    private AlarmManager f13608b;

    /* renamed from: c */
    private String f13609c;

    /* renamed from: d */
    protected int f13610d;

    /* renamed from: e */
    InterfaceC3830c<T> f13611e;

    /* renamed from: f */
    SparseArray<T> f13612f = new SparseArray<>();

    /* renamed from: g */
    T f13613g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3829b(Context context, AlarmManager alarmManager, InterfaceC3830c<T> interfaceC3830c, String str) {
        this.f13611e = interfaceC3830c;
        this.f13608b = alarmManager;
        this.f13607a = context;
        this.f13609c = str;
    }

    /* renamed from: i */
    private void m12552i() {
        this.f13608b.cancel(m12551j());
    }

    /* renamed from: j */
    private PendingIntent m12551j() {
        return PendingIntent.getBroadcast(this.f13607a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.f13607a.getPackageName()), 268435456);
    }

    /* renamed from: n */
    private void m12547n(long j) {
        this.f13608b.set(2, j + SystemClock.elapsedRealtime(), m12551j());
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: c */
    public int mo12541c(int i) {
        return (int) (((i * 1.0f) / this.f13611e.mo12544c()) * 100.0f);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: e */
    public void mo12540e(String str, int i) {
        this.f13611e.mo12545b(str);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: f */
    public void mo12539f(int i) {
        String str = this.f13609c;
        C4161y.m11043l(str, "notifyReceivedAck: offset=" + i + "  dataLength=" + this.f13611e.mo12544c());
        if (i < 0 || i >= this.f13611e.mo12544c()) {
            return;
        }
        this.f13610d = i;
        this.f13612f.remove(i - 1);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    /* renamed from: g */
    public boolean mo12538g(int i) {
        return i < this.f13611e.mo12544c();
    }

    /* renamed from: k */
    public boolean m12550k() {
        return this.f13612f.indexOfKey(this.f13610d) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m12549l() {
        int i = this.f13610d;
        if (i < 0 || i >= this.f13611e.mo12544c() || m12550k()) {
            return;
        }
        this.f13612f.append(this.f13610d, this.f13613g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m12548m(int i) {
        m12552i();
        m12547n(i);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.update.InterfaceC3831e
    public void release() {
        this.f13611e.mo12545b(null);
        this.f13612f.clear();
    }
}
