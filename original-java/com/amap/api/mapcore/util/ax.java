package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.util.FileUtils;
import org.jboss.netty.handler.codec.http.multipart.DiskFileUpload;
import org.json.JSONException;
import org.json.JSONObject;

@gm(a = "update_item", b = true)
/* compiled from: UpdateItem */
public class ax extends ba {
    private String n = "";
    private Context o;

    public ax() {
    }

    public ax(OfflineMapCity offlineMapCity, Context context) {
        this.o = context;
        this.a = offlineMapCity.getCity();
        this.c = offlineMapCity.getAdcode();
        this.b = offlineMapCity.getUrl();
        this.g = offlineMapCity.getSize();
        this.e = offlineMapCity.getVersion();
        this.k = offlineMapCity.getCode();
        this.i = 0;
        this.l = offlineMapCity.getState();
        this.j = offlineMapCity.getcompleteCode();
        this.m = offlineMapCity.getPinyin();
        a();
    }

    public ax(OfflineMapProvince offlineMapProvince, Context context) {
        this.o = context;
        this.a = offlineMapProvince.getProvinceName();
        this.c = offlineMapProvince.getProvinceCode();
        this.b = offlineMapProvince.getUrl();
        this.g = offlineMapProvince.getSize();
        this.e = offlineMapProvince.getVersion();
        this.i = 1;
        this.l = offlineMapProvince.getState();
        this.j = offlineMapProvince.getcompleteCode();
        this.m = offlineMapProvince.getPinyin();
        a();
    }

    /* access modifiers changed from: protected */
    public void a() {
        this.d = ee.b(this.o) + this.m + FileUtils.ZIP_FILE_EXT + DiskFileUpload.postfix;
    }

    public String b() {
        return this.n;
    }

    public void a(String str) {
        this.n = str;
    }

    public void b(String str) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    JSONObject jSONObject = new JSONObject(str).getJSONObject(HttpPostBodyUtil.FILE);
                    if (jSONObject != null) {
                        this.a = jSONObject.optString("title");
                        this.c = jSONObject.optString("code");
                        this.b = jSONObject.optString("url");
                        this.d = jSONObject.optString("fileName");
                        this.f = jSONObject.optLong("lLocalLength");
                        this.g = jSONObject.optLong("lRemoteLength");
                        this.l = jSONObject.optInt("mState");
                        this.e = jSONObject.optString("version");
                        this.h = jSONObject.optString("localPath");
                        this.n = jSONObject.optString("vMapFileNames");
                        this.i = jSONObject.optInt("isSheng");
                        this.j = jSONObject.optInt("mCompleteCode");
                        this.k = jSONObject.optString("mCityCode");
                        this.m = a(jSONObject, "pinyin");
                        if (this.m.equals("")) {
                            String substring = this.b.substring(this.b.lastIndexOf("/") + 1);
                            this.m = substring.substring(0, substring.lastIndexOf("."));
                        }
                    }
                }
            } catch (Throwable th) {
                gf.b(th, "UpdateItem", "readFileToJSONObject");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x00cc A[SYNTHETIC, Splitter:B:25:0x00cc] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00d9 A[SYNTHETIC, Splitter:B:33:0x00d9] */
    /* JADX WARNING: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c() {
        /*
            r6 = this;
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch:{ Throwable -> 0x00b2 }
            r1.<init>()     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "title"
            java.lang.String r3 = r6.a     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "code"
            java.lang.String r3 = r6.c     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "url"
            java.lang.String r3 = r6.b     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "fileName"
            java.lang.String r3 = r6.d     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "lLocalLength"
            long r4 = r6.f     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r4)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "lRemoteLength"
            long r4 = r6.g     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r4)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "mState"
            int r3 = r6.l     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "version"
            java.lang.String r3 = r6.e     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "localPath"
            java.lang.String r3 = r6.h     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = r6.n     // Catch:{ Throwable -> 0x00b2 }
            if (r2 == 0) goto L_0x0054
            java.lang.String r2 = "vMapFileNames"
            java.lang.String r3 = r6.n     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
        L_0x0054:
            java.lang.String r2 = "isSheng"
            int r3 = r6.i     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "mCompleteCode"
            int r3 = r6.j     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "mCityCode"
            java.lang.String r3 = r6.k     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "pinyin"
            java.lang.String r3 = r6.m     // Catch:{ Throwable -> 0x00b2 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = "file"
            r0.put(r2, r1)     // Catch:{ Throwable -> 0x00b2 }
            java.io.File r3 = new java.io.File     // Catch:{ Throwable -> 0x00b2 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00b2 }
            r1.<init>()     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = r6.d     // Catch:{ Throwable -> 0x00b2 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r2 = ".dt"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x00b2 }
            java.lang.String r1 = r1.toString()     // Catch:{ Throwable -> 0x00b2 }
            r3.<init>(r1)     // Catch:{ Throwable -> 0x00b2 }
            r3.delete()     // Catch:{ Throwable -> 0x00b2 }
            r2 = 0
            java.io.OutputStreamWriter r1 = new java.io.OutputStreamWriter     // Catch:{ IOException -> 0x00be, all -> 0x00d5 }
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x00be, all -> 0x00d5 }
            r5 = 1
            r4.<init>(r3, r5)     // Catch:{ IOException -> 0x00be, all -> 0x00d5 }
            java.lang.String r3 = "utf-8"
            r1.<init>(r4, r3)     // Catch:{ IOException -> 0x00be, all -> 0x00d5 }
            java.lang.String r0 = r0.toString()     // Catch:{ IOException -> 0x00e4 }
            r1.write(r0)     // Catch:{ IOException -> 0x00e4 }
            if (r1 == 0) goto L_0x00ac
            r1.close()     // Catch:{ IOException -> 0x00ad }
        L_0x00ac:
            return
        L_0x00ad:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x00b2 }
            goto L_0x00ac
        L_0x00b2:
            r0 = move-exception
            java.lang.String r1 = "UpdateItem"
            java.lang.String r2 = "saveJSONObjectToFile parseJson"
            com.amap.api.mapcore.util.gf.b(r0, r1, r2)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x00ac
        L_0x00be:
            r0 = move-exception
            r1 = r2
        L_0x00c0:
            java.lang.String r2 = "UpdateItem"
            java.lang.String r3 = "saveJSONObjectToFile"
            com.amap.api.mapcore.util.gf.b(r0, r2, r3)     // Catch:{ all -> 0x00e2 }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00e2 }
            if (r1 == 0) goto L_0x00ac
            r1.close()     // Catch:{ IOException -> 0x00d0 }
            goto L_0x00ac
        L_0x00d0:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x00b2 }
            goto L_0x00ac
        L_0x00d5:
            r0 = move-exception
            r1 = r2
        L_0x00d7:
            if (r1 == 0) goto L_0x00dc
            r1.close()     // Catch:{ IOException -> 0x00dd }
        L_0x00dc:
            throw r0     // Catch:{ Throwable -> 0x00b2 }
        L_0x00dd:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ Throwable -> 0x00b2 }
            goto L_0x00dc
        L_0x00e2:
            r0 = move-exception
            goto L_0x00d7
        L_0x00e4:
            r0 = move-exception
            goto L_0x00c0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ax.c():void");
    }

    public static String a(JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject == null) {
            return "";
        }
        String str2 = "";
        if (!jSONObject.has(str) || jSONObject.getString(str).equals("[]")) {
            return str2;
        }
        return jSONObject.optString(str).trim();
    }
}
