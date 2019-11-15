package com.sina.weibo.sdk;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.sina.weibo.sdk.utils.c;
import com.sina.weibo.sdk.utils.d;

/* compiled from: ApiUtils */
public class a {
    private static final String a = a.class.getName();

    public static boolean a(Context context, String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return z;
        }
        try {
            return a(context.getPackageManager().getPackageInfo(str, 64).signatures, "18da2bf10352443a00a5e046d9fca6bd");
        } catch (NameNotFoundException e) {
            return z;
        }
    }

    private static boolean a(Signature[] signatureArr, String str) {
        if (signatureArr == null || str == null) {
            return false;
        }
        for (Signature byteArray : signatureArr) {
            if (str.equals(d.a(byteArray.toByteArray()))) {
                c.a(a, "check pass");
                return true;
            }
        }
        return false;
    }
}
