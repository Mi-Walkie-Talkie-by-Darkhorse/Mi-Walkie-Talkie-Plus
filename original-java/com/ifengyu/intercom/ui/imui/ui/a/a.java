package com.ifengyu.intercom.ui.imui.ui.a;

import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.zxing.common.StringUtils;
import java.nio.charset.Charset;

/* compiled from: MyInputFilter */
public class a implements InputFilter {
    public static final Charset a = Charset.forName(StringUtils.GB2312);
    public static final Charset b = Charset.forName("UTF-8");
    private Charset c = a;
    private int d;
    private C0033a e;

    /* renamed from: com.ifengyu.intercom.ui.imui.ui.a.a$a reason: collision with other inner class name */
    /* compiled from: MyInputFilter */
    public interface C0033a {
        void a();
    }

    public a(int i) {
        this.d = i;
    }

    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        while (i5 <= this.d && i6 < spanned.length()) {
            i5 += a(String.valueOf(spanned.charAt(i6)));
            i6++;
        }
        if (i5 > this.d) {
            return spanned.subSequence(0, i6 - 1);
        }
        int i7 = i5;
        int i8 = 0;
        while (i7 <= this.d && i8 < charSequence.length()) {
            i7 = a(String.valueOf(charSequence.charAt(i8))) + i7;
            i8++;
        }
        if (i7 > this.d) {
            i8--;
            if (this.e != null) {
                this.e.a();
            }
        }
        return charSequence.subSequence(0, i8);
    }

    private int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (this.c != null) {
            return str.getBytes(this.c).length;
        }
        return str.getBytes(a).length;
    }
}
