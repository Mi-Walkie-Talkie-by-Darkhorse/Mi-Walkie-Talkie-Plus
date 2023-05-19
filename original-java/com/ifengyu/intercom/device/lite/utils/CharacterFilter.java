package com.ifengyu.intercom.device.lite.utils;

import android.text.InputFilter;
import android.text.Spanned;

/* renamed from: com.ifengyu.intercom.device.lite.utils.b */
/* loaded from: classes2.dex */
public class CharacterFilter implements InputFilter {
    /* renamed from: a */
    private boolean m13842a(char c) {
        return Character.isLetterOrDigit(c) || CharacterUtils.m13841a(c) || c == ' ' || c == '-' || c == '_';
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        for (int i5 = 0; i5 < charSequence.length(); i5++) {
            if (!m13842a(charSequence.charAt(i5))) {
                return "";
            }
        }
        return null;
    }
}
