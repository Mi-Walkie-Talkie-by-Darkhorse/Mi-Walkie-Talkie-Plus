package org.greenrobot.greendao;

import android.util.Log;

/* compiled from: DaoLog */
public class d {
    public static int a(String str) {
        return Log.d("greenDAO", str);
    }

    public static int b(String str) {
        return Log.i("greenDAO", str);
    }

    public static int a(String str, Throwable th) {
        return Log.i("greenDAO", str, th);
    }

    public static int c(String str) {
        return Log.w("greenDAO", str);
    }

    public static int b(String str, Throwable th) {
        return Log.w("greenDAO", str, th);
    }

    public static int c(String str, Throwable th) {
        return Log.e("greenDAO", str, th);
    }
}
