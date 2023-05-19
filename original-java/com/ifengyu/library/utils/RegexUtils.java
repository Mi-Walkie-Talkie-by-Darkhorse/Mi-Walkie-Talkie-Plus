package com.ifengyu.library.utils;

import java.util.regex.Pattern;
import p000a.p006b.SimpleArrayMap;

/* renamed from: com.ifengyu.library.utils.o */
/* loaded from: classes2.dex */
public final class RegexUtils {
    static {
        new SimpleArrayMap();
    }

    /* renamed from: a */
    public static boolean m8634a(String str, CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0 && Pattern.matches(str, charSequence);
    }

    /* renamed from: b */
    public static boolean m8633b(CharSequence charSequence) {
        return m8634a("^[1]\\d{10}$", charSequence);
    }

    /* renamed from: c */
    public static boolean m8632c(CharSequence charSequence) {
        return m8634a("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]+$", charSequence);
    }
}
