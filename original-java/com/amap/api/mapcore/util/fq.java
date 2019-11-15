package com.amap.api.mapcore.util;

import android.content.Context;
import android.util.Log;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.protocol.HTTP;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* compiled from: AuthManager */
public class fq {
    public static int a = -1;
    public static String b = "";
    private static fx c;
    private static String d = "http://apiinit.amap.com/v3/log/init";
    private static String e = null;

    private static boolean a(Context context, fx fxVar, boolean z) {
        boolean z2 = true;
        c = fxVar;
        try {
            String a2 = a();
            HashMap hashMap = new HashMap();
            hashMap.put("Content-Type", "application/x-www-form-urlencoded");
            hashMap.put("Accept-Encoding", "gzip");
            hashMap.put("Connection", HTTP.CONN_KEEP_ALIVE);
            hashMap.put("User-Agent", c.d());
            hashMap.put("X-INFO", fr.a(context, c, null, z));
            hashMap.put("logversion", "2.1");
            hashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[]{c.b(), c.a()}));
            hp a3 = hp.a();
            fz fzVar = new fz();
            fzVar.a(fv.a(context));
            fzVar.a((Map<String, String>) hashMap);
            fzVar.b(a(context));
            fzVar.a(a2);
            return a(a3.b(fzVar));
        } catch (Throwable th) {
            gc.a(th, "Auth", "getAuth");
            return z2;
        }
    }

    @Deprecated
    public static synchronized boolean a(Context context, fx fxVar) {
        boolean a2;
        synchronized (fq.class) {
            a2 = a(context, fxVar, false);
        }
        return a2;
    }

    public static void a(String str) {
        fo.a(str);
    }

    private static String a() {
        return d;
    }

    private static boolean a(byte[] bArr) {
        if (bArr == null) {
            return true;
        }
        try {
            JSONObject jSONObject = new JSONObject(fy.a(bArr));
            if (jSONObject.has("status")) {
                int i = jSONObject.getInt("status");
                if (i == 1) {
                    a = 1;
                } else if (i == 0) {
                    a = 0;
                }
            }
            if (jSONObject.has("info")) {
                b = jSONObject.getString("info");
            }
            if (a == 0) {
                Log.i("AuthFailure", b);
            }
            if (a != 1) {
                return false;
            }
            return true;
        } catch (JSONException e2) {
            gc.a((Throwable) e2, "Auth", "lData");
            return false;
        } catch (Throwable th) {
            gc.a(th, "Auth", "lData");
            return false;
        }
    }

    private static Map<String, String> a(Context context) {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("resType", "json");
            hashMap.put("encode", "UTF-8");
            String a2 = fr.a();
            hashMap.put(Key.TS, a2);
            hashMap.put("key", fo.f(context));
            hashMap.put("scode", fr.a(context, a2, fy.d("resType=json&encode=UTF-8&key=" + fo.f(context))));
        } catch (Throwable th) {
            gc.a(th, "Auth", "gParams");
        }
        return hashMap;
    }
}
