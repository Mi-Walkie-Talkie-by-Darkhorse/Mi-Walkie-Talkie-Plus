package com.amap.api.col.sl;

import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.services.district.DistrictSearchQuery;
import org.json.JSONObject;

/* compiled from: H5LocationClient */
public final class h {
    Object a = new Object();
    AMapLocationClientOption b = null;
    a c = null;
    private Context d;
    private AMapLocationClient e = null;
    /* access modifiers changed from: private */
    public WebView f = null;
    /* access modifiers changed from: private */
    public String g = "AMap.Geolocation.cbk";
    /* access modifiers changed from: private */
    public volatile boolean h = false;

    /* compiled from: H5LocationClient */
    class a implements AMapLocationListener {
        a() {
        }

        public final void onLocationChanged(AMapLocation aMapLocation) {
            if (h.this.h) {
                h hVar = h.this;
                h hVar2 = h.this;
                h.a(hVar, h.b(aMapLocation));
            }
        }
    }

    static /* synthetic */ void a(h hVar, final String str) {
        try {
            if (hVar.f == null) {
                return;
            }
            if (VERSION.SDK_INT >= 19) {
                hVar.f.evaluateJavascript("javascript:" + hVar.g + "('" + str + "')", new ValueCallback<String>() {
                    public final /* bridge */ /* synthetic */ void onReceiveValue(Object obj) {
                    }
                });
            } else {
                hVar.f.post(new Runnable() {
                    public final void run() {
                        h.this.f.loadUrl("javascript:" + h.this.g + "('" + str + "')");
                    }
                });
            }
        } catch (Throwable th) {
            fq.a(th, "H5LocationClient", "callbackJs()");
        }
    }

    public h(Context context, WebView webView) {
        this.d = context.getApplicationContext();
        this.f = webView;
        this.c = new a();
    }

    public final void a() {
        if (this.f != null && this.d != null && !this.h) {
            try {
                this.f.getSettings().setJavaScriptEnabled(true);
                this.f.addJavascriptInterface(this, "AMapAndroidLoc");
                if (!TextUtils.isEmpty(this.f.getUrl())) {
                    this.f.reload();
                }
                if (this.e == null) {
                    this.e = new AMapLocationClient(this.d);
                    this.e.setLocationListener(this.c);
                }
                this.h = true;
            } catch (Throwable th) {
            }
        }
    }

    public final void b() {
        synchronized (this.a) {
            this.h = false;
            if (this.e != null) {
                this.e.unRegisterLocationListener(this.c);
                this.e.stopLocation();
                this.e.onDestroy();
                this.e = null;
            }
            this.b = null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:55:?, code lost:
        return;
     */
    @android.webkit.JavascriptInterface
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void getLocation(java.lang.String r13) {
        /*
            r12 = this;
            r2 = 30000(0x7530, double:1.4822E-319)
            r0 = 5
            r6 = 1
            r4 = 0
            java.lang.Object r7 = r12.a
            monitor-enter(r7)
            boolean r1 = r12.h     // Catch:{ all -> 0x0087 }
            if (r1 != 0) goto L_0x000e
            monitor-exit(r7)     // Catch:{ all -> 0x0087 }
        L_0x000d:
            return
        L_0x000e:
            com.amap.api.location.AMapLocationClientOption r1 = r12.b     // Catch:{ all -> 0x0087 }
            if (r1 != 0) goto L_0x0019
            com.amap.api.location.AMapLocationClientOption r1 = new com.amap.api.location.AMapLocationClientOption     // Catch:{ all -> 0x0087 }
            r1.<init>()     // Catch:{ all -> 0x0087 }
            r12.b = r1     // Catch:{ all -> 0x0087 }
        L_0x0019:
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch:{ Throwable -> 0x009f }
            r8.<init>(r13)     // Catch:{ Throwable -> 0x009f }
            java.lang.String r1 = "to"
            r10 = 30000(0x7530, double:1.4822E-319)
            long r2 = r8.optLong(r1, r10)     // Catch:{ Throwable -> 0x009f }
            java.lang.String r1 = "useGPS"
            r5 = 1
            int r1 = r8.optInt(r1, r5)     // Catch:{ Throwable -> 0x009f }
            if (r1 != r6) goto L_0x008a
            r5 = r6
        L_0x0030:
            java.lang.String r1 = "watch"
            r9 = 0
            int r1 = r8.optInt(r1, r9)     // Catch:{ Throwable -> 0x00a3 }
            if (r1 != r6) goto L_0x008c
            r1 = r6
        L_0x003a:
            java.lang.String r9 = "interval"
            r10 = 5
            int r0 = r8.optInt(r9, r10)     // Catch:{ Throwable -> 0x0093 }
            java.lang.String r9 = "callback"
            r10 = 0
            java.lang.String r8 = r8.optString(r9, r10)     // Catch:{ Throwable -> 0x0093 }
            boolean r9 = android.text.TextUtils.isEmpty(r8)     // Catch:{ Throwable -> 0x0093 }
            if (r9 != 0) goto L_0x008e
            r12.g = r8     // Catch:{ Throwable -> 0x0093 }
        L_0x0050:
            com.amap.api.location.AMapLocationClientOption r8 = r12.b     // Catch:{ Throwable -> 0x009d }
            r8.setHttpTimeOut(r2)     // Catch:{ Throwable -> 0x009d }
            if (r5 == 0) goto L_0x0095
            com.amap.api.location.AMapLocationClientOption r2 = r12.b     // Catch:{ Throwable -> 0x009d }
            com.amap.api.location.AMapLocationClientOption$AMapLocationMode r3 = com.amap.api.location.AMapLocationClientOption.AMapLocationMode.Hight_Accuracy     // Catch:{ Throwable -> 0x009d }
            r2.setLocationMode(r3)     // Catch:{ Throwable -> 0x009d }
        L_0x005e:
            com.amap.api.location.AMapLocationClientOption r2 = r12.b     // Catch:{ Throwable -> 0x009d }
            if (r1 != 0) goto L_0x0063
            r4 = r6
        L_0x0063:
            r2.setOnceLocation(r4)     // Catch:{ Throwable -> 0x009d }
            if (r1 == 0) goto L_0x0070
            com.amap.api.location.AMapLocationClientOption r1 = r12.b     // Catch:{ Throwable -> 0x009d }
            int r0 = r0 * 1000
            long r2 = (long) r0     // Catch:{ Throwable -> 0x009d }
            r1.setInterval(r2)     // Catch:{ Throwable -> 0x009d }
        L_0x0070:
            com.amap.api.location.AMapLocationClient r0 = r12.e     // Catch:{ all -> 0x0087 }
            if (r0 == 0) goto L_0x0085
            com.amap.api.location.AMapLocationClient r0 = r12.e     // Catch:{ all -> 0x0087 }
            com.amap.api.location.AMapLocationClientOption r1 = r12.b     // Catch:{ all -> 0x0087 }
            r0.setLocationOption(r1)     // Catch:{ all -> 0x0087 }
            com.amap.api.location.AMapLocationClient r0 = r12.e     // Catch:{ all -> 0x0087 }
            r0.stopLocation()     // Catch:{ all -> 0x0087 }
            com.amap.api.location.AMapLocationClient r0 = r12.e     // Catch:{ all -> 0x0087 }
            r0.startLocation()     // Catch:{ all -> 0x0087 }
        L_0x0085:
            monitor-exit(r7)     // Catch:{ all -> 0x0087 }
            goto L_0x000d
        L_0x0087:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        L_0x008a:
            r5 = r4
            goto L_0x0030
        L_0x008c:
            r1 = r4
            goto L_0x003a
        L_0x008e:
            java.lang.String r8 = "AMap.Geolocation.cbk"
            r12.g = r8     // Catch:{ Throwable -> 0x0093 }
            goto L_0x0050
        L_0x0093:
            r8 = move-exception
            goto L_0x0050
        L_0x0095:
            com.amap.api.location.AMapLocationClientOption r2 = r12.b     // Catch:{ Throwable -> 0x009d }
            com.amap.api.location.AMapLocationClientOption$AMapLocationMode r3 = com.amap.api.location.AMapLocationClientOption.AMapLocationMode.Battery_Saving     // Catch:{ Throwable -> 0x009d }
            r2.setLocationMode(r3)     // Catch:{ Throwable -> 0x009d }
            goto L_0x005e
        L_0x009d:
            r0 = move-exception
            goto L_0x0070
        L_0x009f:
            r1 = move-exception
            r1 = r4
            r5 = r4
            goto L_0x0050
        L_0x00a3:
            r1 = move-exception
            r1 = r4
            goto L_0x0050
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.h.getLocation(java.lang.String):void");
    }

    @JavascriptInterface
    public final void stopLocation() {
        if (this.h && this.e != null) {
            this.e.stopLocation();
        }
    }

    /* access modifiers changed from: private */
    public static String b(AMapLocation aMapLocation) {
        JSONObject jSONObject = new JSONObject();
        if (aMapLocation == null) {
            try {
                jSONObject.put(MyLocationStyle.ERROR_CODE, -1);
                jSONObject.put(MyLocationStyle.ERROR_INFO, "unknownError");
            } catch (Throwable th) {
            }
        } else if (aMapLocation.getErrorCode() == 0) {
            jSONObject.put(MyLocationStyle.ERROR_CODE, 0);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("x", aMapLocation.getLongitude());
            jSONObject2.put("y", aMapLocation.getLatitude());
            jSONObject2.put("precision", (double) aMapLocation.getAccuracy());
            jSONObject2.put("type", aMapLocation.getLocationType());
            jSONObject2.put(DistrictSearchQuery.KEYWORDS_COUNTRY, aMapLocation.getCountry());
            jSONObject2.put(DistrictSearchQuery.KEYWORDS_PROVINCE, aMapLocation.getProvince());
            jSONObject2.put(DistrictSearchQuery.KEYWORDS_CITY, aMapLocation.getCity());
            jSONObject2.put("cityCode", aMapLocation.getCityCode());
            jSONObject2.put(DistrictSearchQuery.KEYWORDS_DISTRICT, aMapLocation.getDistrict());
            jSONObject2.put("adCode", aMapLocation.getAdCode());
            jSONObject2.put("street", aMapLocation.getStreet());
            jSONObject2.put("streetNum", aMapLocation.getStreetNum());
            jSONObject2.put("floor", aMapLocation.getFloor());
            jSONObject2.put("address", aMapLocation.getAddress());
            jSONObject.put("result", jSONObject2);
        } else {
            jSONObject.put(MyLocationStyle.ERROR_CODE, aMapLocation.getErrorCode());
            jSONObject.put(MyLocationStyle.ERROR_INFO, aMapLocation.getErrorInfo());
            jSONObject.put("locationDetail", aMapLocation.getLocationDetail());
        }
        return jSONObject.toString();
    }
}
