package com.ifengyu.intercom.i;

import android.content.Context;
import android.location.LocationManager;

/* compiled from: PermissionUtils.java */
/* loaded from: classes2.dex */
public class e0 {
    public static boolean a(Context context) {
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        return locationManager.isProviderEnabled("gps") || locationManager.isProviderEnabled("network");
    }
}
