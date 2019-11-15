package com.xiaomi.push.service;

import android.content.SharedPreferences;
import com.google.protobuf.micro.c;
import com.xiaomi.channel.commonutils.android.j;
import com.xiaomi.channel.commonutils.misc.i.b;
import com.xiaomi.push.protobuf.a.C0069a;
import com.xiaomi.push.protobuf.b.C0070b;
import com.xiaomi.smack.util.e;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class av {
    private static String a;
    private static av e = new av();
    /* access modifiers changed from: private */
    public List<a> b = new ArrayList();
    /* access modifiers changed from: private */
    public C0069a c;
    /* access modifiers changed from: private */
    public b d;

    public static abstract class a {
        public void a(C0069a aVar) {
        }

        public void a(C0070b bVar) {
        }
    }

    private av() {
    }

    public static av a() {
        return e;
    }

    public static synchronized String e() {
        String str;
        synchronized (av.class) {
            if (a == null) {
                SharedPreferences sharedPreferences = j.a().getSharedPreferences("XMPushServiceConfig", 0);
                a = sharedPreferences.getString("DeviceUUID", null);
                if (a == null) {
                    a = j.b();
                    if (a != null) {
                        sharedPreferences.edit().putString("DeviceUUID", a).commit();
                    }
                }
            }
            str = a;
        }
        return str;
    }

    private void f() {
        if (this.c == null) {
            h();
        }
    }

    private void g() {
        if (this.d == null) {
            this.d = new aw(this);
            e.a(this.d);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void h() {
        /*
            r4 = this;
            r2 = 0
            android.content.Context r0 = com.xiaomi.channel.commonutils.android.j.a()     // Catch:{ Exception -> 0x002c, all -> 0x004c }
            java.lang.String r1 = "XMCloudCfg"
            java.io.FileInputStream r0 = r0.openFileInput(r1)     // Catch:{ Exception -> 0x002c, all -> 0x004c }
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch:{ Exception -> 0x002c, all -> 0x004c }
            r1.<init>(r0)     // Catch:{ Exception -> 0x002c, all -> 0x004c }
            com.google.protobuf.micro.b r0 = com.google.protobuf.micro.b.a(r1)     // Catch:{ Exception -> 0x0054 }
            com.xiaomi.push.protobuf.a$a r0 = com.xiaomi.push.protobuf.a.C0069a.c(r0)     // Catch:{ Exception -> 0x0054 }
            r4.c = r0     // Catch:{ Exception -> 0x0054 }
            r1.close()     // Catch:{ Exception -> 0x0054 }
            com.xiaomi.channel.commonutils.file.a.a(r1)
        L_0x0020:
            com.xiaomi.push.protobuf.a$a r0 = r4.c
            if (r0 != 0) goto L_0x002b
            com.xiaomi.push.protobuf.a$a r0 = new com.xiaomi.push.protobuf.a$a
            r0.<init>()
            r4.c = r0
        L_0x002b:
            return
        L_0x002c:
            r0 = move-exception
            r1 = r2
        L_0x002e:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0052 }
            r2.<init>()     // Catch:{ all -> 0x0052 }
            java.lang.String r3 = "load config failure: "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x0052 }
            java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x0052 }
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch:{ all -> 0x0052 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0052 }
            com.xiaomi.channel.commonutils.logger.b.a(r0)     // Catch:{ all -> 0x0052 }
            com.xiaomi.channel.commonutils.file.a.a(r1)
            goto L_0x0020
        L_0x004c:
            r0 = move-exception
            r1 = r2
        L_0x004e:
            com.xiaomi.channel.commonutils.file.a.a(r1)
            throw r0
        L_0x0052:
            r0 = move-exception
            goto L_0x004e
        L_0x0054:
            r0 = move-exception
            goto L_0x002e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.av.h():void");
    }

    /* access modifiers changed from: private */
    public void i() {
        try {
            if (this.c != null) {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(j.a().openFileOutput("XMCloudCfg", 0));
                c a2 = c.a((OutputStream) bufferedOutputStream);
                this.c.a(a2);
                a2.a();
                bufferedOutputStream.close();
            }
        } catch (Exception e2) {
            com.xiaomi.channel.commonutils.logger.b.a("save config failure: " + e2.getMessage());
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(C0070b bVar) {
        a[] aVarArr;
        if (bVar.i() && bVar.h() > c()) {
            g();
        }
        synchronized (this) {
            aVarArr = (a[]) this.b.toArray(new a[this.b.size()]);
        }
        for (a a2 : aVarArr) {
            a2.a(bVar);
        }
    }

    public synchronized void a(a aVar) {
        this.b.add(aVar);
    }

    /* access modifiers changed from: 0000 */
    public synchronized void b() {
        this.b.clear();
    }

    /* access modifiers changed from: 0000 */
    public int c() {
        f();
        if (this.c != null) {
            return this.c.d();
        }
        return 0;
    }

    public C0069a d() {
        f();
        return this.c;
    }
}
