package com.ifengyu.intercom.i;

import android.graphics.Typeface;
import java.lang.reflect.Field;

/* compiled from: FontChangeUtils.java */
/* loaded from: classes2.dex */
public class s {
    public static void a() {
        try {
            Typeface typeface = p.f5325c;
            Field declaredField = Typeface.class.getDeclaredField("SERIF");
            declaredField.setAccessible(true);
            declaredField.set(null, typeface);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }
}
