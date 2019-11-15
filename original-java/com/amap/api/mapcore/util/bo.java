package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.mapcore.util.fp.a;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: ProtocalHandler */
public abstract class bo<T, V> {
    protected T a;
    protected int b = 3;
    protected Context c;

    /* access modifiers changed from: protected */
    public abstract String a();

    /* access modifiers changed from: protected */
    public abstract JSONObject a(a aVar);

    /* access modifiers changed from: protected */
    public abstract V b(JSONObject jSONObject) throws AMapException;

    /* access modifiers changed from: protected */
    public abstract Map<String, String> b();

    public bo(Context context, T t) {
        a(context, t);
    }

    private void a(Context context, T t) {
        this.c = context;
        this.a = t;
    }

    public V c() throws AMapException {
        if (this.a != null) {
            return d();
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public V d() throws AMapException {
        int i = 0;
        V v = null;
        a aVar = null;
        while (i < this.b) {
            try {
                aVar = fp.a(this.c, ee.e(), a(), b());
                v = b(a(aVar));
                i = this.b;
            } catch (Throwable th) {
                gf.b(th, "ProtocalHandler", "getDataMayThrow AMapException");
                ThrowableExtension.printStackTrace(th);
                i++;
                if (i < this.b) {
                    continue;
                } else if (aVar == null || aVar.a == null) {
                    v = null;
                } else {
                    throw new AMapException(aVar.a);
                }
            }
        }
        return v;
    }
}
