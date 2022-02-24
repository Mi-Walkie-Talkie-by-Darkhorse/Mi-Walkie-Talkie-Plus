package com.xiaomi.accountsdk.diagnosis.e;

import android.text.TextUtils;
import java.util.Locale;

/* loaded from: classes2.dex */
public class e {
    public static String a(Locale locale) {
        String language = locale.getLanguage();
        String country = locale.getCountry();
        return TextUtils.isEmpty(country) ? language : String.format("%s_%s", language, country);
    }
}
