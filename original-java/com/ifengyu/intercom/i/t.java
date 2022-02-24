package com.ifengyu.intercom.i;

import java.math.BigDecimal;
import java.text.DecimalFormat;

/* compiled from: FormatStr.java */
/* loaded from: classes2.dex */
public class t {
    public static String a(String str) {
        return new DecimalFormat("0.0").format(new BigDecimal(str).doubleValue());
    }
}
