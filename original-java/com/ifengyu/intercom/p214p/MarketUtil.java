package com.ifengyu.intercom.p214p;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.huawei.hms.mlsdk.common.MLApplicationSetting;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.p.a0 */
/* loaded from: classes2.dex */
public class MarketUtil {
    /* renamed from: a */
    public static void m11315a(Context context) {
        String str = Build.BRAND;
        if ("samsung".equals(str)) {
            m11312d(context, "com.tencent.mm");
        } else if ("letv".equals(str)) {
            m11314b(context, "com.tencent.mm");
        } else {
            m11313c(context, "com.tencent.mm");
        }
    }

    /* renamed from: b */
    public static void m11314b(Context context, String str) {
        Intent intent = new Intent();
        intent.setClassName("com.letv.app.appstore", "com.letv.app.appstore.appmodule.details.DetailsActivity");
        intent.setAction("com.letv.app.appstore.appdetailactivity");
        intent.putExtra(MLApplicationSetting.BundleKeyConstants.AppInfo.packageName, str);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException | IllegalArgumentException e) {
            e.printStackTrace();
            m11311e(context);
        }
    }

    /* renamed from: c */
    public static void m11313c(Context context, String str) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)));
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            m11311e(context);
        }
    }

    /* renamed from: d */
    public static void m11312d(Context context, String str) {
        Uri parse = Uri.parse("http://www.samsungapps.com/appquery/appDetail.as?appId=" + str);
        Intent intent = new Intent();
        intent.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
        intent.setData(parse);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException | IllegalArgumentException e) {
            e.printStackTrace();
            m11311e(context);
        }
    }

    /* renamed from: e */
    private static void m11311e(Context context) {
        m11310f(context, "http://weixin.qq.com");
    }

    /* renamed from: f */
    public static void m11310f(Context context, String str) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.can_not_download_app), false);
        }
    }
}
