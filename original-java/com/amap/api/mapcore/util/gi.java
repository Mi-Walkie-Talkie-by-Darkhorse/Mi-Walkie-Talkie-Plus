package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Looper;
import java.util.List;

/* compiled from: ExceptionLogProcessor */
public class gi extends gj {
    private static boolean b = true;

    protected gi(int i) {
        super(i);
    }

    /* access modifiers changed from: protected */
    public boolean a(Context context) {
        if (fs.p(context) != 1 || !b) {
            return false;
        }
        b = false;
        synchronized (Looper.getMainLooper()) {
            gw gwVar = new gw(context);
            gx a = gwVar.a();
            if (a == null) {
                return true;
            }
            if (!a.b()) {
                return false;
            }
            a.b(false);
            gwVar.a(a);
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public String a(List<fx> list) {
        return null;
    }
}
