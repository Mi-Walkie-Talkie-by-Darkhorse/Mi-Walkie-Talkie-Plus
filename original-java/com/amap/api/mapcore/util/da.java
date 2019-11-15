package com.amap.api.mapcore.util;

import android.content.Context;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: CustomStyleTextureRequest */
public class da extends fh<String, a> {
    String a = "/map/styles";
    Context b;

    /* compiled from: CustomStyleTextureRequest */
    public class a {
        public byte[] a;
        public int b = -1;

        public a() {
        }
    }

    public void a(String str) {
        this.a = str;
    }

    public da(Context context, String str) {
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
    /* renamed from: b */
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
        String a2 = fr.a();
        String a3 = fr.a(this.b, a2, fy.c((Map<String, String>) hashMap));
        hashMap.put(Key.TS, a2);
        hashMap.put("scode", a3);
        return hashMap;
    }

    public String c() {
        return this.a;
    }
}
