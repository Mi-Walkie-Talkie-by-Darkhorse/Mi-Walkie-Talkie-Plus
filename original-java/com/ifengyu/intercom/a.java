package com.ifengyu.intercom;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.DisplayMetrics;
import android.widget.Toast;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.b.ad;

/* compiled from: Variables */
public class a {
    public static String a;
    public static int b;
    public static int c;
    public static int d;
    public static Toast e;

    public static void a(Context context) {
        if (context != null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                a = packageInfo.versionName;
                b = packageInfo.versionCode;
            } catch (NameNotFoundException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public static void a(Activity activity) {
        if (d <= 0 && c <= 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            if (displayMetrics.heightPixels >= displayMetrics.widthPixels) {
                c = displayMetrics.widthPixels;
                d = displayMetrics.heightPixels;
                return;
            }
            c = displayMetrics.heightPixels;
            d = displayMetrics.widthPixels;
        }
    }

    public static int a() {
        int identifier = ad.a().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return ad.a().getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }
}
