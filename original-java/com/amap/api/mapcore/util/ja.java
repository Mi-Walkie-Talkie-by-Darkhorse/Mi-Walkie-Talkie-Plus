package com.amap.api.mapcore.util;

import android.content.Context;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.HttpHost;
import org.apache.http.protocol.HTTP;

/* compiled from: LocNetManager */
public final class ja {
    private static ja b = null;
    hp a = null;
    private Context c = null;
    private int d = 0;
    private int e = jd.f;
    private boolean f = false;

    private ja(Context context) {
        this.c = context;
        this.a = hp.a();
    }

    public static ja a(Context context) {
        if (b == null) {
            b = new ja(context);
        }
        return b;
    }

    public final hx a(jb jbVar) throws Throwable {
        long b2 = jg.b();
        hx a2 = this.a.a(jbVar, this.f);
        this.d = Long.valueOf(jg.b() - b2).intValue();
        return a2;
    }

    public final jb a(Context context, byte[] bArr, String str) {
        try {
            HashMap hashMap = new HashMap();
            jb jbVar = new jb(context, jd.b());
            try {
                hashMap.put("Content-Type", "application/octet-stream");
                hashMap.put("Accept-Encoding", "gzip");
                hashMap.put("gzipped", "1");
                hashMap.put("Connection", HTTP.CONN_KEEP_ALIVE);
                hashMap.put("User-Agent", "AMAP_Location_SDK_Android 3.6.0");
                hashMap.put("KEY", fo.f(context));
                hashMap.put("enginever", "4.7");
                String a2 = fr.a();
                String a3 = fr.a(context, a2, "key=" + fo.f(context));
                hashMap.put(Key.TS, a2);
                hashMap.put("scode", a3);
                hashMap.put("encr", "1");
                jbVar.b((Map<String, String>) hashMap);
                jbVar.o();
                jbVar.a(String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s", new Object[]{"3.6.0", "loc", Integer.valueOf(3)}));
                jbVar.d();
                jbVar.b(str);
                jbVar.b(jg.a(bArr));
                jbVar.a(fv.a(context));
                HashMap hashMap2 = new HashMap();
                hashMap2.put("output", "bin");
                hashMap2.put("policy", "3103");
                jbVar.a((Map<String, String>) hashMap2);
                jbVar.a(this.e);
                jbVar.b(this.e);
                if (!this.f) {
                    return jbVar;
                }
                jbVar.b(jbVar.c().replace(HttpHost.DEFAULT_SCHEME_NAME, "https"));
                return jbVar;
            } catch (Throwable th) {
                return jbVar;
            }
        } catch (Throwable th2) {
            return null;
        }
    }

    public final void a(long j, boolean z) {
        try {
            this.f = z;
            this.e = Long.valueOf(j).intValue();
        } catch (Throwable th) {
            jd.a(th, "netmanager", "setOption");
        }
    }
}
