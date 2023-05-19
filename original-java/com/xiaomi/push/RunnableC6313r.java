package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.r */
/* loaded from: classes2.dex */
public class RunnableC6313r implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C6312q f22849a;

    /* renamed from: a */
    final /* synthetic */ String f22850a;

    /* renamed from: b */
    final /* synthetic */ String f22851b;

    /* renamed from: c */
    final /* synthetic */ String f22852c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6313r(C6312q c6312q, String str, String str2, String str3) {
        this.f22849a = c6312q;
        this.f22850a = str;
        this.f22851b = str2;
        this.f22852c = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        context = this.f22849a.f22846a;
        SharedPreferences.Editor edit = context.getSharedPreferences(this.f22850a, 4).edit();
        edit.putString(this.f22851b, this.f22852c);
        edit.commit();
    }
}
