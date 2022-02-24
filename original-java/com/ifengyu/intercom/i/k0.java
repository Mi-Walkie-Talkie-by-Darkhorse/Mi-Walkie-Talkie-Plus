package com.ifengyu.intercom.i;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Process;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.library.base.BaseApp;
import java.io.FileNotFoundException;

/* compiled from: UIUtils.java */
/* loaded from: classes2.dex */
public class k0 {
    public static Context a() {
        return MiTalkiApp.b();
    }

    public static int[] b(int i) {
        return e().getIntArray(i);
    }

    public static String c(int i) {
        return e().getString(i);
    }

    public static String[] d(int i) {
        return e().getStringArray(i);
    }

    public static Resources e() {
        return a().getResources();
    }

    public static void f() {
        b().removeCallbacksAndMessages(null);
    }

    public static String a(int i, Object... objArr) {
        return e().getString(i, objArr);
    }

    private static Handler b() {
        return BaseApp.a();
    }

    private static long c() {
        return BaseApp.c();
    }

    public static String d() {
        return a().getPackageName();
    }

    public static int a(int i) {
        return e().getColor(i);
    }

    public static void b(Runnable runnable) {
        b().removeCallbacks(runnable);
    }

    public static void a(Runnable runnable) {
        if (Process.myTid() == c()) {
            runnable.run();
        } else {
            b().post(runnable);
        }
    }

    public static void a(Runnable runnable, long j) {
        b().postDelayed(runnable, j);
    }

    public static Bitmap a(Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            return BitmapFactory.decodeStream(a().getContentResolver().openInputStream(uri));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
