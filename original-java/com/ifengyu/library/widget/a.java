package com.ifengyu.library.widget;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: QMUIPackageHelper */
public class a {
    private static String a;
    private static int b = -1;
    private static int c = -1;
    private static int d = -1;

    public static String a(Context context) {
        if (a == null) {
            try {
                a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
        if (a == null) {
            return "";
        }
        return a;
    }
}
