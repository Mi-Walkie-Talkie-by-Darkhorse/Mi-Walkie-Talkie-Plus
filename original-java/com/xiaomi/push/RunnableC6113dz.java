package com.xiaomi.push;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.dz */
/* loaded from: classes2.dex */
public class RunnableC6113dz implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f21418a;

    /* renamed from: a */
    final /* synthetic */ Context f21419a;

    /* renamed from: a */
    final /* synthetic */ String f21420a;

    /* renamed from: b */
    final /* synthetic */ String f21421b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6113dz(Context context, String str, int i, String str2) {
        this.f21419a = context;
        this.f21420a = str;
        this.f21418a = i;
        this.f21421b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        C6112dy.m3147c(this.f21419a, this.f21420a, this.f21418a, this.f21421b);
    }
}
