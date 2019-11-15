package com.ifengyu.library.helper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class QMUIStatusBarHelper {
    public static float a = -1.0f;
    public static float b = -1.0f;
    private static int c = -1;
    private static int d = 0;

    @Retention(RetentionPolicy.SOURCE)
    private @interface StatusBarType {
    }

    public static void a(Activity activity) {
        a(activity, 1073741824);
    }

    private static boolean b() {
        return VERSION.SDK_INT >= 19 && !Build.BRAND.toLowerCase().contains("essential");
    }

    @TargetApi(19)
    public static void a(Activity activity, @ColorInt int i) {
        if (b()) {
            if (a.h() || a.b()) {
                activity.getWindow().setFlags(67108864, 67108864);
            } else if (VERSION.SDK_INT >= 21) {
                Window window = activity.getWindow();
                window.getDecorView().setSystemUiVisibility(1280);
                if (VERSION.SDK_INT < 23 || !a()) {
                    window.clearFlags(67108864);
                    window.addFlags(Integer.MIN_VALUE);
                    window.setStatusBarColor(0);
                    return;
                }
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(0);
            } else if (VERSION.SDK_INT >= 19) {
                activity.getWindow().setFlags(67108864, 67108864);
            } else {
                if (VERSION.SDK_INT > 17) {
                }
            }
        }
    }

    public static boolean b(Activity activity) {
        if (activity == null || a.j()) {
            return false;
        }
        if (d != 0) {
            return b(activity, d);
        }
        if (VERSION.SDK_INT < 19) {
            return false;
        }
        if (c() && a(activity.getWindow(), true)) {
            d = 1;
            return true;
        } else if (b(activity.getWindow(), true)) {
            d = 2;
            return true;
        } else if (VERSION.SDK_INT < 23) {
            return false;
        } else {
            c(activity.getWindow(), true);
            d = 3;
            return true;
        }
    }

    private static boolean b(Activity activity, int i) {
        if (i == 1) {
            return a(activity.getWindow(), true);
        }
        if (i == 2) {
            return b(activity.getWindow(), true);
        }
        if (i == 3) {
            return c(activity.getWindow(), true);
        }
        return false;
    }

    @TargetApi(23)
    private static int a(Window window, int i) {
        return a(window, a(window, a(window, a(window, a(window, a(window, i, 1024), 4), 2), 4096), 1024), 512);
    }

    public static int a(Window window, int i, int i2) {
        if ((window.getDecorView().getSystemUiVisibility() & i2) == i2) {
            return i | i2;
        }
        return i;
    }

    @TargetApi(23)
    private static boolean c(Window window, boolean z) {
        int i = 8192;
        View decorView = window.getDecorView();
        if (a.g()) {
            window.addFlags(Integer.MIN_VALUE);
            if (!z) {
                i = 256;
            }
            decorView.setSystemUiVisibility(i);
        } else {
            if (!z) {
                i = 256;
            }
            decorView.setSystemUiVisibility(a(window, i));
        }
        return true;
    }

    public static boolean a(Window window, boolean z) {
        if (window == null) {
            return false;
        }
        Class cls = window.getClass();
        try {
            Class cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Method method = cls.getMethod("setExtraFlags", new Class[]{Integer.TYPE, Integer.TYPE});
            if (z) {
                method.invoke(window, new Object[]{Integer.valueOf(i), Integer.valueOf(i)});
                return true;
            }
            method.invoke(window, new Object[]{Integer.valueOf(0), Integer.valueOf(i)});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean c() {
        if ((!a.g() || VERSION.SDK_INT >= 23) && !a.c() && !a.d() && !a.e() && !a.f()) {
            return false;
        }
        return true;
    }

    public static boolean b(Window window, boolean z) {
        int i;
        c(window, z);
        if (window == null) {
            return false;
        }
        try {
            LayoutParams attributes = window.getAttributes();
            Field declaredField = LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
            Field declaredField2 = LayoutParams.class.getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            int i2 = declaredField.getInt(null);
            int i3 = declaredField2.getInt(attributes);
            if (z) {
                i = i2 | i3;
            } else {
                i = (i2 ^ -1) & i3;
            }
            declaredField2.setInt(attributes, i);
            window.setAttributes(attributes);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean a() {
        return !a.i() && !a.j();
    }
}
