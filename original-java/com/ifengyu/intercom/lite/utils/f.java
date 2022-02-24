package com.ifengyu.intercom.lite.utils;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.p;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.span.QMUICustomTypefaceSpan;

/* compiled from: FormatUtil.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final QMUICustomTypefaceSpan f5789a = new QMUICustomTypefaceSpan("Kmedium", p.f5324b);

    static {
        new QMUICustomTypefaceSpan("MI_LanTing_GB_Outside_YS_V2.3", p.f5325c);
    }

    public static CharSequence a(String str) {
        int indexOf = str.indexOf("/");
        if (indexOf < 0) {
            return str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(m.b(12.0f)), indexOf, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(f5789a, 0, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(m.a((int) R.color.black70)), indexOf, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static CharSequence b(String str) {
        int indexOf = str.indexOf("/");
        if (indexOf < 0) {
            return str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(m.b(12.0f));
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(m.a((int) R.color.lite_colorAccent));
        ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(m.a((int) R.color.lite_colorAccent70));
        spannableStringBuilder.setSpan(absoluteSizeSpan, indexOf, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(foregroundColorSpan, 0, indexOf, 17);
        spannableStringBuilder.setSpan(foregroundColorSpan2, indexOf, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(f5789a, 0, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    public static CharSequence c(String str) {
        int indexOf = str.indexOf("/");
        if (indexOf < 0) {
            return str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(m.b(12.0f));
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(m.a((int) R.color.black70));
        spannableStringBuilder.setSpan(absoluteSizeSpan, indexOf, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(foregroundColorSpan, 0, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(f5789a, 0, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }
}
