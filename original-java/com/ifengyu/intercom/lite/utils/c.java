package com.ifengyu.intercom.lite.utils;

import android.text.InputFilter;
import android.text.Spanned;

/* compiled from: CharacterFilter.java */
/* loaded from: classes2.dex */
public class c implements InputFilter {
    private boolean a(char c2) {
        return Character.isLetterOrDigit(c2) || d.a(c2) || c2 == ' ' || c2 == '-' || c2 == '_';
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        for (int i5 = 0; i5 < charSequence.length(); i5++) {
            if (!a(charSequence.charAt(i5))) {
                return "";
            }
        }
        return null;
    }
}
