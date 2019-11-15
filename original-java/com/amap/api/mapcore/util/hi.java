package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* compiled from: LoaderFactory */
public class hi {
    private static final hi a = new hi();
    private final Map<String, hb> b = new HashMap();

    private hi() {
    }

    public static hi a() {
        return a;
    }

    /* access modifiers changed from: 0000 */
    public synchronized hb a(Context context, fx fxVar) throws Exception {
        hb hbVar;
        if (!a(fxVar) || context == null) {
            hbVar = null;
        } else {
            String a2 = fxVar.a();
            hbVar = (hb) this.b.get(a2);
            if (hbVar == null) {
                try {
                    hb hgVar = new hg(context.getApplicationContext(), fxVar, true);
                    try {
                        this.b.put(a2, hgVar);
                        he.a(context, fxVar);
                        hbVar = hgVar;
                    } catch (Throwable th) {
                        hbVar = hgVar;
                    }
                } catch (Throwable th2) {
                }
            }
        }
        return hbVar;
    }

    private boolean a(fx fxVar) {
        if (fxVar == null || TextUtils.isEmpty(fxVar.b()) || TextUtils.isEmpty(fxVar.a())) {
            return false;
        }
        return true;
    }
}
