package com.ifengyu.intercom.ui.widget.view;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.EditText;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;

/* compiled from: MyInputFilter */
public class b implements InputFilter {
    private int a = 16;
    private EditText b;

    public b(EditText editText) {
        this.b = editText;
    }

    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int i5;
        int i6 = 0;
        int i7 = 0;
        while (i6 <= this.a && i7 < spanned.length()) {
            int i8 = i7 + 1;
            String valueOf = String.valueOf(spanned.charAt(i7));
            if (v.e(valueOf)) {
                i6++;
            } else if (!v.d(valueOf)) {
                return "";
            } else {
                i6 += 2;
            }
            i7 = i8;
        }
        if (i6 > this.a) {
            return spanned.subSequence(0, i7 - 1);
        }
        int i9 = i6;
        int i10 = 0;
        while (i9 <= this.a && i10 < charSequence.length()) {
            int i11 = i10 + 1;
            String valueOf2 = String.valueOf(charSequence.charAt(i10));
            if (v.e(valueOf2)) {
                i5 = i9 + 1;
            } else if (v.d(valueOf2)) {
                i5 = i9 + 2;
            } else {
                this.b.setError(ad.a((int) R.string.not_support_character), null);
                return "";
            }
            i9 = i5;
            i10 = i11;
        }
        if (i9 > this.a) {
            i10--;
        }
        return charSequence.subSequence(0, i10);
    }
}
