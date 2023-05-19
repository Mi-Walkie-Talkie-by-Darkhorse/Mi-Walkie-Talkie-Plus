package com.ifengyu.intercom.device.lite.utils;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.span.QMUICustomTypefaceSpan;

/* renamed from: com.ifengyu.intercom.device.lite.utils.d */
/* loaded from: classes2.dex */
public class FormatUtil {

    /* renamed from: a */
    private static final QMUICustomTypefaceSpan f12413a = new QMUICustomTypefaceSpan("Kmedium", AppConstants.f13909c);

    static {
        new QMUICustomTypefaceSpan("MI Lan Pro_Regular", AppConstants.f13907a);
    }

    /* renamed from: a */
    public static CharSequence m13840a(String str) {
        int indexOf = str.indexOf("/");
        if (indexOf < 0) {
            return str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(UIUtils.m8594x(12.0f));
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(UIUtils.m8614d(R.color.lite_colorAccent));
        ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(UIUtils.m8614d(R.color.lite_colorAccent70));
        spannableStringBuilder.setSpan(absoluteSizeSpan, indexOf, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(foregroundColorSpan, 0, indexOf, 17);
        spannableStringBuilder.setSpan(foregroundColorSpan2, indexOf, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(f12413a, 0, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }

    /* renamed from: b */
    public static CharSequence m13839b(String str) {
        int indexOf = str.indexOf("/");
        if (indexOf < 0) {
            return str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(UIUtils.m8594x(12.0f));
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(UIUtils.m8614d(R.color.black70));
        spannableStringBuilder.setSpan(absoluteSizeSpan, indexOf, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(foregroundColorSpan, 0, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(f12413a, 0, spannableStringBuilder.length(), 17);
        return spannableStringBuilder;
    }
}
