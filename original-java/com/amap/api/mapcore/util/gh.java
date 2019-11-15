package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Looper;
import java.util.Date;
import java.util.List;

/* compiled from: CrashLogProcessor */
public class gh extends gj {
    private static boolean b = true;

    protected gh(int i) {
        super(i);
    }

    /* access modifiers changed from: protected */
    public boolean a(Context context) {
        if (!b) {
            return false;
        }
        b = false;
        synchronized (Looper.getMainLooper()) {
            gw gwVar = new gw(context);
            gx a = gwVar.a();
            if (a == null) {
                return true;
            }
            if (!a.a()) {
                return false;
            }
            a.a(false);
            gwVar.a(a);
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public String a(String str) {
        return fu.c(str + fy.a(new Date().getTime()));
    }

    /* access modifiers changed from: protected */
    public String a(List<fx> list) {
        return null;
    }
}
