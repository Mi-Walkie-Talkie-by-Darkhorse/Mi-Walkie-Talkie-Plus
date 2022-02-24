package com.ifengyu.intercom.ui.widget.view;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.EditText;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;

/* compiled from: MyInputFilter.java */
/* loaded from: classes2.dex */
public class a implements InputFilter {

    /* renamed from: a  reason: collision with root package name */
    private int f7106a = 16;

    /* renamed from: b  reason: collision with root package name */
    private EditText f7107b;

    public a(EditText editText) {
        this.f7107b = editText;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        while (i5 <= this.f7106a && i6 < spanned.length()) {
            i6++;
            String valueOf = String.valueOf(spanned.charAt(i6));
            if (c0.h(valueOf)) {
                i5++;
            } else if (!c0.d(valueOf)) {
                return "";
            } else {
                i5 += 2;
            }
        }
        if (i5 > this.f7106a) {
            return spanned.subSequence(0, i6 - 1);
        }
        int i7 = 0;
        while (i5 <= this.f7106a && i7 < charSequence.length()) {
            i7++;
            String valueOf2 = String.valueOf(charSequence.charAt(i7));
            if (c0.h(valueOf2)) {
                i5++;
            } else if (c0.d(valueOf2)) {
                i5 += 2;
            } else {
                this.f7107b.setError(k0.c(R.string.not_support_character), null);
                return "";
            }
        }
        if (i5 > this.f7106a) {
            i7--;
        }
        return charSequence.subSequence(0, i7);
    }
}
