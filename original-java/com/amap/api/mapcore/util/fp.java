package com.amap.api.mapcore.util;

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
public class fp {
    public static int a = -1;
    public static String b = "";

    /* compiled from: AuthConfigManager */
    public static class a {
        public b A;
        public b B;
        public b C;
        public b D;
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
        public C0007a x;
        public d y;
        public c z;

        /* renamed from: com.amap.api.mapcore.util.fp$a$a reason: collision with other inner class name */
        /* compiled from: AuthConfigManager */
        public static class C0007a {
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
    }

    /* compiled from: AuthConfigManager */
    static class b extends hq {
        private String c;
        private Map<String, String> d;
        private boolean e;

        b(Context context, fx fxVar, String str, Map<String, String> map) {
            super(context, fxVar);
            this.c = str;
            this.d = map;
            this.e = VERSION.SDK_INT != 19;
        }

        public boolean d() {
            return this.e;
        }

        public Map<String, String> a() {
            return null;
        }

        public String c() {
            return this.e ? "https://restapi.amap.com/v3/iasdkauth" : "http://restapi.amap.com/v3/iasdkauth";
        }

        public byte[] e() {
            return null;
        }

        public byte[] f() {
            return fy.a(fy.b(o()));
        }

        /* access modifiers changed from: protected */
        public String h() {
            return "3.0";
        }

        private Map<String, String> o() {
            String t = fs.t(this.a);
            if (TextUtils.isEmpty(t)) {
                t = fs.c();
            }
            if (!TextUtils.isEmpty(t)) {
                t = fu.b(new StringBuilder(t).reverse().toString());
            }
            HashMap hashMap = new HashMap();
            hashMap.put("authkey", this.c);
            hashMap.put("plattype", "android");
            hashMap.put("product", this.b.a());
            hashMap.put("version", this.b.b());
            hashMap.put("output", "json");
            hashMap.put("androidversion", VERSION.SDK_INT + "");
            hashMap.put("deviceId", t);
            hashMap.put("manufacture", Build.MANUFACTURER);
            if (this.d != null && !this.d.isEmpty()) {
                hashMap.putAll(this.d);
            }
            hashMap.put("abitype", fy.a(this.a));
            hashMap.put("ext", this.b.e());
            return hashMap;
        }
    }

    public static boolean a(String str, boolean z) {
        boolean z2 = true;
        try {
            if (TextUtils.isEmpty(str)) {
                return z;
            }
            String[] split = URLDecoder.decode(str).split("/");
            if (split[split.length - 1].charAt(4) % 2 != 1) {
                z2 = false;
            }
            return z2;
        } catch (Throwable th) {
            return z;
        }
    }

    /* JADX WARNING: type inference failed for: r3v0 */
    /* JADX WARNING: type inference failed for: r4v0 */
    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r0v2 */
    /* JADX WARNING: type inference failed for: r3v2 */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r4v1 */
    /* JADX WARNING: type inference failed for: r4v2 */
    /* JADX WARNING: type inference failed for: r2v2 */
    /* JADX WARNING: type inference failed for: r0v4 */
    /* JADX WARNING: type inference failed for: r3v4 */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r4v3 */
    /* JADX WARNING: type inference failed for: r4v4 */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r0v7 */
    /* JADX WARNING: type inference failed for: r3v6 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r4v5 */
    /* JADX WARNING: type inference failed for: r4v6, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r3v7, types: [com.amap.api.mapcore.util.hx] */
    /* JADX WARNING: type inference failed for: r0v9, types: [java.lang.CharSequence] */
    /* JADX WARNING: type inference failed for: r0v10, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r0v73, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r2v23, types: [com.amap.api.mapcore.util.hx] */
    /* JADX WARNING: type inference failed for: r4v24 */
    /* JADX WARNING: type inference failed for: r4v25, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r3v24, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r0v87 */
    /* JADX WARNING: type inference failed for: r3v25 */
    /* JADX WARNING: type inference failed for: r4v26 */
    /* JADX WARNING: type inference failed for: r4v27 */
    /* JADX WARNING: type inference failed for: r4v28 */
    /* JADX WARNING: type inference failed for: r4v29, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r4v30 */
    /* JADX WARNING: type inference failed for: r4v31 */
    /* JADX WARNING: type inference failed for: r4v32 */
    /* JADX WARNING: type inference failed for: r0v91 */
    /* JADX WARNING: type inference failed for: r2v24 */
    /* JADX WARNING: type inference failed for: r2v25 */
    /* JADX WARNING: type inference failed for: r2v26 */
    /* JADX WARNING: type inference failed for: r2v27 */
    /* JADX WARNING: type inference failed for: r2v28 */
    /* JADX WARNING: type inference failed for: r2v29 */
    /* JADX WARNING: type inference failed for: r4v33 */
    /* JADX WARNING: type inference failed for: r4v34 */
    /* JADX WARNING: type inference failed for: r4v35 */
    /* JADX WARNING: type inference failed for: r4v36 */
    /* JADX WARNING: type inference failed for: r4v37 */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0096, code lost:
        r2 = r3;
        r4 = r3;
     */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r4v0
  assigns: []
  uses: []
  mth insns count: 247
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
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0095 A[ExcHandler: IllegalBlockSizeException (e javax.crypto.IllegalBlockSizeException), Splitter:B:1:0x000f] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a8  */
    /* JADX WARNING: Unknown variable types count: 15 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.amap.api.mapcore.util.fp.a a(android.content.Context r12, com.amap.api.mapcore.util.fx r13, java.lang.String r14, java.util.Map<java.lang.String, java.lang.String> r15) {
        /*
            r10 = 1
            r3 = 0
            r5 = 0
            com.amap.api.mapcore.util.fp$a r1 = new com.amap.api.mapcore.util.fp$a
            r1.<init>()
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            r1.w = r0
            com.amap.api.mapcore.util.hp r0 = new com.amap.api.mapcore.util.hp     // Catch:{ fn -> 0x007b, IllegalBlockSizeException -> 0x0095, Throwable -> 0x009b }
            r0.<init>()     // Catch:{ fn -> 0x007b, IllegalBlockSizeException -> 0x0095, Throwable -> 0x009b }
            com.amap.api.mapcore.util.fp$b r2 = new com.amap.api.mapcore.util.fp$b     // Catch:{ fn -> 0x0079, Throwable -> 0x008c, IllegalBlockSizeException -> 0x0095 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ fn -> 0x0079, Throwable -> 0x008c, IllegalBlockSizeException -> 0x0095 }
            r4.<init>()     // Catch:{ fn -> 0x0079, Throwable -> 0x008c, IllegalBlockSizeException -> 0x0095 }
            java.lang.StringBuilder r4 = r4.append(r14)     // Catch:{ fn -> 0x0079, Throwable -> 0x008c, IllegalBlockSizeException -> 0x0095 }
            java.lang.String r6 = ";14N"
            java.lang.StringBuilder r4 = r4.append(r6)     // Catch:{ fn -> 0x0079, Throwable -> 0x008c, IllegalBlockSizeException -> 0x0095 }
            java.lang.String r4 = r4.toString()     // Catch:{ fn -> 0x0079, Throwable -> 0x008c, IllegalBlockSizeException -> 0x0095 }
            r2.<init>(r12, r13, r4, r15)     // Catch:{ fn -> 0x0079, Throwable -> 0x008c, IllegalBlockSizeException -> 0x0095 }
            boolean r4 = r2.d()     // Catch:{ fn -> 0x0079, Throwable -> 0x008c, IllegalBlockSizeException -> 0x0095 }
            com.amap.api.mapcore.util.hx r2 = r0.a(r2, r4)     // Catch:{ fn -> 0x0079, Throwable -> 0x008c, IllegalBlockSizeException -> 0x0095 }
            if (r2 == 0) goto L_0x0254
            byte[] r4 = r2.a     // Catch:{ fn -> 0x0248, IllegalBlockSizeException -> 0x0241, Throwable -> 0x023a }
        L_0x0038:
            r0 = 16
            byte[] r0 = new byte[r0]     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            int r6 = r4.length     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            int r6 = r6 + -16
            byte[] r6 = new byte[r6]     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            r7 = 0
            r8 = 0
            r9 = 16
            java.lang.System.arraycopy(r4, r7, r0, r8, r9)     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            r7 = 16
            r8 = 0
            int r9 = r4.length     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            int r9 = r9 + -16
            java.lang.System.arraycopy(r4, r7, r6, r8, r9)     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            javax.crypto.spec.SecretKeySpec r7 = new javax.crypto.spec.SecretKeySpec     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            java.lang.String r8 = "AES"
            r7.<init>(r0, r8)     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            java.lang.String r0 = "AES/CBC/PKCS5Padding"
            javax.crypto.Cipher r0 = javax.crypto.Cipher.getInstance(r0)     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            javax.crypto.spec.IvParameterSpec r8 = new javax.crypto.spec.IvParameterSpec     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            byte[] r9 = com.amap.api.mapcore.util.fy.b()     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            r8.<init>(r9)     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            r9 = 2
            r0.init(r9, r7, r8)     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            byte[] r0 = r0.doFinal(r6)     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            java.lang.String r3 = com.amap.api.mapcore.util.fy.a(r0)     // Catch:{ fn -> 0x024c, IllegalBlockSizeException -> 0x0245, Throwable -> 0x023e }
            r0 = r3
            r3 = r2
        L_0x0075:
            if (r4 != 0) goto L_0x00a8
            r0 = r1
        L_0x0078:
            return r0
        L_0x0079:
            r0 = move-exception
            throw r0     // Catch:{ fn -> 0x007b, IllegalBlockSizeException -> 0x0095, Throwable -> 0x009b }
        L_0x007b:
            r0 = move-exception
            r2 = r3
            r4 = r3
        L_0x007e:
            java.lang.String r6 = r0.a()
            r1.a = r6
            java.lang.String r6 = "/v3/iasdkauth"
            com.amap.api.mapcore.util.gf.a(r13, r6, r0)
            r0 = r3
            r3 = r2
            goto L_0x0075
        L_0x008c:
            r0 = move-exception
            com.amap.api.mapcore.util.fn r0 = new com.amap.api.mapcore.util.fn     // Catch:{ fn -> 0x007b, IllegalBlockSizeException -> 0x0095, Throwable -> 0x009b }
            java.lang.String r2 = "未知的错误"
            r0.<init>(r2)     // Catch:{ fn -> 0x007b, IllegalBlockSizeException -> 0x0095, Throwable -> 0x009b }
            throw r0     // Catch:{ fn -> 0x007b, IllegalBlockSizeException -> 0x0095, Throwable -> 0x009b }
        L_0x0095:
            r0 = move-exception
            r2 = r3
            r4 = r3
        L_0x0098:
            r0 = r3
            r3 = r2
            goto L_0x0075
        L_0x009b:
            r0 = move-exception
            r2 = r3
            r4 = r3
        L_0x009e:
            java.lang.String r6 = "at"
            java.lang.String r7 = "lc"
            com.amap.api.mapcore.util.gf.b(r0, r6, r7)
            r0 = r3
            r3 = r2
            goto L_0x0075
        L_0x00a8:
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 == 0) goto L_0x00b2
            java.lang.String r0 = com.amap.api.mapcore.util.fy.a(r4)
        L_0x00b2:
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch:{ Throwable -> 0x0169 }
            r4.<init>(r0)     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r0 = "status"
            boolean r0 = r4.has(r0)     // Catch:{ Throwable -> 0x0169 }
            if (r0 == 0) goto L_0x0171
            java.lang.String r0 = "status"
            int r0 = r4.getInt(r0)     // Catch:{ Throwable -> 0x0169 }
            if (r0 != r10) goto L_0x0118
            r0 = 1
            a = r0     // Catch:{ Throwable -> 0x0169 }
        L_0x00ca:
            java.lang.String r0 = "ver"
            boolean r0 = r4.has(r0)     // Catch:{ Throwable -> 0x015f }
            if (r0 == 0) goto L_0x00da
            java.lang.String r0 = "ver"
            int r0 = r4.getInt(r0)     // Catch:{ Throwable -> 0x015f }
            r1.b = r0     // Catch:{ Throwable -> 0x015f }
        L_0x00da:
            java.lang.String r0 = "result"
            boolean r0 = com.amap.api.mapcore.util.fy.a(r4, r0)     // Catch:{ Throwable -> 0x0169 }
            if (r0 == 0) goto L_0x0171
            com.amap.api.mapcore.util.fp$a$a r2 = new com.amap.api.mapcore.util.fp$a$a     // Catch:{ Throwable -> 0x0169 }
            r2.<init>()     // Catch:{ Throwable -> 0x0169 }
            r0 = 0
            r2.a = r0     // Catch:{ Throwable -> 0x0169 }
            r0 = 0
            r2.b = r0     // Catch:{ Throwable -> 0x0169 }
            r1.x = r2     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r0 = "result"
            org.json.JSONObject r3 = r4.getJSONObject(r0)     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r0 = ";"
            java.lang.String[] r4 = r14.split(r0)     // Catch:{ Throwable -> 0x0174 }
            if (r4 == 0) goto L_0x017c
            int r0 = r4.length     // Catch:{ Throwable -> 0x0174 }
            if (r0 <= 0) goto L_0x017c
            int r6 = r4.length     // Catch:{ Throwable -> 0x0174 }
            r0 = r5
        L_0x0102:
            if (r0 >= r6) goto L_0x017c
            r5 = r4[r0]     // Catch:{ Throwable -> 0x0174 }
            boolean r7 = r3.has(r5)     // Catch:{ Throwable -> 0x0174 }
            if (r7 == 0) goto L_0x0115
            org.json.JSONObject r7 = r1.w     // Catch:{ Throwable -> 0x0174 }
            java.lang.Object r8 = r3.get(r5)     // Catch:{ Throwable -> 0x0174 }
            r7.putOpt(r5, r8)     // Catch:{ Throwable -> 0x0174 }
        L_0x0115:
            int r0 = r0 + 1
            goto L_0x0102
        L_0x0118:
            if (r0 != 0) goto L_0x00ca
            java.lang.String r2 = "authcsid"
            java.lang.String r0 = "authgsid"
            if (r3 == 0) goto L_0x024f
            java.lang.String r2 = r3.c     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r0 = r3.d     // Catch:{ Throwable -> 0x0169 }
            r11 = r0
            r0 = r2
            r2 = r11
        L_0x0127:
            com.amap.api.mapcore.util.fy.a(r12, r0, r2, r4)     // Catch:{ Throwable -> 0x0169 }
            r0 = 0
            a = r0     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r0 = "info"
            boolean r0 = r4.has(r0)     // Catch:{ Throwable -> 0x0169 }
            if (r0 == 0) goto L_0x013d
            java.lang.String r0 = "info"
            java.lang.String r0 = r4.getString(r0)     // Catch:{ Throwable -> 0x0169 }
            b = r0     // Catch:{ Throwable -> 0x0169 }
        L_0x013d:
            java.lang.String r0 = ""
            java.lang.String r3 = "infocode"
            boolean r3 = r4.has(r3)     // Catch:{ Throwable -> 0x0169 }
            if (r3 == 0) goto L_0x014d
            java.lang.String r0 = "infocode"
            java.lang.String r0 = r4.getString(r0)     // Catch:{ Throwable -> 0x0169 }
        L_0x014d:
            java.lang.String r3 = "/v3/iasdkauth"
            java.lang.String r6 = b     // Catch:{ Throwable -> 0x0169 }
            com.amap.api.mapcore.util.gf.a(r13, r3, r6, r2, r0)     // Catch:{ Throwable -> 0x0169 }
            int r0 = a     // Catch:{ Throwable -> 0x0169 }
            if (r0 != 0) goto L_0x00ca
            java.lang.String r0 = b     // Catch:{ Throwable -> 0x0169 }
            r1.a = r0     // Catch:{ Throwable -> 0x0169 }
            r0 = r1
            goto L_0x0078
        L_0x015f:
            r0 = move-exception
            java.lang.String r2 = "at"
            java.lang.String r3 = "lc"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)     // Catch:{ Throwable -> 0x0169 }
            goto L_0x00da
        L_0x0169:
            r0 = move-exception
            java.lang.String r2 = "at"
            java.lang.String r3 = "lc"
            com.amap.api.mapcore.util.gc.a(r0, r2, r3)
        L_0x0171:
            r0 = r1
            goto L_0x0078
        L_0x0174:
            r0 = move-exception
            java.lang.String r4 = "at"
            java.lang.String r5 = "co"
            com.amap.api.mapcore.util.gc.a(r0, r4, r5)     // Catch:{ Throwable -> 0x0169 }
        L_0x017c:
            java.lang.String r0 = "11K"
            boolean r0 = com.amap.api.mapcore.util.fy.a(r3, r0)     // Catch:{ Throwable -> 0x0169 }
            if (r0 == 0) goto L_0x01a7
            java.lang.String r0 = "11K"
            org.json.JSONObject r0 = r3.getJSONObject(r0)     // Catch:{ Throwable -> 0x0229 }
            java.lang.String r4 = "able"
            java.lang.String r4 = r0.getString(r4)     // Catch:{ Throwable -> 0x0229 }
            r5 = 0
            boolean r4 = a(r4, r5)     // Catch:{ Throwable -> 0x0229 }
            r2.a = r4     // Catch:{ Throwable -> 0x0229 }
            java.lang.String r4 = "off"
            boolean r4 = r0.has(r4)     // Catch:{ Throwable -> 0x0229 }
            if (r4 == 0) goto L_0x01a7
            java.lang.String r4 = "off"
            org.json.JSONObject r0 = r0.getJSONObject(r4)     // Catch:{ Throwable -> 0x0229 }
            r2.c = r0     // Catch:{ Throwable -> 0x0229 }
        L_0x01a7:
            java.lang.String r0 = "001"
            boolean r0 = com.amap.api.mapcore.util.fy.a(r3, r0)     // Catch:{ Throwable -> 0x0169 }
            if (r0 == 0) goto L_0x01bf
            java.lang.String r0 = "001"
            org.json.JSONObject r0 = r3.getJSONObject(r0)     // Catch:{ Throwable -> 0x0169 }
            com.amap.api.mapcore.util.fp$a$d r2 = new com.amap.api.mapcore.util.fp$a$d     // Catch:{ Throwable -> 0x0169 }
            r2.<init>()     // Catch:{ Throwable -> 0x0169 }
            a(r0, r2)     // Catch:{ Throwable -> 0x0169 }
            r1.y = r2     // Catch:{ Throwable -> 0x0169 }
        L_0x01bf:
            java.lang.String r0 = "002"
            boolean r0 = com.amap.api.mapcore.util.fy.a(r3, r0)     // Catch:{ Throwable -> 0x0169 }
            if (r0 == 0) goto L_0x01d7
            java.lang.String r0 = "002"
            org.json.JSONObject r0 = r3.getJSONObject(r0)     // Catch:{ Throwable -> 0x0169 }
            com.amap.api.mapcore.util.fp$a$c r2 = new com.amap.api.mapcore.util.fp$a$c     // Catch:{ Throwable -> 0x0169 }
            r2.<init>()     // Catch:{ Throwable -> 0x0169 }
            a(r0, r2)     // Catch:{ Throwable -> 0x0169 }
            r1.z = r2     // Catch:{ Throwable -> 0x0169 }
        L_0x01d7:
            a(r1, r3)     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r0 = "14N"
            boolean r0 = com.amap.api.mapcore.util.fy.a(r3, r0)     // Catch:{ Throwable -> 0x0169 }
            if (r0 == 0) goto L_0x0171
            java.lang.String r0 = "14N"
            org.json.JSONObject r0 = r3.getJSONObject(r0)     // Catch:{ Throwable -> 0x0169 }
            com.amap.api.mapcore.util.fp$a$b r2 = new com.amap.api.mapcore.util.fp$a$b     // Catch:{ Throwable -> 0x0169 }
            r2.<init>()     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r3 = "able"
            java.lang.String r3 = r0.optString(r3)     // Catch:{ Throwable -> 0x0169 }
            r4 = 0
            boolean r3 = a(r3, r4)     // Catch:{ Throwable -> 0x0169 }
            r2.a = r3     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r3 = "url"
            java.lang.String r3 = r0.optString(r3)     // Catch:{ Throwable -> 0x0169 }
            r2.b = r3     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r3 = "md5"
            java.lang.String r0 = r0.optString(r3)     // Catch:{ Throwable -> 0x0169 }
            r2.c = r0     // Catch:{ Throwable -> 0x0169 }
            boolean r0 = r2.a     // Catch:{ Throwable -> 0x0169 }
            if (r0 == 0) goto L_0x0233
            com.amap.api.mapcore.util.fx r0 = com.amap.api.mapcore.util.ga.a()     // Catch:{ Throwable -> 0x0169 }
            if (r0 == 0) goto L_0x0171
            com.amap.api.mapcore.util.gz r3 = new com.amap.api.mapcore.util.gz     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r4 = r2.b     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r2 = r2.c     // Catch:{ Throwable -> 0x0169 }
            java.lang.String r5 = ""
            r3.<init>(r4, r2, r5)     // Catch:{ Throwable -> 0x0169 }
            com.amap.api.mapcore.util.gy r2 = new com.amap.api.mapcore.util.gy     // Catch:{ Throwable -> 0x0169 }
            r2.<init>(r12, r3, r0)     // Catch:{ Throwable -> 0x0169 }
            r2.a()     // Catch:{ Throwable -> 0x0169 }
            goto L_0x0171
        L_0x0229:
            r0 = move-exception
            java.lang.String r2 = "AuthConfigManager"
            java.lang.String r4 = "loadException"
            com.amap.api.mapcore.util.gc.a(r0, r2, r4)     // Catch:{ Throwable -> 0x0169 }
            goto L_0x01a7
        L_0x0233:
            java.lang.String r0 = "aiu"
            com.amap.api.mapcore.util.ha.a(r12, r0)     // Catch:{ Throwable -> 0x0169 }
            goto L_0x0171
        L_0x023a:
            r0 = move-exception
            r4 = r3
            goto L_0x009e
        L_0x023e:
            r0 = move-exception
            goto L_0x009e
        L_0x0241:
            r0 = move-exception
            r4 = r3
            goto L_0x0098
        L_0x0245:
            r0 = move-exception
            goto L_0x0098
        L_0x0248:
            r0 = move-exception
            r4 = r3
            goto L_0x007e
        L_0x024c:
            r0 = move-exception
            goto L_0x007e
        L_0x024f:
            r11 = r0
            r0 = r2
            r2 = r11
            goto L_0x0127
        L_0x0254:
            r4 = r3
            goto L_0x0038
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fp.a(android.content.Context, com.amap.api.mapcore.util.fx, java.lang.String, java.util.Map):com.amap.api.mapcore.util.fp$a");
    }

    public static String a(JSONObject jSONObject, String str) throws JSONException {
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
                gc.a(th, "at", "pe");
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
                gc.a(th, "At", "psc");
            }
        }
    }

    private static void a(JSONObject jSONObject, d dVar) {
        if (jSONObject != null) {
            try {
                String a2 = a(jSONObject, "md5");
                String a3 = a(jSONObject, "url");
                String a4 = a(jSONObject, "sdkversion");
                if (!TextUtils.isEmpty(a2) && !TextUtils.isEmpty(a3) && !TextUtils.isEmpty(a4)) {
                    dVar.a = a3;
                    dVar.b = a2;
                    dVar.c = a4;
                }
            } catch (Throwable th) {
                gc.a(th, "at", "psu");
            }
        }
    }

    private static void a(a aVar, JSONObject jSONObject) {
        try {
            if (fy.a(jSONObject, "11B")) {
                aVar.h = jSONObject.getJSONObject("11B");
            }
            if (fy.a(jSONObject, "11C")) {
                aVar.k = jSONObject.getJSONObject("11C");
            }
            if (fy.a(jSONObject, "11I")) {
                aVar.l = jSONObject.getJSONObject("11I");
            }
            if (fy.a(jSONObject, "11H")) {
                aVar.m = jSONObject.getJSONObject("11H");
            }
            if (fy.a(jSONObject, "11E")) {
                aVar.n = jSONObject.getJSONObject("11E");
            }
            if (fy.a(jSONObject, "11F")) {
                aVar.o = jSONObject.getJSONObject("11F");
            }
            if (fy.a(jSONObject, "13A")) {
                aVar.q = jSONObject.getJSONObject("13A");
            }
            if (fy.a(jSONObject, "13J")) {
                aVar.i = jSONObject.getJSONObject("13J");
            }
            if (fy.a(jSONObject, "11G")) {
                aVar.p = jSONObject.getJSONObject("11G");
            }
            if (fy.a(jSONObject, "006")) {
                aVar.r = jSONObject.getJSONObject("006");
            }
            if (fy.a(jSONObject, "010")) {
                aVar.s = jSONObject.getJSONObject("010");
            }
            if (fy.a(jSONObject, "11Z")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("11Z");
                b bVar = new b();
                a(jSONObject2, bVar);
                aVar.A = bVar;
            }
            if (fy.a(jSONObject, "135")) {
                aVar.j = jSONObject.getJSONObject("135");
            }
            if (fy.a(jSONObject, "13S")) {
                aVar.g = jSONObject.getJSONObject("13S");
            }
            if (fy.a(jSONObject, "121")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("121");
                b bVar2 = new b();
                a(jSONObject3, bVar2);
                aVar.B = bVar2;
            }
            if (fy.a(jSONObject, "122")) {
                JSONObject jSONObject4 = jSONObject.getJSONObject("122");
                b bVar3 = new b();
                a(jSONObject4, bVar3);
                aVar.C = bVar3;
            }
            if (fy.a(jSONObject, "123")) {
                JSONObject jSONObject5 = jSONObject.getJSONObject("123");
                b bVar4 = new b();
                a(jSONObject5, bVar4);
                aVar.D = bVar4;
            }
            if (fy.a(jSONObject, "011")) {
                aVar.c = jSONObject.getJSONObject("011");
            }
            if (fy.a(jSONObject, "012")) {
                aVar.d = jSONObject.getJSONObject("012");
            }
            if (fy.a(jSONObject, "013")) {
                aVar.e = jSONObject.getJSONObject("013");
            }
            if (fy.a(jSONObject, "014")) {
                aVar.f = jSONObject.getJSONObject("014");
            }
            if (fy.a(jSONObject, "145")) {
                aVar.t = jSONObject.getJSONObject("145");
            }
            if (fy.a(jSONObject, "14B")) {
                aVar.u = jSONObject.getJSONObject("14B");
            }
            if (fy.a(jSONObject, "14D")) {
                aVar.v = jSONObject.getJSONObject("14D");
            }
        } catch (Throwable th) {
            gf.b(th, "at", "pe");
        }
    }
}
