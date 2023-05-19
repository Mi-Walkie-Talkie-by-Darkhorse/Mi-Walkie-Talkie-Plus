package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.SparseArray;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.protos.MitalkProtos;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.f */
/* loaded from: classes2.dex */
abstract class AbsUpdateTransport<T> implements IUpdateTransport {

    /* renamed from: a */
    protected Context f12999a;

    /* renamed from: b */
    private AlarmManager f13000b;

    /* renamed from: c */
    private String f13001c;

    /* renamed from: d */
    private int f13002d;

    /* renamed from: e */
    MitalkProtos.FILETYPE f13003e;

    /* renamed from: f */
    IDataSplitWrap<T> f13004f;

    /* renamed from: g */
    SparseArray<T> f13005g = new SparseArray<>();

    /* renamed from: h */
    T f13006h;

    /* renamed from: i */
    int f13007i;

    /* renamed from: j */
    int f13008j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbsUpdateTransport(Context context, AlarmManager alarmManager, IDataSplitWrap<T> iDataSplitWrap, String str) {
        this.f13004f = iDataSplitWrap;
        this.f13000b = alarmManager;
        this.f12999a = context;
        this.f13001c = str;
    }

    /* renamed from: m */
    private void m13158m() {
        this.f13000b.cancel(m13157n());
    }

    /* renamed from: n */
    private PendingIntent m13157n() {
        return PendingIntent.getBroadcast(this.f12999a, 0, new Intent("com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER").setPackage(this.f12999a.getPackageName()), 268435456);
    }

    /* renamed from: q */
    private void m13154q(long j) {
        this.f13000b.set(2, j + SystemClock.elapsedRealtime(), m13157n());
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: c */
    public int mo13083c(int i) {
        int i2;
        int mo13086e = this.f13004f.mo13086e();
        return (mo13086e == 0 || (i2 = this.f13002d) > mo13086e) ? i : ((i2 * 94) / mo13086e) + 5;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: e */
    public boolean mo13082e() {
        return this.f13005g.indexOfKey(this.f13007i) >= 0;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: g */
    public int mo13081g() {
        return this.f13005g.size();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: h */
    public void mo13080h(int i) {
        int i2;
        C4161y.m11042m(this.f13001c, "resetSendingSeq");
        if (i == 0 && (i2 = this.f13007i) > 0) {
            this.f13007i = i2 - 1;
        } else {
            this.f13007i = i;
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    public boolean hasNext() {
        return this.f13004f.mo13087d() - 1 < this.f13004f.mo13086e();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: i */
    public void mo13079i(String str, int i, MitalkProtos.FILETYPE filetype) {
        this.f13004f.mo13089b(str);
        this.f13008j = i;
        this.f13003e = filetype;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: j */
    public void mo13078j(int i) {
        String str = this.f13001c;
        C4161y.m11043l(str, "notifyReceivedAckId: seqId=" + i);
        if (i < 0 || i > this.f13004f.mo13086e()) {
            return;
        }
        this.f13002d = i;
        this.f13005g.remove(i - 1);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: k */
    public boolean mo13077k() {
        return this.f13002d == this.f13004f.mo13086e();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    /* renamed from: l */
    public int mo13076l() {
        return this.f13002d + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m13156o() {
        int i = this.f13007i;
        if (i < 0 || i >= this.f13004f.mo13086e() || mo13082e()) {
            return;
        }
        this.f13005g.append(this.f13007i, this.f13006h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m13155p(int i) {
        m13158m();
        m13154q(i);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.update.IUpdateTransport
    public void release() {
        this.f13004f.mo13089b(null);
        this.f13005g.clear();
    }
}
