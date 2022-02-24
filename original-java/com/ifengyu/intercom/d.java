package com.ifengyu.intercom;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.DisplayMetrics;
import android.widget.Toast;
import com.ifengyu.intercom.i.k0;

/* compiled from: Variables.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static String f5222a;

    /* renamed from: b  reason: collision with root package name */
    public static int f5223b;

    /* renamed from: c  reason: collision with root package name */
    public static int f5224c;
    public static Toast d;

    public static void a(Context context) {
        if (context != null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                f5222a = packageInfo.versionName;
                int i = packageInfo.versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    public static void a(Activity activity) {
        if (f5224c <= 0 && f5223b <= 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            int i = displayMetrics.heightPixels;
            int i2 = displayMetrics.widthPixels;
            if (i >= i2) {
                f5223b = i2;
                f5224c = i;
                return;
            }
            f5223b = i;
            f5224c = i2;
        }
    }

    public static int a() {
        int identifier = k0.a().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return k0.a().getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }
}
