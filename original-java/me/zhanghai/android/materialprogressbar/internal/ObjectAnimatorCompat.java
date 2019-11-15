package me.zhanghai.android.materialprogressbar.internal;

import android.animation.ObjectAnimator;
import android.graphics.Path;
import android.os.Build.VERSION;
import android.util.Property;

public class ObjectAnimatorCompat {
    private ObjectAnimatorCompat() {
    }

    public static ObjectAnimator ofArgb(Object obj, String str, int... iArr) {
        if (VERSION.SDK_INT >= 21) {
            return ObjectAnimatorCompatLollipop.ofArgb(obj, str, iArr);
        }
        return ObjectAnimatorCompatBase.ofArgb(obj, str, iArr);
    }

    public static <T> ObjectAnimator ofArgb(T t, Property<T, Integer> property, int... iArr) {
        if (VERSION.SDK_INT >= 21) {
            return ObjectAnimatorCompatLollipop.ofArgb(t, property, iArr);
        }
        return ObjectAnimatorCompatBase.ofArgb(t, property, iArr);
    }

    public static ObjectAnimator ofFloat(Object obj, String str, String str2, Path path) {
        if (VERSION.SDK_INT >= 21) {
            return ObjectAnimatorCompatLollipop.ofFloat(obj, str, str2, path);
        }
        return ObjectAnimatorCompatBase.ofFloat(obj, str, str2, path);
    }

    public static <T> ObjectAnimator ofFloat(T t, Property<T, Float> property, Property<T, Float> property2, Path path) {
        if (VERSION.SDK_INT >= 21) {
            return ObjectAnimatorCompatLollipop.ofFloat(t, property, property2, path);
        }
        return ObjectAnimatorCompatBase.ofFloat(t, property, property2, path);
    }

    public static ObjectAnimator ofInt(Object obj, String str, String str2, Path path) {
        if (VERSION.SDK_INT >= 21) {
            return ObjectAnimatorCompatLollipop.ofInt(obj, str, str2, path);
        }
        return ObjectAnimatorCompatBase.ofInt(obj, str, str2, path);
    }

    public static <T> ObjectAnimator ofInt(T t, Property<T, Integer> property, Property<T, Integer> property2, Path path) {
        if (VERSION.SDK_INT >= 21) {
            return ObjectAnimatorCompatLollipop.ofInt(t, property, property2, path);
        }
        return ObjectAnimatorCompatBase.ofInt(t, property, property2, path);
    }
}
