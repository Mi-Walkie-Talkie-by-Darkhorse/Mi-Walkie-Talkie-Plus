package com.ifengyu.intercom.p214p;

import android.graphics.Typeface;
import com.ifengyu.intercom.p187j.AppConstants;
import java.lang.reflect.Field;

/* renamed from: com.ifengyu.intercom.p.t */
/* loaded from: classes2.dex */
public class FontChangeUtils {
    /* renamed from: a */
    public static void m11074a() {
        try {
            Typeface typeface = AppConstants.f13907a;
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
