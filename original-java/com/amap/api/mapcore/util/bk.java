package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Utility */
public class bk {
    public static void a(String str) {
    }

    public static long a() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return 0;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long) statFs.getFreeBlocks()) * ((long) statFs.getBlockSize());
    }

    public static List<OfflineMapProvince> a(String str, Context context) throws JSONException {
        if (str == null || "".equals(str)) {
            return new ArrayList();
        }
        return a(new JSONObject(str), context);
    }

    public static List<OfflineMapProvince> a(JSONObject jSONObject, Context context) throws JSONException {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        ArrayList arrayList = new ArrayList();
        if (!jSONObject.has("result")) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("result", new JSONObject().put("offlinemap_with_province_vfour", jSONObject));
                c(jSONObject2.toString(), context);
                optJSONObject = jSONObject2.optJSONObject("result");
            } catch (JSONException e) {
                JSONException jSONException = e;
                optJSONObject = jSONObject.optJSONObject("result");
                gf.b((Throwable) jSONException, "Utility", "parseJson");
                ThrowableExtension.printStackTrace(jSONException);
            }
        } else {
            optJSONObject = jSONObject.optJSONObject("result");
        }
        if (optJSONObject != null) {
            JSONObject optJSONObject3 = optJSONObject.optJSONObject("offlinemap_with_province_vfour");
            if (optJSONObject3 == null) {
                return arrayList;
            }
            optJSONObject2 = optJSONObject3.optJSONObject("offlinemapinfo_with_province");
        } else {
            optJSONObject2 = jSONObject.optJSONObject("offlinemapinfo_with_province");
        }
        if (optJSONObject2 == null) {
            return arrayList;
        }
        if (optJSONObject2.has("version")) {
            an.d = a(optJSONObject2, "version");
        }
        JSONArray optJSONArray = optJSONObject2.optJSONArray("provinces");
        if (optJSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject4 = optJSONArray.optJSONObject(i);
            if (optJSONObject4 != null) {
                arrayList.add(a(optJSONObject4));
            }
        }
        JSONArray optJSONArray2 = optJSONObject2.optJSONArray("others");
        JSONObject jSONObject3 = null;
        if (optJSONArray2 != null && optJSONArray2.length() > 0) {
            jSONObject3 = optJSONArray2.getJSONObject(0);
        }
        if (jSONObject3 == null) {
            return arrayList;
        }
        arrayList.add(a(jSONObject3));
        return arrayList;
    }

    public static OfflineMapProvince a(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        OfflineMapProvince offlineMapProvince = new OfflineMapProvince();
        offlineMapProvince.setUrl(a(jSONObject, "url"));
        offlineMapProvince.setProvinceName(a(jSONObject, HttpPostBodyUtil.NAME));
        offlineMapProvince.setJianpin(a(jSONObject, "jianpin"));
        offlineMapProvince.setPinyin(a(jSONObject, "pinyin"));
        offlineMapProvince.setProvinceCode(c(a(jSONObject, "adcode")));
        offlineMapProvince.setVersion(a(jSONObject, "version"));
        offlineMapProvince.setSize(Long.parseLong(a(jSONObject, "size")));
        offlineMapProvince.setCityList(b(jSONObject));
        return offlineMapProvince;
    }

    private static String c(String str) {
        if (str.equals("000001")) {
            return "100000";
        }
        return str;
    }

    public static ArrayList<OfflineMapCity> b(JSONObject jSONObject) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray("cities");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray == null) {
            return arrayList;
        }
        if (optJSONArray.length() == 0) {
            arrayList.add(c(jSONObject));
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                arrayList.add(c(optJSONObject));
            }
        }
        return arrayList;
    }

    public static OfflineMapCity c(JSONObject jSONObject) throws JSONException {
        OfflineMapCity offlineMapCity = new OfflineMapCity();
        offlineMapCity.setAdcode(c(a(jSONObject, "adcode")));
        offlineMapCity.setUrl(a(jSONObject, "url"));
        offlineMapCity.setCity(a(jSONObject, HttpPostBodyUtil.NAME));
        offlineMapCity.setCode(a(jSONObject, "citycode"));
        offlineMapCity.setPinyin(a(jSONObject, "pinyin"));
        offlineMapCity.setJianpin(a(jSONObject, "jianpin"));
        offlineMapCity.setVersion(a(jSONObject, "version"));
        offlineMapCity.setSize(Long.parseLong(a(jSONObject, "size")));
        return offlineMapCity;
    }

    public static long a(File file) {
        long length;
        if (!file.isDirectory()) {
            return file.length();
        }
        long j = 0;
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return 0;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                length = a(file2);
            } else {
                length = file2.length();
            }
            j += length;
        }
        return j;
    }

    public static boolean b(File file) throws IOException, Exception {
        if (file == null || !file.exists()) {
            return false;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isFile()) {
                    if (!listFiles[i].delete()) {
                        return false;
                    }
                } else if (!b(listFiles[i])) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static String a(Context context, String str) {
        try {
            return ee.a(dz.a(context).open(str));
        } catch (Throwable th) {
            gf.b(th, "MapDownloadManager", "readOfflineAsset");
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r3v2, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r3v3 */
    /* JADX WARNING: type inference failed for: r3v4, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v4, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r3v5 */
    /* JADX WARNING: type inference failed for: r0v5, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r3v6, types: [java.io.FileInputStream] */
    /* JADX WARNING: type inference failed for: r2v6, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r3v7, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r2v10, types: [java.io.BufferedReader] */
    /* JADX WARNING: type inference failed for: r0v10, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r2v11 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r3v10 */
    /* JADX WARNING: type inference failed for: r2v12 */
    /* JADX WARNING: type inference failed for: r2v13 */
    /* JADX WARNING: type inference failed for: r3v11 */
    /* JADX WARNING: type inference failed for: r3v12 */
    /* JADX WARNING: type inference failed for: r2v14 */
    /* JADX WARNING: type inference failed for: r2v15 */
    /* JADX WARNING: type inference failed for: r3v13 */
    /* JADX WARNING: type inference failed for: r3v14 */
    /* JADX WARNING: type inference failed for: r3v15 */
    /* JADX WARNING: type inference failed for: r3v16 */
    /* JADX WARNING: type inference failed for: r3v17 */
    /* JADX WARNING: type inference failed for: r2v16 */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r3v1
  assigns: []
  uses: []
  mth insns count: 89
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x002e A[SYNTHETIC, Splitter:B:14:0x002e] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0033 A[SYNTHETIC, Splitter:B:17:0x0033] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0069 A[SYNTHETIC, Splitter:B:42:0x0069] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x006e A[SYNTHETIC, Splitter:B:45:0x006e] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0082 A[SYNTHETIC, Splitter:B:54:0x0082] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0087 A[SYNTHETIC, Splitter:B:57:0x0087] */
    /* JADX WARNING: Unknown variable types count: 11 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String c(java.io.File r6) {
        /*
            r0 = 0
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ FileNotFoundException -> 0x00a0, IOException -> 0x005a, all -> 0x007c }
            r3.<init>(r6)     // Catch:{ FileNotFoundException -> 0x00a0, IOException -> 0x005a, all -> 0x007c }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ FileNotFoundException -> 0x00a5, IOException -> 0x009b, all -> 0x0095 }
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch:{ FileNotFoundException -> 0x00a5, IOException -> 0x009b, all -> 0x0095 }
            java.lang.String r5 = "utf-8"
            r4.<init>(r3, r5)     // Catch:{ FileNotFoundException -> 0x00a5, IOException -> 0x009b, all -> 0x0095 }
            r2.<init>(r4)     // Catch:{ FileNotFoundException -> 0x00a5, IOException -> 0x009b, all -> 0x0095 }
        L_0x0017:
            java.lang.String r4 = r2.readLine()     // Catch:{ FileNotFoundException -> 0x0021, IOException -> 0x009e }
            if (r4 == 0) goto L_0x0037
            r1.append(r4)     // Catch:{ FileNotFoundException -> 0x0021, IOException -> 0x009e }
            goto L_0x0017
        L_0x0021:
            r1 = move-exception
        L_0x0022:
            java.lang.String r4 = "MapDownloadManager"
            java.lang.String r5 = "readOfflineSD filenotfound"
            com.amap.api.mapcore.util.gf.b(r1, r4, r5)     // Catch:{ all -> 0x0099 }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0099 }
            if (r2 == 0) goto L_0x0031
            r2.close()     // Catch:{ IOException -> 0x0050 }
        L_0x0031:
            if (r3 == 0) goto L_0x0036
            r3.close()     // Catch:{ IOException -> 0x0055 }
        L_0x0036:
            return r0
        L_0x0037:
            java.lang.String r0 = r1.toString()     // Catch:{ FileNotFoundException -> 0x0021, IOException -> 0x009e }
            if (r2 == 0) goto L_0x0040
            r2.close()     // Catch:{ IOException -> 0x004b }
        L_0x0040:
            if (r3 == 0) goto L_0x0036
            r3.close()     // Catch:{ IOException -> 0x0046 }
            goto L_0x0036
        L_0x0046:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0036
        L_0x004b:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0040
        L_0x0050:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0031
        L_0x0055:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0036
        L_0x005a:
            r1 = move-exception
            r2 = r0
            r3 = r0
        L_0x005d:
            java.lang.String r4 = "MapDownloadManager"
            java.lang.String r5 = "readOfflineSD io"
            com.amap.api.mapcore.util.gf.b(r1, r4, r5)     // Catch:{ all -> 0x0099 }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0099 }
            if (r2 == 0) goto L_0x006c
            r2.close()     // Catch:{ IOException -> 0x0077 }
        L_0x006c:
            if (r3 == 0) goto L_0x0036
            r3.close()     // Catch:{ IOException -> 0x0072 }
            goto L_0x0036
        L_0x0072:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0036
        L_0x0077:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x006c
        L_0x007c:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        L_0x0080:
            if (r2 == 0) goto L_0x0085
            r2.close()     // Catch:{ IOException -> 0x008b }
        L_0x0085:
            if (r3 == 0) goto L_0x008a
            r3.close()     // Catch:{ IOException -> 0x0090 }
        L_0x008a:
            throw r0
        L_0x008b:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0085
        L_0x0090:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x008a
        L_0x0095:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x0080
        L_0x0099:
            r0 = move-exception
            goto L_0x0080
        L_0x009b:
            r1 = move-exception
            r2 = r0
            goto L_0x005d
        L_0x009e:
            r1 = move-exception
            goto L_0x005d
        L_0x00a0:
            r1 = move-exception
            r2 = r0
            r3 = r0
            goto L_0x0022
        L_0x00a5:
            r1 = move-exception
            r2 = r0
            goto L_0x0022
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.bk.c(java.io.File):java.lang.String");
    }

    public static void b(String str, Context context) throws IOException, Exception {
        File[] listFiles = new File(ee.b(context)).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.exists() && file.getName().contains(str)) {
                    b(file);
                }
            }
            b(ee.b(context));
        }
    }

    public static void b(String str) {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.exists() && file2.isDirectory()) {
                        String[] list = file2.list();
                        if (list == null) {
                            file2.delete();
                        } else if (list.length == 0) {
                            file2.delete();
                        }
                    }
                }
            }
        }
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

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0071 A[SYNTHETIC, Splitter:B:27:0x0071] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0088 A[SYNTHETIC, Splitter:B:37:0x0088] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0096 A[SYNTHETIC, Splitter:B:44:0x0096] */
    /* JADX WARNING: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void c(java.lang.String r6, android.content.Context r7) {
        /*
            java.lang.String r0 = com.amap.api.mapcore.util.ee.b(r7)
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x000d
        L_0x000c:
            return
        L_0x000d:
            java.io.File r0 = new java.io.File
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = com.amap.api.mapcore.util.ee.b(r7)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "offlinemapv4.png"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            boolean r1 = r0.exists()
            if (r1 != 0) goto L_0x0032
            r0.createNewFile()     // Catch:{ IOException -> 0x0057 }
        L_0x0032:
            long r2 = a()
            r4 = 1048576(0x100000, double:5.180654E-318)
            int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r1 <= 0) goto L_0x000c
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ FileNotFoundException -> 0x0063, IOException -> 0x007a, all -> 0x0092 }
            r1.<init>(r0)     // Catch:{ FileNotFoundException -> 0x0063, IOException -> 0x007a, all -> 0x0092 }
            java.lang.String r0 = "utf-8"
            byte[] r0 = r6.getBytes(r0)     // Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a1 }
            r1.write(r0)     // Catch:{ FileNotFoundException -> 0x00a3, IOException -> 0x00a1 }
            if (r1 == 0) goto L_0x000c
            r1.close()     // Catch:{ IOException -> 0x0052 }
            goto L_0x000c
        L_0x0052:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x000c
        L_0x0057:
            r1 = move-exception
            java.lang.String r2 = "OfflineUpdateCityHandler"
            java.lang.String r3 = "writeSD dirCreate"
            com.amap.api.mapcore.util.gf.b(r1, r2, r3)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0032
        L_0x0063:
            r0 = move-exception
            r1 = r2
        L_0x0065:
            java.lang.String r2 = "OfflineUpdateCityHandler"
            java.lang.String r3 = "writeSD filenotfound"
            com.amap.api.mapcore.util.gf.b(r0, r2, r3)     // Catch:{ all -> 0x009f }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x009f }
            if (r1 == 0) goto L_0x000c
            r1.close()     // Catch:{ IOException -> 0x0075 }
            goto L_0x000c
        L_0x0075:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x000c
        L_0x007a:
            r0 = move-exception
            r1 = r2
        L_0x007c:
            java.lang.String r2 = "OfflineUpdateCityHandler"
            java.lang.String r3 = "writeSD io"
            com.amap.api.mapcore.util.gf.b(r0, r2, r3)     // Catch:{ all -> 0x009f }
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x009f }
            if (r1 == 0) goto L_0x000c
            r1.close()     // Catch:{ IOException -> 0x008c }
            goto L_0x000c
        L_0x008c:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x000c
        L_0x0092:
            r0 = move-exception
            r1 = r2
        L_0x0094:
            if (r1 == 0) goto L_0x0099
            r1.close()     // Catch:{ IOException -> 0x009a }
        L_0x0099:
            throw r0
        L_0x009a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0099
        L_0x009f:
            r0 = move-exception
            goto L_0x0094
        L_0x00a1:
            r0 = move-exception
            goto L_0x007c
        L_0x00a3:
            r0 = move-exception
            goto L_0x0065
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.bk.c(java.lang.String, android.content.Context):void");
    }
}
