package com.ifengyu.intercom.b;

import android.content.Context;
import android.os.Handler;
import android.os.Process;

/* compiled from: AppUtils */
public final class f {
    public static void a(Context context) {
        a(context, true);
    }

    public static void a(Context context, boolean z) {
        a(context, false, false, z);
    }

    private static void a(Context context, boolean z, boolean z2, final boolean z3) {
        s.e("exit", "restart=" + z + ", home=" + z2);
        new Handler().post(new Runnable() {
            public void run() {
                if (z3) {
                    Process.killProcess(Process.myPid());
                }
            }
        });
    }
}
