package com.ifengyu.intercom.p214p;

import android.os.SystemClock;
import android.view.View;

/* renamed from: com.ifengyu.intercom.p.f0 */
/* loaded from: classes2.dex */
public abstract class OnMultipleClickListener implements View.OnClickListener {

    /* renamed from: a */
    private final long f14451a;

    /* renamed from: b */
    private final int f14452b;

    /* renamed from: c */
    private long[] f14453c;

    public OnMultipleClickListener(long j, int i) {
        this.f14451a = j;
        this.f14452b = i;
        this.f14453c = new long[i];
    }

    /* renamed from: a */
    public abstract void mo10185a(View view);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long[] jArr = this.f14453c;
        System.arraycopy(jArr, 1, jArr, 0, jArr.length - 1);
        long[] jArr2 = this.f14453c;
        jArr2[jArr2.length - 1] = SystemClock.uptimeMillis();
        if (this.f14453c[0] >= SystemClock.uptimeMillis() - this.f14451a) {
            this.f14453c = new long[this.f14452b];
            mo10185a(view);
        }
    }
}
