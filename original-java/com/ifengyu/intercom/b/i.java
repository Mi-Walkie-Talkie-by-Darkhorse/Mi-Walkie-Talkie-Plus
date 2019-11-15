package com.ifengyu.intercom.b;

/* compiled from: Calculate */
public class i {
    public static int a(float f, float f2) {
        if (f > 0.0f && f2 > 0.0f && f >= f2) {
            return 100;
        }
        if (f2 <= 0.0f || f != 0.0f) {
            return (int) Math.floor((double) ((f / f2) * 100.0f));
        }
        return 0;
    }
}
