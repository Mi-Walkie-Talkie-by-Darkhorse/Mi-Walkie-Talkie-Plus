package com.mi.milinkforgame.sdk.util;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseArray;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class PreloadClearUtil {
    private static final String TAG = PreloadClearUtil.class.getSimpleName();

    public static void clearResources() {
        try {
            MiLinkLog.v("PreloadClearUtil", "clear resource");
            clearPreloadedDrawables();
            clearPreloadedColorDrawables();
            clearPreloadedColorStateLists();
        } catch (Exception e) {
            MiLinkLog.e(TAG, (Throwable) e);
        }
    }

    @SuppressLint({"NewApi"})
    private static void clearPreloadedDrawables() {
        try {
            Field field = getField(Resources.class, "sPreloadedDrawables");
            if (field != null) {
                field.setAccessible(true);
                if (VERSION.SDK_INT <= 17) {
                    LongSparseArray longSparseArray = (LongSparseArray) field.get(null);
                    if (longSparseArray != null) {
                        clearLongSparseArray(longSparseArray);
                    }
                } else if (VERSION.SDK_INT >= 18) {
                    LongSparseArray[] longSparseArrayArr = (LongSparseArray[]) field.get(null);
                    if (longSparseArrayArr != null) {
                        for (LongSparseArray clearLongSparseArray : longSparseArrayArr) {
                            clearLongSparseArray(clearLongSparseArray);
                        }
                    }
                }
            }
        } catch (Exception e) {
            MiLinkLog.e(TAG, (Throwable) e);
        }
    }

    @SuppressLint({"NewApi"})
    private static void clearPreloadedColorDrawables() {
        try {
            Field field = getField(Resources.class, "sPreloadedColorDrawables");
            if (field != null) {
                field.setAccessible(true);
                LongSparseArray longSparseArray = (LongSparseArray) field.get(null);
                if (longSparseArray != null) {
                    clearLongSparseArray(longSparseArray);
                }
            }
        } catch (Exception e) {
            MiLinkLog.e(TAG, (Throwable) e);
        }
    }

    @SuppressLint({"NewApi"})
    private static void clearPreloadedColorStateLists() {
        try {
            Field field = getField(Resources.class, "sPreloadedColorStateLists");
            if (field == null) {
                field = getField(Resources.class, "mPreloadedColorStateLists");
            }
            if (field != null) {
                field.setAccessible(true);
                if (VERSION.SDK_INT <= 15) {
                    SparseArray sparseArray = (SparseArray) field.get(null);
                    if (sparseArray != null) {
                        clearSparseArray(sparseArray);
                        return;
                    }
                    return;
                }
                LongSparseArray longSparseArray = (LongSparseArray) field.get(null);
                if (longSparseArray != null) {
                    clearColorStateListArray(longSparseArray);
                }
            }
        } catch (Exception e) {
            MiLinkLog.e(TAG, (Throwable) e);
        }
    }

    private static Field getField(Class<?> cls, String str) {
        Field field = null;
        if (TextUtils.isEmpty(str)) {
            return field;
        }
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            MiLinkLog.e(TAG, (Throwable) e);
            return field;
        }
    }

    private static void clearColorStateListArray(LongSparseArray<ColorStateList> longSparseArray) {
        if (longSparseArray != null) {
            int size = longSparseArray.size();
            for (int i = 0; i < size; i++) {
                longSparseArray.setValueAt(i, null);
            }
        }
    }

    private static void clearLongSparseArray(LongSparseArray<ConstantState> longSparseArray) {
        if (longSparseArray != null) {
            int size = longSparseArray.size();
            for (int i = 0; i < size; i++) {
                ConstantState constantState = (ConstantState) longSparseArray.valueAt(i);
                if (constantState != null) {
                    Drawable newDrawable = constantState.newDrawable();
                    if (newDrawable != null && (newDrawable instanceof BitmapDrawable)) {
                        BitmapDrawable bitmapDrawable = (BitmapDrawable) newDrawable;
                        Bitmap bitmap = bitmapDrawable.getBitmap();
                        if (bitmap != null) {
                            bitmap.recycle();
                            setBitmap(bitmapDrawable, null);
                        }
                    }
                }
            }
        }
    }

    private static void setBitmap(BitmapDrawable bitmapDrawable, Bitmap bitmap) {
        try {
            Method method = getMethod(BitmapDrawable.class, "setBitmap", new Class[]{Bitmap.class});
            if (method != null) {
                method.setAccessible(true);
                method.invoke(bitmapDrawable, new Object[]{bitmap});
            }
        } catch (NoSuchMethodException e) {
            MiLinkLog.e(TAG, (Throwable) e);
        } catch (IllegalArgumentException e2) {
            MiLinkLog.e(TAG, (Throwable) e2);
        } catch (IllegalAccessException e3) {
            MiLinkLog.e(TAG, (Throwable) e3);
        } catch (InvocationTargetException e4) {
            MiLinkLog.e(TAG, (Throwable) e4);
        } catch (Exception e5) {
            MiLinkLog.e(TAG, (Throwable) e5);
        }
    }

    private static Method getMethod(Class cls, String str, Class[] clsArr) throws Exception {
        boolean z = false;
        try {
            return cls.getDeclaredMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            try {
                return cls.getMethod(str, clsArr);
            } catch (NoSuchMethodException e2) {
                if (cls.getSuperclass() != null) {
                    return getMethod(cls.getSuperclass(), str, clsArr);
                }
                return z;
            }
        }
    }

    private static void clearSparseArray(SparseArray<?> sparseArray) {
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                sparseArray.setValueAt(i, null);
            }
        }
    }
}
