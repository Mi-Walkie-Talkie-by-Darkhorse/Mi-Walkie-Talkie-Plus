package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.net.Proxy;
import java.util.Map;

/* compiled from: Request */
public abstract class hv {
    int h = BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
    int i = BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
    Proxy j = null;

    public abstract Map<String, String> a();

    public abstract Map<String, String> b();

    public abstract String c();

    /* access modifiers changed from: 0000 */
    public String m() {
        byte[] g = g();
        if (g == null || g.length == 0) {
            return c();
        }
        Map b = b();
        if (b == null) {
            return c();
        }
        String a = hs.a(b);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(c()).append("?").append(a);
        return stringBuffer.toString();
    }

    /* access modifiers changed from: 0000 */
    public byte[] n() {
        byte[] g = g();
        if (g != null && g.length != 0) {
            return g;
        }
        String a = hs.a(b());
        if (!TextUtils.isEmpty(a)) {
            return fy.a(a);
        }
        return g;
    }

    public final void a(int i2) {
        this.h = i2;
    }

    public final void b(int i2) {
        this.i = i2;
    }

    public byte[] g() {
        return null;
    }

    public final void a(Proxy proxy) {
        this.j = proxy;
    }
}
