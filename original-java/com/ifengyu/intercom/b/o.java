package com.ifengyu.intercom.b;

import android.graphics.Typeface;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.reflect.Field;

/* compiled from: FontChangeUtils */
public class o {
    public static void a() {
        try {
            Typeface typeface = l.d;
            Field declaredField = Typeface.class.getDeclaredField("SERIF");
            declaredField.setAccessible(true);
            declaredField.set(null, typeface);
        } catch (NoSuchFieldException e) {
            ThrowableExtension.printStackTrace(e);
        } catch (IllegalAccessException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }
}
