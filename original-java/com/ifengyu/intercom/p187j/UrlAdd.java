package com.ifengyu.intercom.p187j;

import android.content.Intent;
import android.net.Uri;
import com.amap.api.maps.AMap;
import com.ifengyu.intercom.bean.QRConstants;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.base.BaseApp;

/* renamed from: com.ifengyu.intercom.j.c */
/* loaded from: classes2.dex */
public class UrlAdd {
    /* renamed from: a */
    public static String m11978a(int i) {
        return m11977b(i, "app");
    }

    /* renamed from: b */
    public static String m11977b(int i, String str) {
        Uri.Builder buildUpon = Uri.parse("https://m.ifengyu.com/resourcesDev/resources/").buildUpon();
        buildUpon.appendPath("index.html");
        buildUpon.appendQueryParameter("locale", MethodsUtils.m11297c() ? AMap.ENGLISH : "zh_CN");
        buildUpon.appendQueryParameter("dev", str);
        if (i == 1) {
            buildUpon.appendQueryParameter(QRConstants.PARAMETER_NAME_TYPE, "userAgreement");
        } else if (i == 2) {
            buildUpon.appendQueryParameter(QRConstants.PARAMETER_NAME_TYPE, "userPrivacy");
        }
        return buildUpon.build().toString();
    }

    /* renamed from: c */
    public static void m11976c(String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(268435456);
        BaseApp.m8712b().startActivity(intent);
    }
}
