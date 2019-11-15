package com.amap.api.mapcore.util;

import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;

/* compiled from: BaseNetManager */
public class hp {
    private static hp a;

    /* compiled from: BaseNetManager */
    public interface a {
        URLConnection a(Proxy proxy, URL url);
    }

    public static hp a() {
        if (a == null) {
            a = new hp();
        }
        return a;
    }

    public byte[] a(hv hvVar) throws fn {
        try {
            hx a2 = a(hvVar, true);
            if (a2 != null) {
                return a2.a;
            }
            return null;
        } catch (fn e) {
            throw e;
        } catch (Throwable th) {
            throw new fn(AMapException.ERROR_UNKNOWN);
        }
    }

    public byte[] b(hv hvVar) throws fn {
        try {
            hx a2 = a(hvVar, false);
            if (a2 != null) {
                return a2.a;
            }
            return null;
        } catch (fn e) {
            throw e;
        } catch (Throwable th) {
            gc.a(th, "bm", "msp");
            throw new fn(AMapException.ERROR_UNKNOWN);
        }
    }

    /* access modifiers changed from: protected */
    public void c(hv hvVar) throws fn {
        if (hvVar == null) {
            throw new fn("requeust is null");
        } else if (hvVar.c() == null || "".equals(hvVar.c())) {
            throw new fn("request url is empty");
        }
    }

    public hx a(hv hvVar, boolean z) throws fn {
        Proxy proxy;
        try {
            c(hvVar);
            if (hvVar.j == null) {
                proxy = null;
            } else {
                proxy = hvVar.j;
            }
            return new hs(hvVar.h, hvVar.i, proxy, z).a(hvVar.m(), hvVar.a(), hvVar.n());
        } catch (fn e) {
            throw e;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            throw new fn(AMapException.ERROR_UNKNOWN);
        }
    }
}
