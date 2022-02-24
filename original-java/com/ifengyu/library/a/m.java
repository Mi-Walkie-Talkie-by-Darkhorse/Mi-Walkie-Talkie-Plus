package com.ifengyu.library.a;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.widget.Toast;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorRes;
import androidx.annotation.StringRes;
import androidx.core.content.b;
import com.ifengyu.library.base.BaseApp;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: UIUtils.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static Toast f7175a;

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicInteger f7176b = new AtomicInteger(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UIUtils.java */
    /* loaded from: classes2.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f7177a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f7178b;

        a(CharSequence charSequence, boolean z) {
            this.f7177a = charSequence;
            this.f7178b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (m.f7175a == null) {
                Toast unused = m.f7175a = Toast.makeText(m.c(), "", 0);
            }
            if (m.f7175a == null) {
                return;
            }
            if (this.f7177a == null) {
                m.f7175a.cancel();
                return;
            }
            m.f7175a.setText(this.f7177a);
            m.f7175a.setDuration(this.f7178b ? 1 : 0);
            m.f7175a.show();
        }
    }

    public static String b(@StringRes int i) {
        return f().getString(i);
    }

    public static Context c() {
        return BaseApp.b();
    }

    private static Handler d() {
        return BaseApp.a();
    }

    public static String e() {
        return c().getPackageName();
    }

    public static Resources f() {
        return c().getResources();
    }

    public static int b(float f) {
        return (int) ((f * f().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static String[] c(@ArrayRes int i) {
        return f().getStringArray(i);
    }

    public static void d(@StringRes int i) {
        a((CharSequence) b(i), false);
    }

    public static String a(@StringRes int i, Object... objArr) {
        return f().getString(i, objArr);
    }

    public static int b() {
        int i;
        int i2;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            i = f7176b.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!f7176b.compareAndSet(i, i2));
        return i;
    }

    public static int a(@ColorRes int i) {
        return b.a(c(), i);
    }

    public static void a(Runnable runnable, long j) {
        d().postDelayed(runnable, j);
    }

    public static int a(float f) {
        return (int) ((f * f().getDisplayMetrics().density) + 0.5f);
    }

    public static void a(CharSequence charSequence) {
        a(charSequence, false);
    }

    private static void a(CharSequence charSequence, boolean z) {
        BaseApp.a().post(new a(charSequence, z));
    }
}
