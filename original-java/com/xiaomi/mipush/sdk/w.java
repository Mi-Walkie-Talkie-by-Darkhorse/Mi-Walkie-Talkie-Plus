package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8726a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Context context) {
        this.f8726a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PackageInfo packageInfo = this.f8726a.getPackageManager().getPackageInfo(this.f8726a.getPackageName(), 4612);
            v.c(this.f8726a);
            v.d(this.f8726a, packageInfo);
            v.c(this.f8726a, packageInfo);
        } catch (Throwable th) {
            Log.e("ManifestChecker", "", th);
        }
    }
}
