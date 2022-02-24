package com.ifengyu.intercom.i;

/* compiled from: Calculate.java */
/* loaded from: classes2.dex */
public class n {
    public static int a(float f, float f2) {
        int i = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
        if (i > 0 && f2 > 0.0f && f >= f2) {
            return 100;
        }
        if (f2 <= 0.0f || i != 0) {
            return (int) Math.floor((f / f2) * 100.0f);
        }
        return 0;
    }
}
