package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Context;
import com.xiaomi.push.C5978ak;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.ca */
/* loaded from: classes2.dex */
public class C6415ca extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    final /* synthetic */ int f23148a;

    /* renamed from: a */
    final /* synthetic */ Notification f23149a;

    /* renamed from: a */
    final /* synthetic */ Context f23150a;

    /* renamed from: a */
    final /* synthetic */ String f23151a;

    /* renamed from: b */
    final /* synthetic */ String f23152b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6415ca(int i, String str, Context context, String str2, Notification notification) {
        this.f23148a = i;
        this.f23151a = str;
        this.f23150a = context;
        this.f23152b = str2;
        this.f23149a = notification;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        String m1401b;
        m1401b = C6413bz.m1401b(this.f23148a, this.f23151a);
        return m1401b;
    }

    @Override // java.lang.Runnable
    @TargetApi(19)
    public void run() {
        C6413bz.m1398c(this.f23150a, this.f23152b, this.f23148a, this.f23151a, this.f23149a);
    }
}
