package com.ifengyu.intercom.p214p;

import android.text.InputFilter;
import android.text.Spanned;

/* renamed from: com.ifengyu.intercom.p.e0 */
/* loaded from: classes2.dex */
public class NameInputFilter implements InputFilter {

    /* renamed from: a */
    private final int f14449a;

    public NameInputFilter() {
        this(30);
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        while (i5 < spanned.length()) {
            int i7 = i5 + 1;
            String valueOf = String.valueOf(spanned.charAt(i5));
            if (MethodsUtils.m11309A(valueOf)) {
                i6++;
            } else if (MethodsUtils.m11279u(valueOf)) {
                i6 += 3;
            }
            i5 = i7;
        }
        int i8 = this.f14449a - i6;
        if (i8 <= 0) {
            return "";
        }
        int i9 = 0;
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            String valueOf2 = String.valueOf(charSequence.charAt(i10));
            if (MethodsUtils.m11309A(valueOf2)) {
                i9++;
            } else if (!MethodsUtils.m11279u(valueOf2)) {
                return "";
            } else {
                i9 += 3;
            }
            if (i9 > i8) {
                return charSequence.subSequence(0, i10);
            }
        }
        return charSequence;
    }

    public NameInputFilter(int i) {
        this.f14449a = i;
    }
}
