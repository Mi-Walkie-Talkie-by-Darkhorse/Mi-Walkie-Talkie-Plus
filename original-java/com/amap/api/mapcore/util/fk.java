package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Handler;
import com.amap.api.maps.model.LatLng;
import com.amap.api.trace.TraceLocation;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TraceHandler */
public class fk extends fi<List<TraceLocation>, List<LatLng>> implements Runnable {
    private List<TraceLocation> a;
    private Handler b = null;
    private int k = 0;
    private int l = 0;
    private String m;

    public fk(Context context, Handler handler, List<TraceLocation> list, int i, String str, int i2, int i3) {
        super(context, list);
        this.a = list;
        this.b = handler;
        this.l = i2;
        this.k = i3;
        this.m = str;
    }

    /* access modifiers changed from: protected */
    public String f() {
        JSONArray jSONArray = new JSONArray();
        long j = 0;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.a.size()) {
                TraceLocation traceLocation = (TraceLocation) this.a.get(i2);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("x", traceLocation.getLongitude());
                    jSONObject.put("y", traceLocation.getLatitude());
                    jSONObject.put("ag", (int) traceLocation.getBearing());
                    long time = traceLocation.getTime();
                    if (i2 == 0) {
                        if (time == 0) {
                            time = (System.currentTimeMillis() - FileTracerConfig.DEF_FLUSH_INTERVAL) / 1000;
                        }
                        jSONObject.put("tm", time / 1000);
                        j = time;
                    } else if (time == 0 || time - j < 1000) {
                        jSONObject.put("tm", 1);
                        j = time;
                    } else {
                        jSONObject.put("tm", (time - j) / 1000);
                        j = time;
                    }
                    jSONObject.put("sp", (int) traceLocation.getSpeed());
                } catch (JSONException e) {
                    ThrowableExtension.printStackTrace(e);
                }
                jSONArray.put(jSONObject);
                i = i2 + 1;
            } else {
                this.g = c() + "&" + jSONArray.toString();
                return jSONArray.toString();
            }
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public List<LatLng> c(String str) throws fg {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new JSONObject(str).optJSONArray("points");
            if (!(optJSONArray == null || optJSONArray.length() == 0)) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    arrayList.add(new LatLng(Double.parseDouble(optJSONObject.optString("y")), Double.parseDouble(optJSONObject.optString("x"))));
                }
            }
        } catch (JSONException e) {
            ThrowableExtension.printStackTrace(e);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return arrayList;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.Object r0 = r4.d()     // Catch:{ fg -> 0x0026 }
            java.util.List r0 = (java.util.List) r0     // Catch:{ fg -> 0x0026 }
            com.amap.api.mapcore.util.fm r1 = com.amap.api.mapcore.util.fm.a()     // Catch:{ Throwable -> 0x0037 }
            java.lang.String r2 = r4.m     // Catch:{ Throwable -> 0x0037 }
            int r3 = r4.k     // Catch:{ Throwable -> 0x0037 }
            r1.a(r2, r3, r0)     // Catch:{ Throwable -> 0x0037 }
            com.amap.api.mapcore.util.fm r0 = com.amap.api.mapcore.util.fm.a()     // Catch:{ Throwable -> 0x0037 }
            java.lang.String r1 = r4.m     // Catch:{ Throwable -> 0x0037 }
            com.amap.api.mapcore.util.fm$a r0 = r0.a(r1)     // Catch:{ Throwable -> 0x0037 }
            android.os.Handler r1 = r4.b     // Catch:{ Throwable -> 0x0037 }
            r0.a(r1)     // Catch:{ Throwable -> 0x0037 }
        L_0x0025:
            return
        L_0x0026:
            r0 = move-exception
            com.amap.api.mapcore.util.fm r1 = com.amap.api.mapcore.util.fm.a()     // Catch:{ Throwable -> 0x0037 }
            android.os.Handler r2 = r4.b     // Catch:{ Throwable -> 0x0037 }
            int r3 = r4.l     // Catch:{ Throwable -> 0x0037 }
            java.lang.String r0 = r0.a()     // Catch:{ Throwable -> 0x0037 }
            r1.a(r2, r3, r0)     // Catch:{ Throwable -> 0x0037 }
            goto L_0x0025
        L_0x0037:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fk.run():void");
    }
}
