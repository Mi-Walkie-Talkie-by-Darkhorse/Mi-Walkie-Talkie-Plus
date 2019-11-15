package com.amap.api.mapcore.util;

import android.content.Context;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: CustomStyleRequest */
public class cy extends fh<String, a> {
    String a = "/map/styles";
    Context b;
    private String k;

    /* compiled from: CustomStyleRequest */
    public class a {
        public byte[] a;
        public int b = -1;

        public a() {
        }
    }

    public cy(Context context, String str) {
        super(context, str);
        this.b = context;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public a b(byte[] bArr) throws fg {
        a aVar = new a();
        aVar.a = bArr;
        return aVar;
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public a c(String str) throws fg {
        return null;
    }

    public Map<String, String> a() {
        String b2 = ee.e().b();
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", g.c);
        hashMap.put("Accept-Encoding", "gzip");
        hashMap.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", new Object[]{b2, "3dmap"}));
        hashMap.put("X-INFO", fr.a(this.b));
        hashMap.put("key", fo.f(this.b));
        hashMap.put("logversion", "2.1");
        return hashMap;
    }

    public Map<String, String> b() {
        HashMap hashMap = new HashMap();
        hashMap.put("key", fo.f(this.b));
        hashMap.put("output", "bin");
        hashMap.put("styleid", this.k);
        String a2 = fr.a();
        String a3 = fr.a(this.b, a2, fy.c((Map<String, String>) hashMap));
        hashMap.put(Key.TS, a2);
        hashMap.put("scode", a3);
        return hashMap;
    }

    public String c() {
        return "http://restapi.amap.com/v4" + this.a;
    }

    public void b(String str) {
        this.k = str;
    }
}
