package com.ifengyu.library.util;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Process;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.v4.content.ContextCompat;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.Toast;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.library.base.BaseApp;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: UIUtils */
public class l {
    public static int a;
    private static final String b = l.class.getSimpleName();
    private static int c = 0;
    /* access modifiers changed from: private */
    public static Toast d;
    private static final AtomicInteger e = new AtomicInteger(1);
    private static int f;
    private static int g;

    private l() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static Context a() {
        return BaseApp.l();
    }

    public static Resources b() {
        return a().getResources();
    }

    public static String a(@StringRes int i) {
        return b().getString(i);
    }

    public static int b(@ColorRes int i) {
        return ContextCompat.getColor(a(), i);
    }

    public static String c() {
        return a().getPackageName();
    }

    private static long k() {
        return BaseApp.m();
    }

    private static Handler l() {
        return BaseApp.n();
    }

    public static void a(Runnable runnable) {
        if (((long) Process.myTid()) == k()) {
            runnable.run();
        } else {
            l().post(runnable);
        }
    }

    public static int a(float f2) {
        return (int) ((b().getDisplayMetrics().density * f2) + 0.5f);
    }

    public static int b(float f2) {
        return (int) ((b().getDisplayMetrics().scaledDensity * f2) + 0.5f);
    }

    public static void c(@StringRes int i) {
        a(a(i), false);
    }

    public static void a(CharSequence charSequence) {
        a(charSequence, false);
    }

    public static void b(CharSequence charSequence) {
        a(charSequence, true);
    }

    private static void a(final CharSequence charSequence, final boolean z) {
        BaseApp.n().post(new Runnable() {
            public void run() {
                int i = 0;
                if (l.d == null) {
                    l.d = Toast.makeText(l.a(), "", 0);
                }
                if (l.d == null) {
                    return;
                }
                if (charSequence == null) {
                    l.d.cancel();
                    return;
                }
                l.d.setText(charSequence);
                Toast j = l.d;
                if (z) {
                    i = 1;
                }
                j.setDuration(i);
                l.d.show();
            }
        });
    }

    public static int d() {
        if (c > 0) {
            return c;
        }
        int identifier = b().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            c = b().getDimensionPixelSize(identifier);
            c.a(b, String.format("Get status bar height %s", new Object[]{Integer.valueOf(c)}));
        } else {
            try {
                Class cls = Class.forName("com.android.internal.R$dimen");
                c = b().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
                return a(25.0f);
            }
        }
        return c;
    }

    public static DisplayMetrics a(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static int e() {
        if (f == 0) {
            f = a(a()).widthPixels;
        }
        return f;
    }

    public static int f() {
        if (g == 0) {
            g = a(a()).heightPixels;
        }
        return g;
    }

    public static void a(@NonNull ViewGroup viewGroup) {
        if (m.a()) {
            LayoutParams layoutParams = viewGroup.getLayoutParams();
            layoutParams.height = d() + layoutParams.height;
            viewGroup.setPadding(0, d(), 0, 0);
        }
    }

    public static int g() {
        int i;
        int i2;
        if (VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            i = e.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!e.compareAndSet(i, i2));
        return i;
    }

    public static int h() {
        if (a == 0) {
            a = e() > f() ? f() : e();
        }
        return a;
    }

    public static int i() {
        return (int) (((float) h()) * 0.65f);
    }
}
