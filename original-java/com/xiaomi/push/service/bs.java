package com.xiaomi.push.service;

import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.an;
import com.xiaomi.push.c;
import com.xiaomi.push.dv;
import com.xiaomi.push.dw;
import com.xiaomi.push.hm;
import com.xiaomi.push.i;
import com.xiaomi.push.u;
import java.io.BufferedOutputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class bs {

    /* renamed from: a  reason: collision with root package name */
    private static bs f9298a = new bs();

    /* renamed from: a  reason: collision with other field name */
    private static String f964a;

    /* renamed from: a  reason: collision with other field name */
    private an.b f965a;

    /* renamed from: a  reason: collision with other field name */
    private dv.a f966a;

    /* renamed from: a  reason: collision with other field name */
    private List<a> f967a = new ArrayList();

    /* loaded from: classes2.dex */
    public static abstract class a {
        public void a(dv.a aVar) {
        }

        public void a(dw.b bVar) {
        }
    }

    private bs() {
    }

    public static bs a() {
        return f9298a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static synchronized String m625a() {
        String str;
        synchronized (bs.class) {
            if (f964a == null) {
                SharedPreferences sharedPreferences = u.m658a().getSharedPreferences("XMPushServiceConfig", 0);
                String string = sharedPreferences.getString("DeviceUUID", null);
                f964a = string;
                if (string == null) {
                    String a2 = i.a(u.m658a(), false);
                    f964a = a2;
                    if (a2 != null) {
                        sharedPreferences.edit().putString("DeviceUUID", f964a).commit();
                    }
                }
            }
            str = f964a;
        }
        return str;
    }

    private void b() {
        if (this.f966a == null) {
            d();
        }
    }

    private void c() {
        if (this.f965a == null) {
            bt btVar = new bt(this);
            this.f965a = btVar;
            hm.a(btVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void d() {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.xiaomi.push.u.m658a()     // Catch: all -> 0x0023, Exception -> 0x0027
            java.lang.String r2 = "XMCloudCfg"
            java.io.FileInputStream r1 = r1.openFileInput(r2)     // Catch: all -> 0x0023, Exception -> 0x0027
            java.io.BufferedInputStream r2 = new java.io.BufferedInputStream     // Catch: all -> 0x0023, Exception -> 0x0027
            r2.<init>(r1)     // Catch: all -> 0x0023, Exception -> 0x0027
            com.xiaomi.push.b r0 = com.xiaomi.push.b.a(r2)     // Catch: Exception -> 0x0021, all -> 0x004f
            com.xiaomi.push.dv$a r0 = com.xiaomi.push.dv.a.b(r0)     // Catch: Exception -> 0x0021, all -> 0x004f
            r4.f966a = r0     // Catch: Exception -> 0x0021, all -> 0x004f
            r2.close()     // Catch: Exception -> 0x0021, all -> 0x004f
        L_0x001d:
            com.xiaomi.push.aa.a(r2)
            goto L_0x0043
        L_0x0021:
            r0 = move-exception
            goto L_0x002a
        L_0x0023:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x0050
        L_0x0027:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x002a:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: all -> 0x004f
            r1.<init>()     // Catch: all -> 0x004f
            java.lang.String r3 = "load config failure: "
            r1.append(r3)     // Catch: all -> 0x004f
            java.lang.String r0 = r0.getMessage()     // Catch: all -> 0x004f
            r1.append(r0)     // Catch: all -> 0x004f
            java.lang.String r0 = r1.toString()     // Catch: all -> 0x004f
            com.xiaomi.channel.commonutils.logger.b.m1a(r0)     // Catch: all -> 0x004f
            goto L_0x001d
        L_0x0043:
            com.xiaomi.push.dv$a r0 = r4.f966a
            if (r0 != 0) goto L_0x004e
            com.xiaomi.push.dv$a r0 = new com.xiaomi.push.dv$a
            r0.<init>()
            r4.f966a = r0
        L_0x004e:
            return
        L_0x004f:
            r0 = move-exception
        L_0x0050:
            com.xiaomi.push.aa.a(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.bs.d():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            if (this.f966a != null) {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(u.m658a().openFileOutput("XMCloudCfg", 0));
                c a2 = c.a(bufferedOutputStream);
                this.f966a.a(a2);
                a2.m114a();
                bufferedOutputStream.close();
            }
        } catch (Exception e) {
            b.m1a("save config failure: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public int m626a() {
        b();
        dv.a aVar = this.f966a;
        if (aVar != null) {
            return aVar.c();
        }
        return 0;
    }

    /* renamed from: a  reason: collision with other method in class */
    public dv.a m627a() {
        b();
        return this.f966a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public synchronized void m628a() {
        this.f967a.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(dw.b bVar) {
        a[] aVarArr;
        if (bVar.m189d() && bVar.d() > m626a()) {
            c();
        }
        synchronized (this) {
            aVarArr = (a[]) this.f967a.toArray(new a[this.f967a.size()]);
        }
        for (a aVar : aVarArr) {
            aVar.a(bVar);
        }
    }

    public synchronized void a(a aVar) {
        this.f967a.add(aVar);
    }
}
