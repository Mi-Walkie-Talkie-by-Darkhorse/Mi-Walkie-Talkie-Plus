package com.ifengyu.intercom.device.lite.utils;

import android.text.InputFilter;
import android.text.Spanned;

/* renamed from: com.ifengyu.intercom.device.lite.utils.a */
/* loaded from: classes2.dex */
public class ByteLengthFilter implements InputFilter {

    /* renamed from: a */
    private final int f12412a;

    public ByteLengthFilter(int i) {
        this.f12412a = i;
    }

    /* renamed from: a */
    private int m13843a(CharSequence charSequence) {
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            int i3 = i + 1;
            i2 = charSequence.charAt(i) < 128 ? i2 + 1 : i2 + 3;
            i = i3;
        }
        return i2;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int m13843a = this.f12412a - (m13843a(spanned) - m13843a(spanned.subSequence(i3, i4)));
        if (m13843a <= 0) {
            return "";
        }
        if (m13843a >= m13843a(charSequence.subSequence(i, i2))) {
            return null;
        }
        int i5 = 0;
        int i6 = i;
        while (i5 < m13843a) {
            int i7 = i6 + 1;
            i5 = charSequence.charAt(i6) < 128 ? i5 + 1 : i5 + 3;
            i6 = i7;
        }
        if (i5 > m13843a) {
            i6--;
        }
        return charSequence.subSequence(i, i6);
    }
}
