package com.amap.api.col.sl;

import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.net.Proxy;
import java.util.Map;

/* compiled from: Request */
public abstract class ds {
    int f = BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
    int g = BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
    Proxy h = null;

    public abstract Map<String, String> b();

    public abstract Map<String, String> c();

    public abstract String f();

    public final void a(int i) {
        this.f = i;
    }

    public final void b(int i) {
        this.g = i;
    }

    public byte[] e() {
        return null;
    }

    public final void a(Proxy proxy) {
        this.h = proxy;
    }
}
