package com.ifengyu.library.helper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import com.uc.crashsdk.export.LogType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class QMUIStatusBarHelper {

    /* renamed from: a  reason: collision with root package name */
    private static int f7187a;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    private @interface StatusBarType {
    }

    public static boolean a(Activity activity) {
        if (activity == null || a.i()) {
            return false;
        }
        int i = f7187a;
        if (i != 0) {
            return a(activity, i);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            if (a() && c(activity.getWindow(), true)) {
                f7187a = 1;
                return true;
            } else if (b(activity.getWindow(), true)) {
                f7187a = 2;
                return true;
            } else if (Build.VERSION.SDK_INT >= 23) {
                a(activity.getWindow(), true);
                f7187a = 3;
                return true;
            }
        }
        return false;
    }

    public static void b(Activity activity) {
        b(activity, 1073741824);
    }

    public static boolean c(Window window, boolean z) {
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Method method = cls.getMethod("setExtraFlags", Integer.TYPE, Integer.TYPE);
                if (z) {
                    method.invoke(window, Integer.valueOf(i), Integer.valueOf(i));
                } else {
                    method.invoke(window, 0, Integer.valueOf(i));
                }
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static boolean b() {
        return Build.VERSION.SDK_INT >= 19 && !Build.BRAND.toLowerCase().contains("essential");
    }

    @TargetApi(19)
    public static void b(Activity activity, @ColorInt int i) {
        if (b()) {
            if (a.h() || a.b()) {
                activity.getWindow().setFlags(67108864, 67108864);
                return;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 21) {
                Window window = activity.getWindow();
                window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
                if (Build.VERSION.SDK_INT < 23 || !c()) {
                    window.clearFlags(67108864);
                    window.addFlags(Integer.MIN_VALUE);
                    window.setStatusBarColor(0);
                    return;
                }
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(0);
            } else if (i2 >= 19) {
                activity.getWindow().setFlags(67108864, 67108864);
            }
        }
    }

    public static boolean c() {
        return !a.j() && !a.i();
    }

    private static boolean a(Activity activity, int i) {
        if (i == 1) {
            return c(activity.getWindow(), true);
        }
        if (i == 2) {
            return b(activity.getWindow(), true);
        }
        if (i == 3) {
            return a(activity.getWindow(), true);
        }
        return false;
    }

    @TargetApi(23)
    private static int a(Window window, int i) {
        return a(window, a(window, a(window, a(window, a(window, a(window, i, 1024), 4), 2), 4096), 1024), 512);
    }

    public static boolean b(Window window, boolean z) {
        a(window, z);
        if (window != null) {
            try {
                WindowManager.LayoutParams attributes = window.getAttributes();
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i = declaredField.getInt(null);
                int i2 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, z ? i2 | i : (~i) & i2);
                window.setAttributes(attributes);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static int a(Window window, int i, int i2) {
        return (window.getDecorView().getSystemUiVisibility() & i2) == i2 ? i | i2 : i;
    }

    @TargetApi(23)
    private static boolean a(Window window, boolean z) {
        View decorView = window.getDecorView();
        int i = 8192;
        if (a.g()) {
            window.addFlags(Integer.MIN_VALUE);
            if (!z) {
                i = 256;
            }
            decorView.setSystemUiVisibility(i);
            return true;
        }
        if (!z) {
            i = 256;
        }
        decorView.setSystemUiVisibility(a(window, i));
        return true;
    }

    private static boolean a() {
        return (a.g() && Build.VERSION.SDK_INT < 23) || a.c() || a.d() || a.e() || a.f();
    }
}
