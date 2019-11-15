package com.sina.weibo.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import java.util.List;

/* compiled from: WeiboAppManager */
public class b {
    private static final String a = b.class.getName();
    private static final Uri b = Uri.parse("content://com.sina.weibo.sdkProvider/query/package");
    private static b c;
    private Context d;

    /* compiled from: WeiboAppManager */
    public static class a {
        private String a;
        private int b;

        /* access modifiers changed from: private */
        public void a(String str) {
            this.a = str;
        }

        public String a() {
            return this.a;
        }

        /* access modifiers changed from: private */
        public void a(int i) {
            this.b = i;
        }

        public int b() {
            return this.b;
        }

        public boolean c() {
            if (TextUtils.isEmpty(this.a) || this.b <= 0) {
                return false;
            }
            return true;
        }

        public String toString() {
            return "WeiboInfo: PackageName = " + this.a + ", supportApi = " + this.b;
        }
    }

    private b(Context context) {
        this.d = context.getApplicationContext();
    }

    public static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (c == null) {
                c = new b(context);
            }
            bVar = c;
        }
        return bVar;
    }

    public synchronized a a() {
        return b(this.d);
    }

    private a b(Context context) {
        boolean z = true;
        a c2 = c(context);
        a d2 = d(context);
        boolean z2 = c2 != null;
        if (d2 == null) {
            z = false;
        }
        if (!z2 || !z) {
            if (z2) {
                return c2;
            }
            if (z) {
                return d2;
            }
            return null;
        } else if (c2.b() >= d2.b()) {
            return c2;
        } else {
            return d2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0071  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.sina.weibo.sdk.b.a c(android.content.Context r8) {
        /*
            r7 = this;
            r6 = 0
            android.content.ContentResolver r0 = r8.getContentResolver()
            android.net.Uri r1 = b     // Catch:{ Exception -> 0x005b, all -> 0x006d }
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch:{ Exception -> 0x005b, all -> 0x006d }
            if (r1 != 0) goto L_0x0018
            if (r1 == 0) goto L_0x0016
            r1.close()
        L_0x0016:
            r0 = r6
        L_0x0017:
            return r0
        L_0x0018:
            java.lang.String r0 = "support_api"
            int r2 = r1.getColumnIndex(r0)     // Catch:{ Exception -> 0x007d }
            java.lang.String r0 = "package"
            int r3 = r1.getColumnIndex(r0)     // Catch:{ Exception -> 0x007d }
            boolean r0 = r1.moveToFirst()     // Catch:{ Exception -> 0x007d }
            if (r0 == 0) goto L_0x0075
            r0 = -1
            java.lang.String r2 = r1.getString(r2)     // Catch:{ Exception -> 0x007d }
            int r0 = java.lang.Integer.parseInt(r2)     // Catch:{ NumberFormatException -> 0x0055 }
            r2 = r0
        L_0x0034:
            java.lang.String r3 = r1.getString(r3)     // Catch:{ Exception -> 0x007d }
            boolean r0 = android.text.TextUtils.isEmpty(r3)     // Catch:{ Exception -> 0x007d }
            if (r0 != 0) goto L_0x0075
            boolean r0 = com.sina.weibo.sdk.a.a(r8, r3)     // Catch:{ Exception -> 0x007d }
            if (r0 == 0) goto L_0x0075
            com.sina.weibo.sdk.b$a r0 = new com.sina.weibo.sdk.b$a     // Catch:{ Exception -> 0x007d }
            r0.<init>()     // Catch:{ Exception -> 0x007d }
            r0.a(r3)     // Catch:{ Exception -> 0x007d }
            r0.a(r2)     // Catch:{ Exception -> 0x007d }
            if (r1 == 0) goto L_0x0017
            r1.close()
            goto L_0x0017
        L_0x0055:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)     // Catch:{ Exception -> 0x007d }
            r2 = r0
            goto L_0x0034
        L_0x005b:
            r0 = move-exception
            r1 = r6
        L_0x005d:
            java.lang.String r2 = a     // Catch:{ all -> 0x007b }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x007b }
            com.sina.weibo.sdk.utils.c.c(r2, r0)     // Catch:{ all -> 0x007b }
            if (r1 == 0) goto L_0x006b
            r1.close()
        L_0x006b:
            r0 = r6
            goto L_0x0017
        L_0x006d:
            r0 = move-exception
            r1 = r6
        L_0x006f:
            if (r1 == 0) goto L_0x0074
            r1.close()
        L_0x0074:
            throw r0
        L_0x0075:
            if (r1 == 0) goto L_0x006b
            r1.close()
            goto L_0x006b
        L_0x007b:
            r0 = move-exception
            goto L_0x006f
        L_0x007d:
            r0 = move-exception
            goto L_0x005d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.b.c(android.content.Context):com.sina.weibo.sdk.b$a");
    }

    private a d(Context context) {
        Intent intent = new Intent("com.sina.weibo.action.sdkidentity");
        intent.addCategory("android.intent.category.DEFAULT");
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            return null;
        }
        a aVar = null;
        for (ResolveInfo resolveInfo : queryIntentServices) {
            if (!(resolveInfo.serviceInfo == null || resolveInfo.serviceInfo.applicationInfo == null || TextUtils.isEmpty(resolveInfo.serviceInfo.applicationInfo.packageName))) {
                a a2 = a(resolveInfo.serviceInfo.applicationInfo.packageName);
                if (a2 != null) {
                    if (aVar == null) {
                        aVar = a2;
                    } else if (aVar.b() < a2.b()) {
                        aVar = a2;
                    }
                }
            }
        }
        return aVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x00af A[SYNTHETIC, Splitter:B:40:0x00af] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00cd A[SYNTHETIC, Splitter:B:49:0x00cd] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00eb A[SYNTHETIC, Splitter:B:58:0x00eb] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0101 A[SYNTHETIC, Splitter:B:65:0x0101] */
    /* JADX WARNING: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:55:0x00e0=Splitter:B:55:0x00e0, B:46:0x00c2=Splitter:B:46:0x00c2, B:37:0x00a4=Splitter:B:37:0x00a4, B:20:0x005a=Splitter:B:20:0x005a} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.sina.weibo.sdk.b.a a(java.lang.String r9) {
        /*
            r8 = this;
            r7 = -1
            r0 = 0
            boolean r1 = android.text.TextUtils.isEmpty(r9)
            if (r1 == 0) goto L_0x0009
        L_0x0008:
            return r0
        L_0x0009:
            android.content.Context r1 = r8.d     // Catch:{ NameNotFoundException -> 0x0118, IOException -> 0x00a2, JSONException -> 0x00c0, Exception -> 0x00de, all -> 0x00fc }
            r2 = 2
            android.content.Context r1 = r1.createPackageContext(r9, r2)     // Catch:{ NameNotFoundException -> 0x0118, IOException -> 0x00a2, JSONException -> 0x00c0, Exception -> 0x00de, all -> 0x00fc }
            r2 = 4096(0x1000, float:5.74E-42)
            byte[] r3 = new byte[r2]     // Catch:{ NameNotFoundException -> 0x0118, IOException -> 0x00a2, JSONException -> 0x00c0, Exception -> 0x00de, all -> 0x00fc }
            android.content.res.AssetManager r1 = r1.getAssets()     // Catch:{ NameNotFoundException -> 0x0118, IOException -> 0x00a2, JSONException -> 0x00c0, Exception -> 0x00de, all -> 0x00fc }
            java.lang.String r2 = "weibo_for_sdk.json"
            java.io.InputStream r2 = r1.open(r2)     // Catch:{ NameNotFoundException -> 0x0118, IOException -> 0x00a2, JSONException -> 0x00c0, Exception -> 0x00de, all -> 0x00fc }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            r1.<init>()     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
        L_0x0023:
            r4 = 0
            r5 = 4096(0x1000, float:5.74E-42)
            int r4 = r2.read(r3, r4, r5)     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            if (r4 != r7) goto L_0x004f
            java.lang.String r3 = r1.toString()     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            if (r3 != 0) goto L_0x003e
            android.content.Context r3 = r8.d     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            boolean r3 = com.sina.weibo.sdk.a.a(r3, r9)     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            if (r3 != 0) goto L_0x0074
        L_0x003e:
            if (r2 == 0) goto L_0x0008
            r2.close()     // Catch:{ IOException -> 0x0044 }
            goto L_0x0008
        L_0x0044:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r1 = r1.getMessage()
            com.sina.weibo.sdk.utils.c.c(r2, r1)
            goto L_0x0008
        L_0x004f:
            java.lang.String r5 = new java.lang.String     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            r6 = 0
            r5.<init>(r3, r6, r4)     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            r1.append(r5)     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            goto L_0x0023
        L_0x0059:
            r1 = move-exception
        L_0x005a:
            java.lang.String r3 = a     // Catch:{ all -> 0x0110 }
            java.lang.String r1 = r1.getMessage()     // Catch:{ all -> 0x0110 }
            com.sina.weibo.sdk.utils.c.c(r3, r1)     // Catch:{ all -> 0x0110 }
            if (r2 == 0) goto L_0x0008
            r2.close()     // Catch:{ IOException -> 0x0069 }
            goto L_0x0008
        L_0x0069:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r1 = r1.getMessage()
            com.sina.weibo.sdk.utils.c.c(r2, r1)
            goto L_0x0008
        L_0x0074:
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            java.lang.String r1 = r1.toString()     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            r3.<init>(r1)     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            java.lang.String r1 = "support_api"
            r4 = -1
            int r3 = r3.optInt(r1, r4)     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            com.sina.weibo.sdk.b$a r1 = new com.sina.weibo.sdk.b$a     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            r1.<init>()     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            r1.a(r9)     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            r1.a(r3)     // Catch:{ NameNotFoundException -> 0x0059, IOException -> 0x0116, JSONException -> 0x0114, Exception -> 0x0112 }
            if (r2 == 0) goto L_0x0094
            r2.close()     // Catch:{ IOException -> 0x0097 }
        L_0x0094:
            r0 = r1
            goto L_0x0008
        L_0x0097:
            r0 = move-exception
            java.lang.String r2 = a
            java.lang.String r0 = r0.getMessage()
            com.sina.weibo.sdk.utils.c.c(r2, r0)
            goto L_0x0094
        L_0x00a2:
            r1 = move-exception
            r2 = r0
        L_0x00a4:
            java.lang.String r3 = a     // Catch:{ all -> 0x0110 }
            java.lang.String r1 = r1.getMessage()     // Catch:{ all -> 0x0110 }
            com.sina.weibo.sdk.utils.c.c(r3, r1)     // Catch:{ all -> 0x0110 }
            if (r2 == 0) goto L_0x0008
            r2.close()     // Catch:{ IOException -> 0x00b4 }
            goto L_0x0008
        L_0x00b4:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r1 = r1.getMessage()
            com.sina.weibo.sdk.utils.c.c(r2, r1)
            goto L_0x0008
        L_0x00c0:
            r1 = move-exception
            r2 = r0
        L_0x00c2:
            java.lang.String r3 = a     // Catch:{ all -> 0x0110 }
            java.lang.String r1 = r1.getMessage()     // Catch:{ all -> 0x0110 }
            com.sina.weibo.sdk.utils.c.c(r3, r1)     // Catch:{ all -> 0x0110 }
            if (r2 == 0) goto L_0x0008
            r2.close()     // Catch:{ IOException -> 0x00d2 }
            goto L_0x0008
        L_0x00d2:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r1 = r1.getMessage()
            com.sina.weibo.sdk.utils.c.c(r2, r1)
            goto L_0x0008
        L_0x00de:
            r1 = move-exception
            r2 = r0
        L_0x00e0:
            java.lang.String r3 = a     // Catch:{ all -> 0x0110 }
            java.lang.String r1 = r1.getMessage()     // Catch:{ all -> 0x0110 }
            com.sina.weibo.sdk.utils.c.c(r3, r1)     // Catch:{ all -> 0x0110 }
            if (r2 == 0) goto L_0x0008
            r2.close()     // Catch:{ IOException -> 0x00f0 }
            goto L_0x0008
        L_0x00f0:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r1 = r1.getMessage()
            com.sina.weibo.sdk.utils.c.c(r2, r1)
            goto L_0x0008
        L_0x00fc:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x00ff:
            if (r2 == 0) goto L_0x0104
            r2.close()     // Catch:{ IOException -> 0x0105 }
        L_0x0104:
            throw r0
        L_0x0105:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r1 = r1.getMessage()
            com.sina.weibo.sdk.utils.c.c(r2, r1)
            goto L_0x0104
        L_0x0110:
            r0 = move-exception
            goto L_0x00ff
        L_0x0112:
            r1 = move-exception
            goto L_0x00e0
        L_0x0114:
            r1 = move-exception
            goto L_0x00c2
        L_0x0116:
            r1 = move-exception
            goto L_0x00a4
        L_0x0118:
            r1 = move-exception
            r2 = r0
            goto L_0x005a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.b.a(java.lang.String):com.sina.weibo.sdk.b$a");
    }
}
