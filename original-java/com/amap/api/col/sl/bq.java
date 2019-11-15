package com.amap.api.col.sl;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AuthConfigManager */
public final class bq {
    public static int a = -1;
    public static String b = "";

    /* compiled from: AuthConfigManager */
    public static class a {
        @Deprecated
        public c A;
        public c B;
        public b C;
        public b D;
        public b E;
        public b F;
        public f G;
        public String a;
        public int b = -1;
        @Deprecated
        public JSONObject c;
        @Deprecated
        public JSONObject d;
        @Deprecated
        public JSONObject e;
        @Deprecated
        public JSONObject f;
        @Deprecated
        public JSONObject g;
        @Deprecated
        public JSONObject h;
        @Deprecated
        public JSONObject i;
        @Deprecated
        public JSONObject j;
        @Deprecated
        public JSONObject k;
        @Deprecated
        public JSONObject l;
        @Deprecated
        public JSONObject m;
        @Deprecated
        public JSONObject n;
        @Deprecated
        public JSONObject o;
        @Deprecated
        public JSONObject p;
        @Deprecated
        public JSONObject q;
        @Deprecated
        public JSONObject r;
        @Deprecated
        public JSONObject s;
        @Deprecated
        public JSONObject t;
        @Deprecated
        public JSONObject u;
        @Deprecated
        public JSONObject v;
        public JSONObject w;
        public C0003a x;
        public d y;
        public e z;

        /* renamed from: com.amap.api.col.sl.bq$a$a reason: collision with other inner class name */
        /* compiled from: AuthConfigManager */
        public static class C0003a {
            public boolean a;
            public boolean b;
            public JSONObject c;
        }

        /* compiled from: AuthConfigManager */
        public static class b {
            public boolean a;
            public String b;
            public String c;
            public String d;
            public boolean e;
        }

        /* compiled from: AuthConfigManager */
        public static class c {
            public String a;
            public String b;
        }

        /* compiled from: AuthConfigManager */
        public static class d {
            public String a;
            public String b;
            public String c;
        }

        /* compiled from: AuthConfigManager */
        public static class e {
            public boolean a;
        }

        /* compiled from: AuthConfigManager */
        public static class f {
            public boolean a;
            public boolean b;
            public boolean c;
            public String d;
            public String e;
            public String f;
        }
    }

    /* compiled from: AuthConfigManager */
    static class b extends Cdo {
        private String c;
        private Map<String, String> d = null;
        private boolean e;

        b(Context context, bz bzVar, String str) {
            super(context, bzVar);
            this.c = str;
            this.e = VERSION.SDK_INT != 19;
        }

        public final boolean a() {
            return this.e;
        }

        public final Map<String, String> c() {
            return null;
        }

        public final String f() {
            return this.e ? "https://restapi.amap.com/v3/iasdkauth" : "http://restapi.amap.com/v3/iasdkauth";
        }

        public final byte[] d() {
            return null;
        }

        public final byte[] g() {
            String t = bu.t(this.a);
            if (TextUtils.isEmpty(t)) {
                t = bu.c();
            }
            if (!TextUtils.isEmpty(t)) {
                t = bw.b(new StringBuilder(t).reverse().toString());
            }
            HashMap hashMap = new HashMap();
            hashMap.put("authkey", this.c);
            hashMap.put("plattype", "android");
            hashMap.put("product", this.b.a());
            hashMap.put("version", this.b.b());
            hashMap.put("output", "json");
            hashMap.put("androidversion", VERSION.SDK_INT);
            hashMap.put("deviceId", t);
            hashMap.put("manufacture", Build.MANUFACTURER);
            if (this.d != null && !this.d.isEmpty()) {
                hashMap.putAll(this.d);
            }
            hashMap.put("abitype", ca.a(this.a));
            hashMap.put("ext", this.b.d());
            return ca.a(ca.a((Map<String, String>) hashMap));
        }

        /* access modifiers changed from: protected */
        public final String h() {
            return "3.0";
        }
    }

    public static void a(Context context, String str) {
        bp.a(context, str);
    }

    public static boolean a(String str, boolean z) {
        try {
            if (TextUtils.isEmpty(str)) {
                return z;
            }
            String[] split = URLDecoder.decode(str).split("/");
            return split[split.length + -1].charAt(4) % 2 == 1;
        } catch (Throwable th) {
            return z;
        }
    }

    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r4v0 */
    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r3v2 */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r4v1 */
    /* JADX WARNING: type inference failed for: r4v2 */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r3v4 */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r4v3 */
    /* JADX WARNING: type inference failed for: r4v4 */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r1v7 */
    /* JADX WARNING: type inference failed for: r3v6 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r4v5 */
    /* JADX WARNING: type inference failed for: r4v6, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r3v7, types: [com.amap.api.col.sl.du] */
    /* JADX WARNING: type inference failed for: r1v9, types: [java.lang.CharSequence] */
    /* JADX WARNING: type inference failed for: r1v10, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r1v88, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r2v28, types: [com.amap.api.col.sl.du] */
    /* JADX WARNING: type inference failed for: r4v33 */
    /* JADX WARNING: type inference failed for: r4v34, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r3v24, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r1v102 */
    /* JADX WARNING: type inference failed for: r3v25 */
    /* JADX WARNING: type inference failed for: r4v35 */
    /* JADX WARNING: type inference failed for: r4v36 */
    /* JADX WARNING: type inference failed for: r4v37 */
    /* JADX WARNING: type inference failed for: r4v38, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r4v39 */
    /* JADX WARNING: type inference failed for: r4v40 */
    /* JADX WARNING: type inference failed for: r4v41 */
    /* JADX WARNING: type inference failed for: r1v106 */
    /* JADX WARNING: type inference failed for: r2v29 */
    /* JADX WARNING: type inference failed for: r2v30 */
    /* JADX WARNING: type inference failed for: r2v31 */
    /* JADX WARNING: type inference failed for: r2v32 */
    /* JADX WARNING: type inference failed for: r2v33 */
    /* JADX WARNING: type inference failed for: r2v34 */
    /* JADX WARNING: type inference failed for: r4v42 */
    /* JADX WARNING: type inference failed for: r4v43 */
    /* JADX WARNING: type inference failed for: r4v44 */
    /* JADX WARNING: type inference failed for: r4v45 */
    /* JADX WARNING: type inference failed for: r4v46 */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0095, code lost:
        r2 = r3;
        r4 = r3;
     */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r4v0
  assigns: []
  uses: []
  mth insns count: 308
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
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0094 A[ExcHandler: IllegalBlockSizeException (e javax.crypto.IllegalBlockSizeException), Splitter:B:1:0x000f] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a7  */
    /* JADX WARNING: Unknown variable types count: 15 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.amap.api.col.sl.bq.a a(android.content.Context r11, com.amap.api.col.sl.bz r12, java.lang.String r13) {
        /*
            r10 = 1
            r3 = 0
            r5 = 0
            com.amap.api.col.sl.bq$a r0 = new com.amap.api.col.sl.bq$a
            r0.<init>()
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            r0.w = r1
            com.amap.api.col.sl.dn r1 = new com.amap.api.col.sl.dn     // Catch:{ bo -> 0x007a, IllegalBlockSizeException -> 0x0094, Throwable -> 0x009a }
            r1.<init>()     // Catch:{ bo -> 0x007a, IllegalBlockSizeException -> 0x0094, Throwable -> 0x009a }
            com.amap.api.col.sl.bq$b r1 = new com.amap.api.col.sl.bq$b     // Catch:{ bo -> 0x0078, Throwable -> 0x008b, IllegalBlockSizeException -> 0x0094 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ bo -> 0x0078, Throwable -> 0x008b, IllegalBlockSizeException -> 0x0094 }
            r2.<init>()     // Catch:{ bo -> 0x0078, Throwable -> 0x008b, IllegalBlockSizeException -> 0x0094 }
            java.lang.StringBuilder r2 = r2.append(r13)     // Catch:{ bo -> 0x0078, Throwable -> 0x008b, IllegalBlockSizeException -> 0x0094 }
            java.lang.String r4 = ";14N"
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ bo -> 0x0078, Throwable -> 0x008b, IllegalBlockSizeException -> 0x0094 }
            java.lang.String r2 = r2.toString()     // Catch:{ bo -> 0x0078, Throwable -> 0x008b, IllegalBlockSizeException -> 0x0094 }
            r1.<init>(r11, r12, r2)     // Catch:{ bo -> 0x0078, Throwable -> 0x008b, IllegalBlockSizeException -> 0x0094 }
            boolean r2 = r1.a()     // Catch:{ bo -> 0x0078, Throwable -> 0x008b, IllegalBlockSizeException -> 0x0094 }
            com.amap.api.col.sl.du r2 = com.amap.api.col.sl.dn.a(r1, r2)     // Catch:{ bo -> 0x0078, Throwable -> 0x008b, IllegalBlockSizeException -> 0x0094 }
            if (r2 == 0) goto L_0x0319
            byte[] r4 = r2.a     // Catch:{ bo -> 0x0312, IllegalBlockSizeException -> 0x030b, Throwable -> 0x0304 }
        L_0x0038:
            r1 = 16
            byte[] r1 = new byte[r1]     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            int r6 = r4.length     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            int r6 = r6 + -16
            byte[] r6 = new byte[r6]     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            r7 = 0
            r8 = 0
            r9 = 16
            java.lang.System.arraycopy(r4, r7, r1, r8, r9)     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            r7 = 16
            r8 = 0
            int r9 = r4.length     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            int r9 = r9 + -16
            java.lang.System.arraycopy(r4, r7, r6, r8, r9)     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            javax.crypto.spec.SecretKeySpec r7 = new javax.crypto.spec.SecretKeySpec     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            java.lang.String r8 = "AES"
            r7.<init>(r1, r8)     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            java.lang.String r1 = "AES/CBC/PKCS5Padding"
            javax.crypto.Cipher r1 = javax.crypto.Cipher.getInstance(r1)     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            javax.crypto.spec.IvParameterSpec r8 = new javax.crypto.spec.IvParameterSpec     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            byte[] r9 = com.amap.api.col.sl.ca.b()     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            r8.<init>(r9)     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            r9 = 2
            r1.init(r9, r7, r8)     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            byte[] r1 = r1.doFinal(r6)     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            java.lang.String r3 = com.amap.api.col.sl.ca.a(r1)     // Catch:{ bo -> 0x0316, IllegalBlockSizeException -> 0x030f, Throwable -> 0x0308 }
            r1 = r3
            r3 = r2
        L_0x0075:
            if (r4 != 0) goto L_0x00a7
        L_0x0077:
            return r0
        L_0x0078:
            r1 = move-exception
            throw r1     // Catch:{ bo -> 0x007a, IllegalBlockSizeException -> 0x0094, Throwable -> 0x009a }
        L_0x007a:
            r1 = move-exception
            r2 = r3
            r4 = r3
        L_0x007d:
            java.lang.String r6 = r1.a()
            r0.a = r6
            java.lang.String r6 = "/v3/iasdkauth"
            com.amap.api.col.sl.cm.a(r12, r6, r1)
            r1 = r3
            r3 = r2
            goto L_0x0075
        L_0x008b:
            r1 = move-exception
            com.amap.api.col.sl.bo r1 = new com.amap.api.col.sl.bo     // Catch:{ bo -> 0x007a, IllegalBlockSizeException -> 0x0094, Throwable -> 0x009a }
            java.lang.String r2 = "未知的错误"
            r1.<init>(r2)     // Catch:{ bo -> 0x007a, IllegalBlockSizeException -> 0x0094, Throwable -> 0x009a }
            throw r1     // Catch:{ bo -> 0x007a, IllegalBlockSizeException -> 0x0094, Throwable -> 0x009a }
        L_0x0094:
            r1 = move-exception
            r2 = r3
            r4 = r3
        L_0x0097:
            r1 = r3
            r3 = r2
            goto L_0x0075
        L_0x009a:
            r1 = move-exception
            r2 = r3
            r4 = r3
        L_0x009d:
            java.lang.String r6 = "at"
            java.lang.String r7 = "lc"
            com.amap.api.col.sl.cm.c(r1, r6, r7)
            r1 = r3
            r3 = r2
            goto L_0x0075
        L_0x00a7:
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 == 0) goto L_0x00b1
            java.lang.String r1 = com.amap.api.col.sl.ca.a(r4)
        L_0x00b1:
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch:{ Throwable -> 0x015a }
            r4.<init>(r1)     // Catch:{ Throwable -> 0x015a }
            java.lang.String r1 = "status"
            boolean r1 = r4.has(r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x0077
            java.lang.String r1 = "status"
            int r1 = r4.getInt(r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 != r10) goto L_0x0117
            r1 = 1
            a = r1     // Catch:{ Throwable -> 0x015a }
        L_0x00c9:
            java.lang.String r1 = "ver"
            boolean r1 = r4.has(r1)     // Catch:{ Throwable -> 0x0164 }
            if (r1 == 0) goto L_0x00d9
            java.lang.String r1 = "ver"
            int r1 = r4.getInt(r1)     // Catch:{ Throwable -> 0x0164 }
            r0.b = r1     // Catch:{ Throwable -> 0x0164 }
        L_0x00d9:
            java.lang.String r1 = "result"
            boolean r1 = com.amap.api.col.sl.ca.a(r4, r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x0077
            com.amap.api.col.sl.bq$a$a r2 = new com.amap.api.col.sl.bq$a$a     // Catch:{ Throwable -> 0x015a }
            r2.<init>()     // Catch:{ Throwable -> 0x015a }
            r1 = 0
            r2.a = r1     // Catch:{ Throwable -> 0x015a }
            r1 = 0
            r2.b = r1     // Catch:{ Throwable -> 0x015a }
            r0.x = r2     // Catch:{ Throwable -> 0x015a }
            java.lang.String r1 = "result"
            org.json.JSONObject r3 = r4.getJSONObject(r1)     // Catch:{ Throwable -> 0x015a }
            java.lang.String r1 = ";"
            java.lang.String[] r4 = r13.split(r1)     // Catch:{ Throwable -> 0x016e }
            if (r4 == 0) goto L_0x0176
            int r1 = r4.length     // Catch:{ Throwable -> 0x016e }
            if (r1 <= 0) goto L_0x0176
            int r6 = r4.length     // Catch:{ Throwable -> 0x016e }
            r1 = r5
        L_0x0101:
            if (r1 >= r6) goto L_0x0176
            r5 = r4[r1]     // Catch:{ Throwable -> 0x016e }
            boolean r7 = r3.has(r5)     // Catch:{ Throwable -> 0x016e }
            if (r7 == 0) goto L_0x0114
            org.json.JSONObject r7 = r0.w     // Catch:{ Throwable -> 0x016e }
            java.lang.Object r8 = r3.get(r5)     // Catch:{ Throwable -> 0x016e }
            r7.putOpt(r5, r8)     // Catch:{ Throwable -> 0x016e }
        L_0x0114:
            int r1 = r1 + 1
            goto L_0x0101
        L_0x0117:
            if (r1 != 0) goto L_0x00c9
            java.lang.String r1 = "authcsid"
            java.lang.String r2 = "authgsid"
            if (r3 == 0) goto L_0x0123
            java.lang.String r1 = r3.c     // Catch:{ Throwable -> 0x015a }
            java.lang.String r2 = r3.d     // Catch:{ Throwable -> 0x015a }
        L_0x0123:
            com.amap.api.col.sl.ca.a(r11, r1, r2, r4)     // Catch:{ Throwable -> 0x015a }
            r1 = 0
            a = r1     // Catch:{ Throwable -> 0x015a }
            java.lang.String r1 = "info"
            boolean r1 = r4.has(r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x0139
            java.lang.String r1 = "info"
            java.lang.String r1 = r4.getString(r1)     // Catch:{ Throwable -> 0x015a }
            b = r1     // Catch:{ Throwable -> 0x015a }
        L_0x0139:
            java.lang.String r1 = ""
            java.lang.String r3 = "infocode"
            boolean r3 = r4.has(r3)     // Catch:{ Throwable -> 0x015a }
            if (r3 == 0) goto L_0x0149
            java.lang.String r1 = "infocode"
            java.lang.String r1 = r4.getString(r1)     // Catch:{ Throwable -> 0x015a }
        L_0x0149:
            java.lang.String r3 = "/v3/iasdkauth"
            java.lang.String r6 = b     // Catch:{ Throwable -> 0x015a }
            com.amap.api.col.sl.cm.a(r12, r3, r6, r2, r1)     // Catch:{ Throwable -> 0x015a }
            int r1 = a     // Catch:{ Throwable -> 0x015a }
            if (r1 != 0) goto L_0x00c9
            java.lang.String r1 = b     // Catch:{ Throwable -> 0x015a }
            r0.a = r1     // Catch:{ Throwable -> 0x015a }
            goto L_0x0077
        L_0x015a:
            r1 = move-exception
            java.lang.String r2 = "at"
            java.lang.String r3 = "lc"
            com.amap.api.col.sl.cj.a(r1, r2, r3)
            goto L_0x0077
        L_0x0164:
            r1 = move-exception
            java.lang.String r2 = "at"
            java.lang.String r3 = "lc"
            com.amap.api.col.sl.cj.a(r1, r2, r3)     // Catch:{ Throwable -> 0x015a }
            goto L_0x00d9
        L_0x016e:
            r1 = move-exception
            java.lang.String r4 = "at"
            java.lang.String r5 = "co"
            com.amap.api.col.sl.cj.a(r1, r4, r5)     // Catch:{ Throwable -> 0x015a }
        L_0x0176:
            java.lang.String r1 = "11K"
            boolean r1 = com.amap.api.col.sl.ca.a(r3, r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x01a1
            java.lang.String r1 = "11K"
            org.json.JSONObject r1 = r3.getJSONObject(r1)     // Catch:{ Throwable -> 0x02d7 }
            java.lang.String r4 = "able"
            java.lang.String r4 = r1.getString(r4)     // Catch:{ Throwable -> 0x02d7 }
            r5 = 0
            boolean r4 = a(r4, r5)     // Catch:{ Throwable -> 0x02d7 }
            r2.a = r4     // Catch:{ Throwable -> 0x02d7 }
            java.lang.String r4 = "off"
            boolean r4 = r1.has(r4)     // Catch:{ Throwable -> 0x02d7 }
            if (r4 == 0) goto L_0x01a1
            java.lang.String r4 = "off"
            org.json.JSONObject r1 = r1.getJSONObject(r4)     // Catch:{ Throwable -> 0x02d7 }
            r2.c = r1     // Catch:{ Throwable -> 0x02d7 }
        L_0x01a1:
            java.lang.String r1 = "001"
            boolean r1 = com.amap.api.col.sl.ca.a(r3, r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x01dc
            java.lang.String r1 = "001"
            org.json.JSONObject r1 = r3.getJSONObject(r1)     // Catch:{ Throwable -> 0x015a }
            com.amap.api.col.sl.bq$a$d r2 = new com.amap.api.col.sl.bq$a$d     // Catch:{ Throwable -> 0x015a }
            r2.<init>()     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x01da
            java.lang.String r4 = "md5"
            java.lang.String r4 = a(r1, r4)     // Catch:{ Throwable -> 0x02e9 }
            java.lang.String r5 = "url"
            java.lang.String r5 = a(r1, r5)     // Catch:{ Throwable -> 0x02e9 }
            java.lang.String r6 = "sdkversion"
            java.lang.String r1 = a(r1, r6)     // Catch:{ Throwable -> 0x02e9 }
            boolean r6 = android.text.TextUtils.isEmpty(r4)     // Catch:{ Throwable -> 0x02e9 }
            if (r6 != 0) goto L_0x01da
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch:{ Throwable -> 0x02e9 }
            if (r6 != 0) goto L_0x01da
            boolean r6 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Throwable -> 0x02e9 }
            if (r6 == 0) goto L_0x02e1
        L_0x01da:
            r0.y = r2     // Catch:{ Throwable -> 0x015a }
        L_0x01dc:
            java.lang.String r1 = "002"
            boolean r1 = com.amap.api.col.sl.ca.a(r3, r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x01f4
            java.lang.String r1 = "002"
            org.json.JSONObject r1 = r3.getJSONObject(r1)     // Catch:{ Throwable -> 0x015a }
            com.amap.api.col.sl.bq$a$c r2 = new com.amap.api.col.sl.bq$a$c     // Catch:{ Throwable -> 0x015a }
            r2.<init>()     // Catch:{ Throwable -> 0x015a }
            a(r1, r2)     // Catch:{ Throwable -> 0x015a }
            r0.A = r2     // Catch:{ Throwable -> 0x015a }
        L_0x01f4:
            java.lang.String r1 = "14S"
            boolean r1 = com.amap.api.col.sl.ca.a(r3, r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x020c
            java.lang.String r1 = "14S"
            org.json.JSONObject r1 = r3.getJSONObject(r1)     // Catch:{ Throwable -> 0x015a }
            com.amap.api.col.sl.bq$a$c r2 = new com.amap.api.col.sl.bq$a$c     // Catch:{ Throwable -> 0x015a }
            r2.<init>()     // Catch:{ Throwable -> 0x015a }
            a(r1, r2)     // Catch:{ Throwable -> 0x015a }
            r0.B = r2     // Catch:{ Throwable -> 0x015a }
        L_0x020c:
            a(r0, r3)     // Catch:{ Throwable -> 0x015a }
            java.lang.String r1 = "14Z"
            boolean r1 = com.amap.api.col.sl.ca.a(r3, r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x0263
            java.lang.String r1 = "14Z"
            org.json.JSONObject r1 = r3.getJSONObject(r1)     // Catch:{ Throwable -> 0x015a }
            com.amap.api.col.sl.bq$a$f r2 = new com.amap.api.col.sl.bq$a$f     // Catch:{ Throwable -> 0x015a }
            r2.<init>()     // Catch:{ Throwable -> 0x015a }
            java.lang.String r4 = "md5"
            java.lang.String r4 = a(r1, r4)     // Catch:{ Throwable -> 0x02f3 }
            java.lang.String r5 = "md5info"
            java.lang.String r5 = a(r1, r5)     // Catch:{ Throwable -> 0x02f3 }
            java.lang.String r6 = "url"
            java.lang.String r6 = a(r1, r6)     // Catch:{ Throwable -> 0x02f3 }
            java.lang.String r7 = "able"
            java.lang.String r7 = a(r1, r7)     // Catch:{ Throwable -> 0x02f3 }
            java.lang.String r8 = "on"
            java.lang.String r8 = a(r1, r8)     // Catch:{ Throwable -> 0x02f3 }
            java.lang.String r9 = "mobileable"
            java.lang.String r1 = a(r1, r9)     // Catch:{ Throwable -> 0x02f3 }
            r2.e = r4     // Catch:{ Throwable -> 0x02f3 }
            r2.f = r5     // Catch:{ Throwable -> 0x02f3 }
            r2.d = r6     // Catch:{ Throwable -> 0x02f3 }
            r4 = 0
            boolean r4 = a(r7, r4)     // Catch:{ Throwable -> 0x02f3 }
            r2.a = r4     // Catch:{ Throwable -> 0x02f3 }
            r4 = 0
            boolean r4 = a(r8, r4)     // Catch:{ Throwable -> 0x02f3 }
            r2.b = r4     // Catch:{ Throwable -> 0x02f3 }
            r4 = 0
            boolean r1 = a(r1, r4)     // Catch:{ Throwable -> 0x02f3 }
            r2.c = r1     // Catch:{ Throwable -> 0x02f3 }
        L_0x0261:
            r0.G = r2     // Catch:{ Throwable -> 0x015a }
        L_0x0263:
            java.lang.String r1 = "151"
            boolean r1 = com.amap.api.col.sl.ca.a(r3, r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x0287
            java.lang.String r1 = "151"
            org.json.JSONObject r1 = r3.getJSONObject(r1)     // Catch:{ Throwable -> 0x015a }
            com.amap.api.col.sl.bq$a$e r2 = new com.amap.api.col.sl.bq$a$e     // Catch:{ Throwable -> 0x015a }
            r2.<init>()     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x0285
            java.lang.String r4 = "able"
            java.lang.String r1 = r1.optString(r4)     // Catch:{ Throwable -> 0x015a }
            r4 = 0
            boolean r1 = a(r1, r4)     // Catch:{ Throwable -> 0x015a }
            r2.a = r1     // Catch:{ Throwable -> 0x015a }
        L_0x0285:
            r0.z = r2     // Catch:{ Throwable -> 0x015a }
        L_0x0287:
            a(r0, r3)     // Catch:{ Throwable -> 0x015a }
            java.lang.String r1 = "14N"
            boolean r1 = com.amap.api.col.sl.ca.a(r3, r1)     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x0077
            java.lang.String r1 = "14N"
            org.json.JSONObject r1 = r3.getJSONObject(r1)     // Catch:{ Throwable -> 0x015a }
            com.amap.api.col.sl.bq$a$b r2 = new com.amap.api.col.sl.bq$a$b     // Catch:{ Throwable -> 0x015a }
            r2.<init>()     // Catch:{ Throwable -> 0x015a }
            java.lang.String r3 = "able"
            java.lang.String r3 = r1.optString(r3)     // Catch:{ Throwable -> 0x015a }
            r4 = 0
            boolean r3 = a(r3, r4)     // Catch:{ Throwable -> 0x015a }
            r2.a = r3     // Catch:{ Throwable -> 0x015a }
            java.lang.String r3 = "url"
            java.lang.String r3 = r1.optString(r3)     // Catch:{ Throwable -> 0x015a }
            r2.b = r3     // Catch:{ Throwable -> 0x015a }
            java.lang.String r3 = "md5"
            java.lang.String r1 = r1.optString(r3)     // Catch:{ Throwable -> 0x015a }
            r2.c = r1     // Catch:{ Throwable -> 0x015a }
            boolean r1 = r2.a     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x02fd
            com.amap.api.col.sl.bz r1 = com.amap.api.col.sl.ch.a()     // Catch:{ Throwable -> 0x015a }
            if (r1 == 0) goto L_0x0077
            com.amap.api.col.sl.cx r3 = new com.amap.api.col.sl.cx     // Catch:{ Throwable -> 0x015a }
            java.lang.String r4 = r2.b     // Catch:{ Throwable -> 0x015a }
            java.lang.String r2 = r2.c     // Catch:{ Throwable -> 0x015a }
            r3.<init>(r4, r2)     // Catch:{ Throwable -> 0x015a }
            com.amap.api.col.sl.cw r2 = new com.amap.api.col.sl.cw     // Catch:{ Throwable -> 0x015a }
            r2.<init>(r11, r3, r1)     // Catch:{ Throwable -> 0x015a }
            r2.a()     // Catch:{ Throwable -> 0x015a }
            goto L_0x0077
        L_0x02d7:
            r1 = move-exception
            java.lang.String r2 = "AuthConfigManager"
            java.lang.String r4 = "loadException"
            com.amap.api.col.sl.cj.a(r1, r2, r4)     // Catch:{ Throwable -> 0x015a }
            goto L_0x01a1
        L_0x02e1:
            r2.a = r5     // Catch:{ Throwable -> 0x02e9 }
            r2.b = r4     // Catch:{ Throwable -> 0x02e9 }
            r2.c = r1     // Catch:{ Throwable -> 0x02e9 }
            goto L_0x01da
        L_0x02e9:
            r1 = move-exception
            java.lang.String r4 = "at"
            java.lang.String r5 = "psu"
            com.amap.api.col.sl.cj.a(r1, r4, r5)     // Catch:{ Throwable -> 0x015a }
            goto L_0x01da
        L_0x02f3:
            r1 = move-exception
            java.lang.String r4 = "at"
            java.lang.String r5 = "pes"
            com.amap.api.col.sl.cj.a(r1, r4, r5)     // Catch:{ Throwable -> 0x015a }
            goto L_0x0261
        L_0x02fd:
            java.lang.String r1 = "aiu"
            com.amap.api.col.sl.cy.a(r11, r1)     // Catch:{ Throwable -> 0x015a }
            goto L_0x0077
        L_0x0304:
            r1 = move-exception
            r4 = r3
            goto L_0x009d
        L_0x0308:
            r1 = move-exception
            goto L_0x009d
        L_0x030b:
            r1 = move-exception
            r4 = r3
            goto L_0x0097
        L_0x030f:
            r1 = move-exception
            goto L_0x0097
        L_0x0312:
            r1 = move-exception
            r4 = r3
            goto L_0x007d
        L_0x0316:
            r1 = move-exception
            goto L_0x007d
        L_0x0319:
            r4 = r3
            goto L_0x0038
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.bq.a(android.content.Context, com.amap.api.col.sl.bz, java.lang.String):com.amap.api.col.sl.bq$a");
    }

    private static String a(JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject == null) {
            return "";
        }
        String str2 = "";
        if (!jSONObject.has(str) || jSONObject.getString(str).equals("[]")) {
            return str2;
        }
        return jSONObject.optString(str);
    }

    private static void a(JSONObject jSONObject, b bVar) {
        if (bVar != null) {
            try {
                String a2 = a(jSONObject, "m");
                String a3 = a(jSONObject, "u");
                String a4 = a(jSONObject, "v");
                String a5 = a(jSONObject, "able");
                String a6 = a(jSONObject, "on");
                bVar.c = a2;
                bVar.b = a3;
                bVar.d = a4;
                bVar.a = a(a5, false);
                bVar.e = a(a6, true);
            } catch (Throwable th) {
                cj.a(th, "at", "pe");
            }
        }
    }

    private static void a(JSONObject jSONObject, c cVar) {
        if (jSONObject != null) {
            try {
                String a2 = a(jSONObject, "md5");
                String a3 = a(jSONObject, "url");
                cVar.b = a2;
                cVar.a = a3;
            } catch (Throwable th) {
                cj.a(th, "at", "psc");
            }
        }
    }

    private static void a(a aVar, JSONObject jSONObject) {
        try {
            if (ca.a(jSONObject, "11B")) {
                aVar.h = jSONObject.getJSONObject("11B");
            }
            if (ca.a(jSONObject, "11C")) {
                aVar.k = jSONObject.getJSONObject("11C");
            }
            if (ca.a(jSONObject, "11I")) {
                aVar.l = jSONObject.getJSONObject("11I");
            }
            if (ca.a(jSONObject, "11H")) {
                aVar.m = jSONObject.getJSONObject("11H");
            }
            if (ca.a(jSONObject, "11E")) {
                aVar.n = jSONObject.getJSONObject("11E");
            }
            if (ca.a(jSONObject, "11F")) {
                aVar.o = jSONObject.getJSONObject("11F");
            }
            if (ca.a(jSONObject, "13A")) {
                aVar.q = jSONObject.getJSONObject("13A");
            }
            if (ca.a(jSONObject, "13J")) {
                aVar.i = jSONObject.getJSONObject("13J");
            }
            if (ca.a(jSONObject, "11G")) {
                aVar.p = jSONObject.getJSONObject("11G");
            }
            if (ca.a(jSONObject, "006")) {
                aVar.r = jSONObject.getJSONObject("006");
            }
            if (ca.a(jSONObject, "010")) {
                aVar.s = jSONObject.getJSONObject("010");
            }
            if (ca.a(jSONObject, "11Z")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("11Z");
                b bVar = new b();
                a(jSONObject2, bVar);
                aVar.C = bVar;
            }
            if (ca.a(jSONObject, "135")) {
                aVar.j = jSONObject.getJSONObject("135");
            }
            if (ca.a(jSONObject, "13S")) {
                aVar.g = jSONObject.getJSONObject("13S");
            }
            if (ca.a(jSONObject, "121")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("121");
                b bVar2 = new b();
                a(jSONObject3, bVar2);
                aVar.D = bVar2;
            }
            if (ca.a(jSONObject, "122")) {
                JSONObject jSONObject4 = jSONObject.getJSONObject("122");
                b bVar3 = new b();
                a(jSONObject4, bVar3);
                aVar.E = bVar3;
            }
            if (ca.a(jSONObject, "123")) {
                JSONObject jSONObject5 = jSONObject.getJSONObject("123");
                b bVar4 = new b();
                a(jSONObject5, bVar4);
                aVar.F = bVar4;
            }
            if (ca.a(jSONObject, "011")) {
                aVar.c = jSONObject.getJSONObject("011");
            }
            if (ca.a(jSONObject, "012")) {
                aVar.d = jSONObject.getJSONObject("012");
            }
            if (ca.a(jSONObject, "013")) {
                aVar.e = jSONObject.getJSONObject("013");
            }
            if (ca.a(jSONObject, "014")) {
                aVar.f = jSONObject.getJSONObject("014");
            }
            if (ca.a(jSONObject, "145")) {
                aVar.t = jSONObject.getJSONObject("145");
            }
            if (ca.a(jSONObject, "14B")) {
                aVar.u = jSONObject.getJSONObject("14B");
            }
            if (ca.a(jSONObject, "14D")) {
                aVar.v = jSONObject.getJSONObject("14D");
            }
        } catch (Throwable th) {
            cm.c(th, "at", "pe");
        }
    }
}
