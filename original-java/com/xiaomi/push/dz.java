package com.xiaomi.push;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class dz implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f8892a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ Context f289a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f290a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f8893b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dz(Context context, String str, int i, String str2) {
        this.f289a = context;
        this.f290a = str;
        this.f8892a = i;
        this.f8893b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        dy.c(this.f289a, this.f290a, this.f8892a, this.f8893b);
    }
}
