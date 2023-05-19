package com.ifengyu.intercom;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.DisplayMetrics;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.g */
/* loaded from: classes2.dex */
public class Variables {

    /* renamed from: a */
    public static int f13702a;

    /* renamed from: b */
    public static int f13703b;

    /* renamed from: a */
    public static int m12428a() {
        int identifier = UIUtils.m8613e().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return UIUtils.m8613e().getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: b */
    public static void m12427b(Context context) {
        if (context == null) {
            return;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String str = packageInfo.versionName;
            int i = packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m12426c(Activity activity) {
        if (f13703b > 0 || f13702a > 0) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        int i2 = displayMetrics.widthPixels;
        if (i >= i2) {
            f13702a = i2;
            f13703b = i;
            return;
        }
        f13702a = i;
        f13703b = i2;
    }
}
