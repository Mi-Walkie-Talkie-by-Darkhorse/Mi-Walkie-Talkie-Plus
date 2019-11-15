package com.ifengyu.intercom.b;

import java.math.BigDecimal;
import java.text.DecimalFormat;

/* compiled from: FormatStr */
public class p {
    public static String a(String str) {
        return new DecimalFormat("0.0").format(new BigDecimal(str).doubleValue());
    }
}
