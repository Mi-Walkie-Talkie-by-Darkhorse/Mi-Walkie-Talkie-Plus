package com.ifengyu.library.a;

/* compiled from: StringUtils.java */
/* loaded from: classes2.dex */
public class l {
    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean b(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean c(CharSequence charSequence) {
        if (b(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
