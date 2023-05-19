package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.w */
/* loaded from: classes2.dex */
public class RunnableC5963w implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f20979a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5963w(Context context) {
        this.f20979a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PackageInfo packageInfo = this.f20979a.getPackageManager().getPackageInfo(this.f20979a.getPackageName(), 4612);
            C5960v.m3817c(this.f20979a);
            C5960v.m3815d(this.f20979a, packageInfo);
            C5960v.m3816c(this.f20979a, packageInfo);
        } catch (Throwable th) {
            Log.e("ManifestChecker", "", th);
        }
    }
}
