package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Context;
import com.xiaomi.push.ak;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ca extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f9307a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ Notification f979a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ Context f980a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f981a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9308b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(int i, String str, Context context, String str2, Notification notification) {
        this.f9307a = i;
        this.f981a = str;
        this.f980a = context;
        this.f9308b = str2;
        this.f979a = notification;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        String b2;
        b2 = bz.b(this.f9307a, this.f981a);
        return b2;
    }

    @Override // java.lang.Runnable
    @TargetApi(19)
    public void run() {
        bz.c(this.f980a, this.f9308b, this.f9307a, this.f981a, this.f979a);
    }
}
