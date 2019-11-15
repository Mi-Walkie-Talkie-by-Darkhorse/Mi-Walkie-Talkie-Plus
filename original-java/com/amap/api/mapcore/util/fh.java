package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.Map;

/* compiled from: BasicHandler */
public abstract class fh<T, V> extends hv {
    private int a = 1;
    protected T c;
    protected int d = 1;
    protected String e = "";
    protected Context f;
    protected String g;

    /* access modifiers changed from: protected */
    public abstract V c(String str) throws fg;

    public fh(Context context, T t) {
        a(context, t);
    }

    private void a(Context context, T t) {
        this.f = context;
        this.c = t;
        this.d = 1;
        b(30000);
        a(30000);
    }

    /* access modifiers changed from: protected */
    public V b(byte[] bArr) throws fg {
        String str;
        try {
            str = new String(bArr, "utf-8");
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
            str = null;
        }
        if (str == null || str.equals("")) {
            return null;
        }
        fj.a(str, this.g);
        return c(str);
    }

    public V d() throws fg {
        if (this.c != null) {
            return f();
        }
        return null;
    }

    private V f() throws fg {
        int i = 0;
        V v = null;
        while (i < this.d) {
            try {
                hu a2 = hu.a(false);
                a(fv.a(this.f));
                v = a(a(1, a2, this));
                i = this.d;
            } catch (fn e2) {
                i++;
                if (i < this.d) {
                    try {
                        Thread.sleep((long) (this.a * 1000));
                    } catch (InterruptedException e3) {
                        if (AMapException.ERROR_CONNECTION.equals(e2.getMessage()) || AMapException.ERROR_SOCKET.equals(e2.getMessage()) || AMapException.ERROR_UNKNOW_SERVICE.equals(e2.getMessage())) {
                            throw new fg(com.amap.api.services.core.AMapException.AMAP_CLIENT_NETWORK_EXCEPTION);
                        }
                        throw new fg(e2.a());
                    }
                } else {
                    e();
                    if (AMapException.ERROR_CONNECTION.equals(e2.getMessage()) || AMapException.ERROR_SOCKET.equals(e2.getMessage()) || AMapException.ERROR_UNKNOWN.equals(e2.a()) || AMapException.ERROR_UNKNOW_SERVICE.equals(e2.getMessage())) {
                        throw new fg(com.amap.api.services.core.AMapException.AMAP_CLIENT_NETWORK_EXCEPTION);
                    }
                    throw new fg(e2.a());
                }
            } catch (fg e4) {
                i++;
                if (i >= this.d) {
                    throw new fg(e4.a());
                }
            } catch (Throwable th) {
                throw new fg(com.amap.api.services.core.AMapException.AMAP_CLIENT_UNKNOWN_ERROR);
            }
        }
        return v;
    }

    /* access modifiers changed from: protected */
    public byte[] a(int i, hu huVar, hv hvVar) throws fn {
        if (i == 1) {
            return huVar.b(hvVar);
        }
        if (i == 2) {
            return huVar.a(hvVar);
        }
        return null;
    }

    public Map<String, String> b() {
        return null;
    }

    public Map<String, String> a() {
        return null;
    }

    private V a(byte[] bArr) throws fg {
        return b(bArr);
    }

    /* access modifiers changed from: protected */
    public V e() {
        return null;
    }
}
