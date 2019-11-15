package com.amap.api.col.sl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: SoCrashLogProcessor */
public final class co {
    public static byte[] a = "FDF1F436161AEF5B".getBytes();
    public static byte[] b = "0102030405060708".getBytes();
    public static String c;
    private static HashSet<String> d = new HashSet<>();
    private static final String f;
    private File[] e;

    /* compiled from: SoCrashLogProcessor */
    private static class a {
        private String a;
        private String b;
        private String c;
        private String d;
        private String e;

        private a(String str, String str2, String str3, String str4, String str5) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.c;
        }

        public final String d() {
            return this.d;
        }

        public final String e() {
            return this.e;
        }

        public a() {
        }

        private static a b(String str) {
            if (TextUtils.isEmpty(str)) {
                return new a();
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new a(jSONObject.optString("mk", ""), jSONObject.optString("ak", ""), jSONObject.optString("bk", ""), jSONObject.optString("ik", ""), jSONObject.optString("nk", ""));
            } catch (Throwable th) {
                return new a();
            }
        }

        public static List<a> a(String str) {
            if (TextUtils.isEmpty(str)) {
                return new ArrayList();
            }
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(b(jSONArray.getString(i)));
                }
                return arrayList;
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return arrayList;
            }
        }
    }

    /* compiled from: SoCrashLogProcessor */
    private static class b {
        /* access modifiers changed from: private */
        public int a;
        /* access modifiers changed from: private */
        public String b;
    }

    static {
        String str = "SOCRASH";
        c = str;
        f = str;
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(android.content.Context r9) {
        /*
            r8 = this;
            r1 = 0
            r0 = 0
            java.lang.String r2 = com.amap.api.col.sl.ck.a(r9)     // Catch:{ Throwable -> 0x0079 }
            java.io.File r3 = new java.io.File     // Catch:{ Throwable -> 0x0079 }
            r3.<init>(r2)     // Catch:{ Throwable -> 0x0079 }
            boolean r2 = r3.isDirectory()     // Catch:{ Throwable -> 0x0079 }
            if (r2 != 0) goto L_0x0015
            r2 = r1
        L_0x0012:
            if (r2 != 0) goto L_0x001a
        L_0x0014:
            return
        L_0x0015:
            java.io.File[] r2 = r3.listFiles()     // Catch:{ Throwable -> 0x0079 }
            goto L_0x0012
        L_0x001a:
            r8.e = r2     // Catch:{ Throwable -> 0x0079 }
            com.amap.api.col.sl.bz$a r3 = new com.amap.api.col.sl.bz$a     // Catch:{ Throwable -> 0x0094 }
            java.lang.String r4 = f     // Catch:{ Throwable -> 0x0094 }
            java.lang.String r5 = "1.0"
            java.lang.String r6 = ""
            r3.<init>(r4, r5, r6)     // Catch:{ Throwable -> 0x0094 }
            r4 = 0
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ Throwable -> 0x0094 }
            com.amap.api.col.sl.bz$a r3 = r3.a(r4)     // Catch:{ Throwable -> 0x0094 }
            com.amap.api.col.sl.bz r1 = r3.a()     // Catch:{ Throwable -> 0x0094 }
        L_0x0032:
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ Throwable -> 0x0079 }
            r3.<init>()     // Catch:{ Throwable -> 0x0079 }
        L_0x0037:
            int r4 = r2.length     // Catch:{ Throwable -> 0x0079 }
            if (r0 >= r4) goto L_0x0014
            r4 = 10
            if (r0 >= r4) goto L_0x0014
            r4 = r2[r0]     // Catch:{ Throwable -> 0x0079 }
            if (r4 == 0) goto L_0x0060
            boolean r5 = r4.exists()     // Catch:{ Throwable -> 0x0079 }
            if (r5 == 0) goto L_0x0060
            boolean r5 = r4.isFile()     // Catch:{ Throwable -> 0x0079 }
            if (r5 == 0) goto L_0x0060
            byte[] r5 = a(r4)     // Catch:{ Throwable -> 0x0079 }
            if (r5 == 0) goto L_0x005d
            int r6 = r5.length     // Catch:{ Throwable -> 0x0079 }
            if (r6 == 0) goto L_0x005d
            int r6 = r5.length     // Catch:{ Throwable -> 0x0079 }
            r7 = 100000(0x186a0, float:1.4013E-40)
            if (r6 <= r7) goto L_0x0063
        L_0x005d:
            r4.delete()     // Catch:{ Throwable -> 0x0079 }
        L_0x0060:
            int r0 = r0 + 1
            goto L_0x0037
        L_0x0063:
            java.lang.String r6 = com.amap.api.col.sl.bw.a(r5)     // Catch:{ Throwable -> 0x0079 }
            boolean r7 = a(r3, r6)     // Catch:{ Throwable -> 0x0079 }
            if (r7 != 0) goto L_0x0075
            java.util.HashSet<java.lang.String> r7 = d     // Catch:{ Throwable -> 0x0079 }
            boolean r7 = r7.contains(r6)     // Catch:{ Throwable -> 0x0079 }
            if (r7 == 0) goto L_0x007b
        L_0x0075:
            r4.delete()     // Catch:{ Throwable -> 0x0079 }
            goto L_0x0060
        L_0x0079:
            r0 = move-exception
            goto L_0x0014
        L_0x007b:
            a(r9, r5)     // Catch:{ Throwable -> 0x0079 }
            java.util.HashSet<java.lang.String> r7 = d     // Catch:{ Throwable -> 0x0079 }
            r7.add(r6)     // Catch:{ Throwable -> 0x0079 }
            java.lang.String r5 = com.amap.api.col.sl.bv.b(r5)     // Catch:{ Throwable -> 0x0079 }
            java.lang.String r6 = f     // Catch:{ Throwable -> 0x0079 }
            com.amap.api.col.sl.cn.a(r1, r9, r6, r5)     // Catch:{ Throwable -> 0x0079 }
            if (r4 == 0) goto L_0x0060
            r4.delete()     // Catch:{ Exception -> 0x0092 }
            goto L_0x0060
        L_0x0092:
            r4 = move-exception
            goto L_0x0060
        L_0x0094:
            r3 = move-exception
            goto L_0x0032
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.co.a(android.content.Context):void");
    }

    private static void a(Context context, byte[] bArr) {
        int i = 0;
        if (context != null) {
            try {
                String str = new String(bArr, "ISO-8859-1");
                if (str.indexOf("{\"") > 0 && str.indexOf("\"}") > 0) {
                    JSONObject jSONObject = new JSONObject(str.substring(str.indexOf("{\""), str.lastIndexOf("\"}") + 2));
                    String optString = jSONObject.optString("ik");
                    String optString2 = jSONObject.optString("jk");
                    if (!TextUtils.isEmpty(optString2)) {
                        List a2 = a.a(optString);
                        if (a2 != null) {
                            while (true) {
                                int i2 = i;
                                if (i2 < a2.size()) {
                                    a aVar = (a) a2.get(i2);
                                    if (optString2.contains(aVar.e())) {
                                        a(context, aVar);
                                    }
                                    i = i2 + 1;
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    private static void a(Context context, a aVar) throws JSONException {
        int i = 0;
        if (!TextUtils.isEmpty(aVar.b()) && !TextUtils.isEmpty(aVar.c()) && !TextUtils.isEmpty(aVar.d())) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(bw.b("SO_DYNAMIC_FILE_KEY"), 0);
            JSONArray jSONArray = new JSONArray(ca.a(bn.b(ca.d(sharedPreferences.getString("SO_ERROR_KEY", "")))));
            while (i < jSONArray.length()) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (!jSONObject.opt("mk").equals(aVar.a()) || !jSONObject.opt("ak").equals(aVar.b()) || !jSONObject.opt("bk").equals(aVar.c()) || !jSONObject.opt("ik").equals(aVar.d()) || !jSONObject.opt("nk").equals(aVar.e())) {
                    i++;
                } else {
                    return;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("mk", aVar.a());
            jSONObject2.putOpt("ak", aVar.b());
            jSONObject2.putOpt("bk", aVar.c());
            jSONObject2.putOpt("ik", aVar.d());
            jSONObject2.putOpt("nk", aVar.e());
            jSONArray.put(jSONObject2);
            Editor edit = sharedPreferences.edit();
            edit.putString("SO_ERROR_KEY", ca.g(bn.a(ca.a(jSONArray.toString()))));
            edit.commit();
        }
    }

    private static boolean a(List<b> list, String str) {
        if (list == null) {
            return false;
        }
        for (b bVar : list) {
            if (bVar.b.equals(str)) {
                bVar.a = bVar.a + 1;
                return true;
            }
        }
        return false;
    }

    private static byte[] a(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            fileInputStream.close();
            byte[] a2 = bv.a("a1f5886b7153004c5c99559f5261676f".getBytes(), bArr, "nFy1THrhajaZzz8U".getBytes());
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[(a2.length - 16)];
            System.arraycopy(a2, 0, bArr2, 0, 16);
            System.arraycopy(a2, 16, bArr3, 0, a2.length - 16);
            if (!a(bw.a(bArr3, "MD5"), bArr2)) {
                return new byte[0];
            }
            return bArr3;
        } catch (Throwable th) {
            return null;
        }
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length == 0 || bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }
}
