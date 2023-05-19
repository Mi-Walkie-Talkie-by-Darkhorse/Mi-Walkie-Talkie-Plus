package com.ifengyu.intercom.p189l.p190a.p196c;

import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.l.a.c.b */
/* loaded from: classes2.dex */
public class ChToneConstants {

    /* renamed from: a */
    public static String[] f14118a;

    /* renamed from: b */
    public static String[][] f14119b;

    static {
        m11821a();
    }

    /* renamed from: a */
    public static void m11821a() {
        f14118a = UIUtils.m8601q(R.array.sub_code_type);
        f14119b = new String[][]{UIUtils.m8601q(R.array.shark_analog_tone), UIUtils.m8601q(R.array.shark_digital_tone_normal), UIUtils.m8601q(R.array.shark_digital_tone_inversion)};
    }
}
