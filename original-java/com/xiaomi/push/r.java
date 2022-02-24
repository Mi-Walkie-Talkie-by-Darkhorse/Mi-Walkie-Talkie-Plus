package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ q f9192a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f846a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9193b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9194c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(q qVar, String str, String str2, String str3) {
        this.f9192a = qVar;
        this.f846a = str;
        this.f9193b = str2;
        this.f9194c = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        context = this.f9192a.f843a;
        SharedPreferences.Editor edit = context.getSharedPreferences(this.f846a, 4).edit();
        edit.putString(this.f9193b, this.f9194c);
        edit.commit();
    }
}
