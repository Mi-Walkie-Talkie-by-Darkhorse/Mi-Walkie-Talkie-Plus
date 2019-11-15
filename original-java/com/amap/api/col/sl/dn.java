package com.amap.api.col.sl;

import android.text.TextUtils;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.net.Proxy;
import java.net.URLConnection;
import java.util.Map;

/* compiled from: BaseNetManager */
public class dn {
    private static dn a;

    /* compiled from: BaseNetManager */
    public interface a {
        URLConnection a();
    }

    public static dn a() {
        if (a == null) {
            a = new dn();
        }
        return a;
    }

    public static byte[] a(ds dsVar) throws bo {
        try {
            du a2 = a(dsVar, true);
            if (a2 != null) {
                return a2.a;
            }
            return null;
        } catch (bo e) {
            throw e;
        } catch (Throwable th) {
            throw new bo(AMapException.ERROR_UNKNOWN);
        }
    }

    public byte[] b(ds dsVar) throws bo {
        try {
            du a2 = a(dsVar, false);
            if (a2 != null) {
                return a2.a;
            }
            return null;
        } catch (bo e) {
            throw e;
        } catch (Throwable th) {
            cj.a(th, "bm", "msp");
            throw new bo(AMapException.ERROR_UNKNOWN);
        }
    }

    protected static void c(ds dsVar) throws bo {
        if (dsVar == null) {
            throw new bo("requeust is null");
        } else if (dsVar.f() == null || "".equals(dsVar.f())) {
            throw new bo("request url is empty");
        }
    }

    public static du a(ds dsVar, boolean z) throws bo {
        Proxy proxy;
        String str;
        try {
            c(dsVar);
            if (dsVar.h == null) {
                proxy = null;
            } else {
                proxy = dsVar.h;
            }
            dq dqVar = new dq(dsVar.f, dsVar.g, proxy, z);
            byte[] e = dsVar.e();
            if (e == null || e.length == 0) {
                str = dsVar.f();
            } else {
                Map b = dsVar.b();
                if (b == null) {
                    str = dsVar.f();
                } else {
                    String a2 = dq.a(b);
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(dsVar.f()).append("?").append(a2);
                    str = stringBuffer.toString();
                }
            }
            Map c = dsVar.c();
            byte[] e2 = dsVar.e();
            if (e2 == null || e2.length == 0) {
                String a3 = dq.a(dsVar.b());
                if (!TextUtils.isEmpty(a3)) {
                    e2 = ca.a(a3);
                }
            }
            return dqVar.a(str, c, e2);
        } catch (bo e3) {
            throw e3;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            throw new bo(AMapException.ERROR_UNKNOWN);
        }
    }
}
