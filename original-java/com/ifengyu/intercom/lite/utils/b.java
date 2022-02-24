package com.ifengyu.intercom.lite.utils;

import android.text.InputFilter;
import android.text.Spanned;

/* compiled from: ByteLengthFilter.java */
/* loaded from: classes2.dex */
public class b implements InputFilter {

    /* renamed from: a  reason: collision with root package name */
    private final int f5788a;

    public b(int i) {
        this.f5788a = i;
    }

    private int a(CharSequence charSequence) {
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            i++;
            i2 = charSequence.charAt(i) < 128 ? i2 + 1 : i2 + 3;
        }
        return i2;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int a2 = this.f5788a - (a(spanned) - a(spanned.subSequence(i3, i4)));
        if (a2 <= 0) {
            return "";
        }
        if (a2 >= a(charSequence.subSequence(i, i2))) {
            return null;
        }
        int i5 = 0;
        int i6 = i;
        while (i5 < a2) {
            i6++;
            i5 = charSequence.charAt(i6) < 128 ? i5 + 1 : i5 + 3;
        }
        if (i5 > a2) {
            i6--;
        }
        return charSequence.subSequence(i, i6);
    }
}
