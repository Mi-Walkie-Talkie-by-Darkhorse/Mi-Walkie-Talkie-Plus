package com.afollestad.materialdialogs.a;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.support.annotation.ColorInt;

@TargetApi(21)
/* compiled from: RippleHelper */
public class b {
    public static void a(Drawable drawable, @ColorInt int i) {
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(ColorStateList.valueOf(i));
        }
    }
}
