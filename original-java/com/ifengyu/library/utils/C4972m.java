package com.ifengyu.library.utils;

import android.content.Intent;
import android.location.LocationManager;
import android.net.Uri;

/* compiled from: PermissionUtils.java */
/* renamed from: com.ifengyu.library.utils.m */
/* loaded from: classes2.dex */
public class C4972m {
    /* renamed from: a */
    public static Intent m8641a() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", UIUtils.m8607k(), null));
        intent.setFlags(268435456);
        return intent;
    }

    /* renamed from: b */
    public static boolean m8640b(String... strArr) {
        for (String str : strArr) {
            if (VersionUtils.m8591a() && UIUtils.m8613e().checkSelfPermission(str) != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m8639c() {
        LocationManager locationManager = (LocationManager) UIUtils.m8613e().getSystemService("location");
        return locationManager.isProviderEnabled("gps") || locationManager.isProviderEnabled("network");
    }
}
