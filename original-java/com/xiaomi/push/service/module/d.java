package com.xiaomi.push.service.module;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.misc.l;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.push.service.aj;
import com.xiaomi.xmpush.thrift.f;
import dalvik.system.DexClassLoader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class d {
    private static d a = null;
    private Map<String, c> b = new HashMap();
    private List<b> c = new ArrayList();
    private Context d;
    private SharedPreferences e;
    private boolean f;

    private static class a implements Runnable {
        private String a = null;
        private String b = null;
        private String c;
        private boolean d;
        private Context e;
        /* access modifiers changed from: private */
        public boolean f = false;

        public a(Context context, String str, String str2, String str3, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = z;
            this.e = context.getApplicationContext();
        }

        /* JADX WARNING: Unknown top exception splitter block from list: {B:25:0x00b1=Splitter:B:25:0x00b1, B:33:0x00c6=Splitter:B:33:0x00c6} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r5 = this;
                r1 = 0
                android.content.Context r0 = r5.e
                boolean r0 = com.xiaomi.channel.commonutils.network.d.f(r0)
                if (r0 != 0) goto L_0x000a
            L_0x0009:
                return
            L_0x000a:
                java.net.URL r0 = new java.net.URL     // Catch:{ Exception -> 0x00b6 }
                java.lang.String r2 = r5.a     // Catch:{ Exception -> 0x00b6 }
                r0.<init>(r2)     // Catch:{ Exception -> 0x00b6 }
                java.net.URLConnection r0 = r0.openConnection()     // Catch:{ Exception -> 0x00b6 }
                java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ Exception -> 0x00b6 }
                java.lang.String r2 = "GET"
                r0.setRequestMethod(r2)     // Catch:{ Exception -> 0x00b6 }
                r2 = 5000(0x1388, float:7.006E-42)
                r0.setConnectTimeout(r2)     // Catch:{ Exception -> 0x00b6 }
                r0.connect()     // Catch:{ Exception -> 0x00b6 }
                int r2 = r0.getResponseCode()     // Catch:{ Exception -> 0x00b6 }
                r3 = 200(0xc8, float:2.8E-43)
                if (r2 != r3) goto L_0x0009
                java.io.InputStream r0 = r0.getInputStream()     // Catch:{ Exception -> 0x00b6 }
                byte[] r0 = com.xiaomi.channel.commonutils.file.a.b(r0)     // Catch:{ Exception -> 0x00b6 }
                java.lang.String r2 = r5.b     // Catch:{ Exception -> 0x00b6 }
                boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch:{ Exception -> 0x00b6 }
                if (r2 != 0) goto L_0x0049
                java.lang.String r2 = com.xiaomi.channel.commonutils.string.d.a(r0)     // Catch:{ Exception -> 0x00b6 }
                java.lang.String r3 = r5.b     // Catch:{ Exception -> 0x00b6 }
                boolean r2 = r3.equalsIgnoreCase(r2)     // Catch:{ Exception -> 0x00b6 }
                if (r2 != 0) goto L_0x0049
                r0 = r1
            L_0x0049:
                if (r0 == 0) goto L_0x0009
                java.lang.String r2 = "download apk success."
                com.xiaomi.channel.commonutils.logger.b.b(r2)     // Catch:{ Exception -> 0x00b6 }
                java.io.File r3 = new java.io.File     // Catch:{ Exception -> 0x00c5 }
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00c5 }
                r2.<init>()     // Catch:{ Exception -> 0x00c5 }
                java.lang.String r4 = r5.c     // Catch:{ Exception -> 0x00c5 }
                java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ Exception -> 0x00c5 }
                java.lang.String r4 = ".tmp"
                java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ Exception -> 0x00c5 }
                java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x00c5 }
                r3.<init>(r2)     // Catch:{ Exception -> 0x00c5 }
                r3.delete()     // Catch:{ Exception -> 0x00c5 }
                java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x00c5 }
                r2.<init>(r3)     // Catch:{ Exception -> 0x00c5 }
                r2.write(r0)     // Catch:{ Exception -> 0x00d6, all -> 0x00d3 }
                r2.flush()     // Catch:{ Exception -> 0x00d6, all -> 0x00d3 }
                r2.close()     // Catch:{ Exception -> 0x00d6, all -> 0x00d3 }
                r0 = 0
                android.content.Context r2 = r5.e     // Catch:{ Exception -> 0x00c5 }
                java.lang.String r4 = r3.getPath()     // Catch:{ Exception -> 0x00c5 }
                android.content.pm.Signature[] r2 = com.xiaomi.channel.commonutils.android.b.e(r2, r4)     // Catch:{ Exception -> 0x00c5 }
                boolean r2 = com.xiaomi.channel.commonutils.android.d.a(r2)     // Catch:{ Exception -> 0x00c5 }
                if (r2 == 0) goto L_0x00bc
                java.lang.String r2 = "verify signature success"
                com.xiaomi.channel.commonutils.logger.b.b(r2)     // Catch:{ Exception -> 0x00c5 }
                java.io.File r2 = new java.io.File     // Catch:{ Exception -> 0x00c5 }
                java.lang.String r4 = r5.c     // Catch:{ Exception -> 0x00c5 }
                r2.<init>(r4)     // Catch:{ Exception -> 0x00c5 }
                r3.renameTo(r2)     // Catch:{ Exception -> 0x00c5 }
                r2 = 1
                r5.f = r2     // Catch:{ Exception -> 0x00c5 }
                boolean r2 = r5.d     // Catch:{ Exception -> 0x00c5 }
                if (r2 == 0) goto L_0x00b1
                android.content.Context r2 = r5.e     // Catch:{ Exception -> 0x00c5 }
                boolean r2 = com.xiaomi.channel.commonutils.android.b.b(r2)     // Catch:{ Exception -> 0x00c5 }
                if (r2 != 0) goto L_0x00b1
                int r2 = android.os.Process.myPid()     // Catch:{ Exception -> 0x00c5 }
                android.os.Process.killProcess(r2)     // Catch:{ Exception -> 0x00c5 }
            L_0x00b1:
                com.xiaomi.channel.commonutils.file.a.a(r0)     // Catch:{ Exception -> 0x00b6 }
                goto L_0x0009
            L_0x00b6:
                r0 = move-exception
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                goto L_0x0009
            L_0x00bc:
                java.lang.String r2 = "verify signature failed"
                com.xiaomi.channel.commonutils.logger.b.d(r2)     // Catch:{ Exception -> 0x00c5 }
                r3.delete()     // Catch:{ Exception -> 0x00c5 }
                goto L_0x00b1
            L_0x00c5:
                r0 = move-exception
            L_0x00c6:
                com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x00ce }
                com.xiaomi.channel.commonutils.file.a.a(r1)     // Catch:{ Exception -> 0x00b6 }
                goto L_0x0009
            L_0x00ce:
                r0 = move-exception
            L_0x00cf:
                com.xiaomi.channel.commonutils.file.a.a(r1)     // Catch:{ Exception -> 0x00b6 }
                throw r0     // Catch:{ Exception -> 0x00b6 }
            L_0x00d3:
                r0 = move-exception
                r1 = r2
                goto L_0x00cf
            L_0x00d6:
                r0 = move-exception
                r1 = r2
                goto L_0x00c6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.module.d.a.run():void");
        }
    }

    public interface b {
        void a(f fVar);
    }

    private d(Context context) {
        this.d = context.getApplicationContext();
        this.e = this.d.getSharedPreferences(MiPushClient.PREF_EXTRA, 0);
    }

    private c a(a aVar, DexClassLoader dexClassLoader) {
        if (dexClassLoader == null) {
            return null;
        }
        return new c(aVar.e(), aVar.f(), dexClassLoader, aVar.b(), aVar.a());
    }

    public static synchronized d a(Context context) {
        d dVar;
        synchronized (d.class) {
            if (a == null) {
                a = new d(context);
            }
            dVar = a;
        }
        return dVar;
    }

    private void a(e eVar, int i) {
        this.e.edit().putInt("plugin_version_" + eVar.b, i).commit();
    }

    private synchronized void a(f fVar) {
        for (b a2 : this.c) {
            a2.a(fVar);
        }
    }

    private int b(e eVar) {
        return this.e.getInt("plugin_version_" + eVar.b, 0);
    }

    private List<f> b() {
        ArrayList arrayList = new ArrayList();
        aj a2 = aj.a(this.d);
        f fVar = new f();
        fVar.a = e.MODULE_CDATA;
        fVar.b = a2.a(f.CollectionDataPluginVersion.a(), 0);
        fVar.c = a2.a(f.CollectionPluginDownloadUrl.a(), "");
        fVar.d = a2.a(f.CollectionPluginMd5.a(), "");
        fVar.e = a2.a(f.CollectionPluginForceStop.a(), false);
        arrayList.add(fVar);
        return arrayList;
    }

    public c a(e eVar) {
        l.a();
        if (eVar == null) {
            return null;
        }
        a();
        com.xiaomi.channel.commonutils.logger.b.b("loadModule " + eVar.b);
        String str = eVar.b;
        if (this.b.containsKey(str)) {
            return (c) this.b.get(str);
        }
        a aVar = new a(this.d, str);
        DexClassLoader c2 = aVar.c();
        if (c2 == null) {
            return null;
        }
        c a2 = a(aVar, c2);
        a2.a(this.d);
        this.b.put(str, a2);
        com.xiaomi.channel.commonutils.logger.b.b("module load success.");
        return a2;
    }

    public synchronized void a() {
        if (!this.f) {
            this.f = true;
            for (f fVar : b()) {
                if (b(fVar.a) < fVar.b && !TextUtils.isEmpty(fVar.c)) {
                    a aVar = new a(this.d, fVar.c, fVar.d, a.a(this.d, fVar.a.b), fVar.e);
                    aVar.run();
                    if (aVar.f) {
                        a(fVar.a, fVar.b);
                        a(fVar);
                    }
                }
            }
            this.f = false;
        }
    }
}
