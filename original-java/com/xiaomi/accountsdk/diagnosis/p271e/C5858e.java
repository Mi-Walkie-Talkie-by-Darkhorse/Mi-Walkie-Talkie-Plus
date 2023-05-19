package com.xiaomi.accountsdk.diagnosis.p271e;

import android.text.TextUtils;
import java.util.Locale;

/* renamed from: com.xiaomi.accountsdk.diagnosis.e.e */
/* loaded from: classes2.dex */
public class C5858e {
    /* renamed from: a */
    public static String m4191a(Locale locale) {
        String language = locale.getLanguage();
        String country = locale.getCountry();
        return TextUtils.isEmpty(country) ? language : String.format("%s_%s", language, country);
    }
}
