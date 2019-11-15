package com.ifengyu.intercom.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;

/* compiled from: MarketUtil */
public class u {
    public static void a(Context context) {
        if ("samsung".equals(Build.BRAND)) {
            b(context, "com.tencent.mm");
        } else if ("letv".equals(Build.BRAND)) {
            c(context, "com.tencent.mm");
        } else {
            a(context, "com.tencent.mm");
        }
    }

    public static void a(Context context, String str) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)));
        } catch (ActivityNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
            b(context);
        }
    }

    public static void b(Context context, String str) {
        Uri parse = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + str);
        Intent intent = new Intent();
        intent.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
        intent.setData(parse);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException | IllegalArgumentException e) {
            ThrowableExtension.printStackTrace(e);
            b(context);
        }
    }

    public static void c(Context context, String str) {
        Intent intent = new Intent();
        intent.setClassName("com.letv.app.appstore", "com.letv.app.appstore.appmodule.details.DetailsActivity");
        intent.setAction("com.letv.app.appstore.appdetailactivity");
        intent.putExtra("packageName", str);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException | IllegalArgumentException e) {
            ThrowableExtension.printStackTrace(e);
            b(context);
        }
    }

    private static void b(Context context) {
        d(context, "http://weixin.qq.com");
    }

    public static void d(Context context, String str) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
            v.a((CharSequence) ad.a((int) R.string.can_not_download_app), false);
        }
    }
}
