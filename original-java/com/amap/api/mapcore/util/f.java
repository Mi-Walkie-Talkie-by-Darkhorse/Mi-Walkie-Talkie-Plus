package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.mapcore.util.fp.a;
import com.amap.api.mapcore.util.fp.a.C0007a;
import org.json.JSONObject;

/* compiled from: AuthTask */
public class f extends Thread {
    private Context a;
    private l b;

    public f(Context context, l lVar) {
        this.a = context;
        this.b = lVar;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r8 = this;
            r1 = 1
            r2 = 0
            boolean r0 = com.amap.api.maps.MapsInitializer.getNetWorkEnable()     // Catch:{ Throwable -> 0x0160 }
            if (r0 != 0) goto L_0x0009
        L_0x0008:
            return
        L_0x0009:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0160 }
            r0.<init>()     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r3 = "002"
            r0.append(r3)     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r3 = ";"
            r0.append(r3)     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r3 = "11K"
            r0.append(r3)     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r3 = ";"
            r0.append(r3)     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r3 = "001"
            r0.append(r3)     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r3 = ";"
            r0.append(r3)     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r3 = "14M"
            r0.append(r3)     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r3 = ";"
            r0.append(r3)     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r3 = "14L"
            r0.append(r3)     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x0160 }
            android.content.Context r3 = r8.a     // Catch:{ Throwable -> 0x0160 }
            com.amap.api.mapcore.util.fx r4 = com.amap.api.mapcore.util.ee.e()     // Catch:{ Throwable -> 0x0160 }
            r5 = 0
            com.amap.api.mapcore.util.fp$a r3 = com.amap.api.mapcore.util.fp.a(r3, r4, r0, r5)     // Catch:{ Throwable -> 0x0160 }
            int r0 = com.amap.api.mapcore.util.fp.a     // Catch:{ Throwable -> 0x0160 }
            if (r0 == r1) goto L_0x006c
            com.amap.api.mapcore.util.l r0 = r8.b     // Catch:{ Throwable -> 0x0160 }
            android.os.Handler r0 = r0.getMainHandler()     // Catch:{ Throwable -> 0x0160 }
            android.os.Message r0 = r0.obtainMessage()     // Catch:{ Throwable -> 0x0160 }
            r4 = 2
            r0.what = r4     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r4 = r3.a     // Catch:{ Throwable -> 0x0160 }
            if (r4 == 0) goto L_0x0063
            java.lang.String r4 = r3.a     // Catch:{ Throwable -> 0x0160 }
            r0.obj = r4     // Catch:{ Throwable -> 0x0160 }
        L_0x0063:
            com.amap.api.mapcore.util.l r4 = r8.b     // Catch:{ Throwable -> 0x0160 }
            android.os.Handler r4 = r4.getMainHandler()     // Catch:{ Throwable -> 0x0160 }
            r4.sendMessage(r0)     // Catch:{ Throwable -> 0x0160 }
        L_0x006c:
            boolean r0 = com.amap.api.maps.MapsInitializer.isDownloadCoordinateConvertLibrary()     // Catch:{ Throwable -> 0x0160 }
            if (r0 == 0) goto L_0x009b
            if (r3 == 0) goto L_0x009b
            com.amap.api.mapcore.util.fp$a$a r0 = r3.x     // Catch:{ Throwable -> 0x0160 }
            if (r0 == 0) goto L_0x0083
            com.amap.api.mapcore.util.fx r0 = com.amap.api.mapcore.util.ee.e()     // Catch:{ Throwable -> 0x0160 }
            com.amap.api.mapcore.util.fp$a$a r4 = r3.x     // Catch:{ Throwable -> 0x0160 }
            boolean r4 = r4.a     // Catch:{ Throwable -> 0x0160 }
            r0.a(r4)     // Catch:{ Throwable -> 0x0160 }
        L_0x0083:
            com.amap.api.mapcore.util.fp$a$c r0 = r3.z     // Catch:{ Throwable -> 0x0160 }
            if (r0 == 0) goto L_0x009b
            com.amap.api.mapcore.util.fw r0 = new com.amap.api.mapcore.util.fw     // Catch:{ Throwable -> 0x0160 }
            android.content.Context r4 = r8.a     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r5 = "3dmap"
            com.amap.api.mapcore.util.fp$a$c r6 = r3.z     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r6 = r6.a     // Catch:{ Throwable -> 0x0160 }
            com.amap.api.mapcore.util.fp$a$c r7 = r3.z     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r7 = r7.b     // Catch:{ Throwable -> 0x0160 }
            r0.<init>(r4, r5, r6, r7)     // Catch:{ Throwable -> 0x0160 }
            r0.a()     // Catch:{ Throwable -> 0x0160 }
        L_0x009b:
            r8.a(r3)     // Catch:{ Throwable -> 0x0160 }
            org.json.JSONObject r0 = r3.w     // Catch:{ Throwable -> 0x0170 }
            if (r0 == 0) goto L_0x00f2
            org.json.JSONObject r0 = r3.w     // Catch:{ Throwable -> 0x0170 }
            java.lang.String r4 = "14M"
            org.json.JSONObject r4 = r0.optJSONObject(r4)     // Catch:{ Throwable -> 0x0170 }
            if (r4 == 0) goto L_0x00f2
            java.lang.String r0 = "able"
            boolean r0 = r4.has(r0)     // Catch:{ Throwable -> 0x0170 }
            if (r0 == 0) goto L_0x00f2
            java.lang.String r0 = "able"
            java.lang.String r0 = r4.getString(r0)     // Catch:{ Throwable -> 0x0170 }
            r5 = 1
            boolean r0 = com.amap.api.mapcore.util.fp.a(r0, r5)     // Catch:{ Throwable -> 0x0170 }
            if (r0 == 0) goto L_0x00f2
            r0 = 2592000(0x278d00, float:3.632166E-39)
            java.lang.String r5 = "time"
            boolean r5 = r4.has(r5)     // Catch:{ Throwable -> 0x0170 }
            if (r5 == 0) goto L_0x00d8
            java.lang.String r0 = "time"
            int r0 = r4.getInt(r0)     // Catch:{ Throwable -> 0x0170 }
            r4 = 60
            int r0 = java.lang.Math.max(r4, r0)     // Catch:{ Throwable -> 0x0170 }
        L_0x00d8:
            com.amap.api.mapcore.util.dw r4 = com.amap.api.mapcore.util.dw.a()     // Catch:{ Throwable -> 0x0170 }
            long r4 = r4.b()     // Catch:{ Throwable -> 0x0170 }
            long r6 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x0170 }
            long r4 = r6 - r4
            int r0 = r0 * 1000
            long r6 = (long) r0     // Catch:{ Throwable -> 0x0170 }
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 <= 0) goto L_0x00f2
            com.amap.api.mapcore.util.l r0 = r8.b     // Catch:{ Throwable -> 0x0170 }
            r0.b()     // Catch:{ Throwable -> 0x0170 }
        L_0x00f2:
            org.json.JSONObject r0 = r3.w     // Catch:{ Throwable -> 0x0160 }
            if (r0 == 0) goto L_0x011b
            org.json.JSONObject r0 = r3.w     // Catch:{ Throwable -> 0x0178 }
            java.lang.String r4 = "14L"
            org.json.JSONObject r0 = r0.optJSONObject(r4)     // Catch:{ Throwable -> 0x0178 }
            if (r0 == 0) goto L_0x011b
            java.lang.String r4 = "able"
            boolean r4 = r0.has(r4)     // Catch:{ Throwable -> 0x0178 }
            if (r4 == 0) goto L_0x011b
            java.lang.String r4 = "able"
            java.lang.String r0 = r0.getString(r4)     // Catch:{ Throwable -> 0x0178 }
            r4 = 0
            boolean r0 = com.amap.api.mapcore.util.fp.a(r0, r4)     // Catch:{ Throwable -> 0x0178 }
            com.amap.api.mapcore.util.l r4 = r8.b     // Catch:{ Throwable -> 0x0178 }
            if (r0 != 0) goto L_0x0176
            r0 = r1
        L_0x0118:
            r4.i(r0)     // Catch:{ Throwable -> 0x0178 }
        L_0x011b:
            if (r3 == 0) goto L_0x014c
            com.amap.api.mapcore.util.fp$a$d r0 = r3.y     // Catch:{ Throwable -> 0x0160 }
            if (r0 == 0) goto L_0x014c
            com.amap.api.mapcore.util.fp$a$d r0 = r3.y     // Catch:{ Throwable -> 0x0160 }
            if (r0 == 0) goto L_0x0191
            java.lang.String r1 = r0.b     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r2 = r0.a     // Catch:{ Throwable -> 0x0160 }
            java.lang.String r0 = r0.c     // Catch:{ Throwable -> 0x0160 }
            boolean r3 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Throwable -> 0x0160 }
            if (r3 != 0) goto L_0x013d
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Throwable -> 0x0160 }
            if (r3 != 0) goto L_0x013d
            boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x0160 }
            if (r3 == 0) goto L_0x017d
        L_0x013d:
            com.amap.api.mapcore.util.gy r0 = new com.amap.api.mapcore.util.gy     // Catch:{ Throwable -> 0x0160 }
            android.content.Context r1 = r8.a     // Catch:{ Throwable -> 0x0160 }
            r2 = 0
            com.amap.api.mapcore.util.fx r3 = com.amap.api.mapcore.util.ee.e()     // Catch:{ Throwable -> 0x0160 }
            r0.<init>(r1, r2, r3)     // Catch:{ Throwable -> 0x0160 }
            r0.a()     // Catch:{ Throwable -> 0x0160 }
        L_0x014c:
            android.content.Context r0 = r8.a     // Catch:{ Throwable -> 0x0160 }
            com.amap.api.mapcore.util.fx r1 = com.amap.api.mapcore.util.ee.e()     // Catch:{ Throwable -> 0x0160 }
            com.amap.api.mapcore.util.gf.a(r0, r1)     // Catch:{ Throwable -> 0x0160 }
            r8.interrupt()     // Catch:{ Throwable -> 0x0160 }
            com.amap.api.mapcore.util.l r0 = r8.b     // Catch:{ Throwable -> 0x0160 }
            r1 = 0
            r0.setRunLowFrame(r1)     // Catch:{ Throwable -> 0x0160 }
            goto L_0x0008
        L_0x0160:
            r0 = move-exception
            r8.interrupt()
            java.lang.String r1 = "AMapDelegateImpGLSurfaceView"
            java.lang.String r2 = "mVerfy"
            com.amap.api.mapcore.util.gf.b(r0, r1, r2)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0008
        L_0x0170:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x0160 }
            goto L_0x00f2
        L_0x0176:
            r0 = r2
            goto L_0x0118
        L_0x0178:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x0160 }
            goto L_0x011b
        L_0x017d:
            com.amap.api.mapcore.util.gz r3 = new com.amap.api.mapcore.util.gz     // Catch:{ Throwable -> 0x0160 }
            r3.<init>(r2, r1, r0)     // Catch:{ Throwable -> 0x0160 }
            com.amap.api.mapcore.util.gy r0 = new com.amap.api.mapcore.util.gy     // Catch:{ Throwable -> 0x0160 }
            android.content.Context r1 = r8.a     // Catch:{ Throwable -> 0x0160 }
            com.amap.api.mapcore.util.fx r2 = com.amap.api.mapcore.util.ee.e()     // Catch:{ Throwable -> 0x0160 }
            r0.<init>(r1, r3, r2)     // Catch:{ Throwable -> 0x0160 }
            r0.a()     // Catch:{ Throwable -> 0x0160 }
            goto L_0x014c
        L_0x0191:
            com.amap.api.mapcore.util.gy r0 = new com.amap.api.mapcore.util.gy     // Catch:{ Throwable -> 0x0160 }
            android.content.Context r1 = r8.a     // Catch:{ Throwable -> 0x0160 }
            r2 = 0
            com.amap.api.mapcore.util.fx r3 = com.amap.api.mapcore.util.ee.e()     // Catch:{ Throwable -> 0x0160 }
            r0.<init>(r1, r2, r3)     // Catch:{ Throwable -> 0x0160 }
            r0.a()     // Catch:{ Throwable -> 0x0160 }
            goto L_0x014c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.f.run():void");
    }

    private void a(a aVar) {
        int i = 500;
        int i2 = 30;
        try {
            C0007a aVar2 = aVar.x;
            if (aVar2 != null) {
                ea.a(this.a, "maploc", "ue", Boolean.valueOf(aVar2.a));
                JSONObject jSONObject = aVar2.c;
                int optInt = jSONObject.optInt("fn", 1000);
                int optInt2 = jSONObject.optInt("mpn", 0);
                if (optInt2 <= 500) {
                    i = optInt2;
                }
                if (i >= 30) {
                    i2 = i;
                }
                ia.a(optInt, fp.a(jSONObject.optString("igu"), false));
                ea.a(this.a, "maploc", "opn", Integer.valueOf(i2));
            }
        } catch (Throwable th) {
            gf.b(th, "AuthUtil", "loadConfigData_uploadException");
        }
    }
}
