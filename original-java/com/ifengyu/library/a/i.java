package com.ifengyu.library.a;

import a.b.g;
import java.util.regex.Pattern;

/* compiled from: RegexUtils.java */
/* loaded from: classes2.dex */
public final class i {
    static {
        new g();
    }

    public static boolean a(CharSequence charSequence) {
        return a("^[1]\\d{10}$", charSequence);
    }

    public static boolean b(CharSequence charSequence) {
        return a("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]+$", charSequence);
    }

    public static boolean a(String str, CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0 && Pattern.matches(str, charSequence);
    }
}
