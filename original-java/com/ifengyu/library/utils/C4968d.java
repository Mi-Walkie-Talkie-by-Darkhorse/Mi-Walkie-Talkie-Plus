package com.ifengyu.library.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebSettings;

/* compiled from: CommonUtil.java */
/* renamed from: com.ifengyu.library.utils.d */
/* loaded from: classes2.dex */
public class C4968d {

    /* renamed from: a */
    private static String f16382a;

    /* renamed from: b */
    private static String f16383b;

    /* renamed from: a */
    public static String m8694a(Context context) {
        if (f16382a == null) {
            try {
                f16382a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        String str = f16382a;
        return str == null ? "" : str;
    }

    /* renamed from: b */
    public static String m8693b(Context context) {
        String property;
        if (f16383b == null) {
            try {
                property = WebSettings.getDefaultUserAgent(context);
            } catch (Exception unused) {
                property = System.getProperty("http.agent");
            }
            StringBuilder sb = new StringBuilder();
            int length = property.length();
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if (charAt <= 31 || charAt >= 127) {
                    sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
                } else {
                    sb.append(charAt);
                }
            }
            f16383b = property;
        }
        return f16383b;
    }

    /* renamed from: c */
    public static void m8692c(View view, View view2) {
        if (view == null || view.getContext() == null) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager.isActive(view)) {
            inputMethodManager.hideSoftInputFromWindow(view2.getWindowToken(), 2);
            if (view2 != null) {
                view2.requestFocus();
            }
        }
    }

    /* renamed from: d */
    public static void m8691d(View view) {
        if (view == null || view.getContext() == null) {
            return;
        }
        view.requestFocus();
        ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 2);
    }
}
