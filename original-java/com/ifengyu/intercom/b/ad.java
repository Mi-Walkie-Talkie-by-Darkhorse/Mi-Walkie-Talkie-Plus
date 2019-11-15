package com.ifengyu.intercom.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Process;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import java.io.FileNotFoundException;

/* compiled from: UIUtils */
public class ad {
    public static Context a() {
        return MiTalkiApp.a();
    }

    public static Resources b() {
        return a().getResources();
    }

    public static String a(int i) {
        return b().getString(i);
    }

    public static String a(int i, Object... objArr) {
        return b().getString(i, objArr);
    }

    public static String[] b(int i) {
        return b().getStringArray(i);
    }

    public static int[] c(int i) {
        return b().getIntArray(i);
    }

    public static int d(int i) {
        return b().getColor(i);
    }

    public static String c() {
        return a().getPackageName();
    }

    private static long e() {
        return MiTalkiApp.m();
    }

    private static Handler f() {
        return MiTalkiApp.n();
    }

    public static void a(Runnable runnable) {
        if (((long) Process.myTid()) == e()) {
            runnable.run();
        } else {
            f().post(runnable);
        }
    }

    public static void a(Runnable runnable, long j) {
        f().postDelayed(runnable, j);
    }

    public static void b(Runnable runnable) {
        f().removeCallbacks(runnable);
    }

    public static void d() {
        f().removeCallbacksAndMessages(null);
    }

    public static Bitmap a(Uri uri) {
        Bitmap bitmap = null;
        if (uri == null) {
            return bitmap;
        }
        try {
            return BitmapFactory.decodeStream(a().getContentResolver().openInputStream(uri));
        } catch (FileNotFoundException e) {
            ThrowableExtension.printStackTrace(e);
            return bitmap;
        }
    }
}
