package com.xiaomi.push.service;

import android.os.Process;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.network.Host;
import com.xiaomi.push.protobuf.a.C0069a;
import com.xiaomi.stats.f;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public class ag {
    private static final Pattern a = Pattern.compile("([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})");
    private static long b = 0;
    private static ThreadPoolExecutor c = new ThreadPoolExecutor(1, 1, 20, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public static void a() {
        long currentTimeMillis = System.currentTimeMillis();
        if ((c.getActiveCount() <= 0 || currentTimeMillis - b >= 1800000) && f.a().c()) {
            C0069a d = av.a().d();
            if (d != null && d.m() > 0) {
                b = currentTimeMillis;
                a(d.l(), true);
            }
        }
    }

    public static void a(List<String> list, boolean z) {
        c.execute(new ah(list, z));
    }

    public static void b() {
        String c2 = c("/proc/self/net/tcp");
        if (!TextUtils.isEmpty(c2)) {
            b.a("dump tcp for uid = " + Process.myUid());
            b.a(c2);
        }
        String c3 = c("/proc/self/net/tcp6");
        if (!TextUtils.isEmpty(c3)) {
            b.a("dump tcp6 for uid = " + Process.myUid());
            b.a(c3);
        }
    }

    /* access modifiers changed from: private */
    public static boolean b(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            b.a("ConnectivityTest: begin to connect to " + str);
            Socket socket = new Socket();
            socket.connect(Host.b(str, 5222), 5000);
            socket.setTcpNoDelay(true);
            b.a("ConnectivityTest: connect to " + str + " in " + (System.currentTimeMillis() - currentTimeMillis));
            socket.close();
            return true;
        } catch (Throwable th) {
            b.d("ConnectivityTest: could not connect to:" + str + " exception: " + th.getClass().getSimpleName() + " description: " + th.getMessage());
            return false;
        }
    }

    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r1v1 */
    /* JADX WARNING: type inference failed for: r1v2, types: [java.io.Reader] */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r1v5, types: [java.io.Reader] */
    /* JADX WARNING: type inference failed for: r1v7 */
    /* JADX WARNING: type inference failed for: r1v8 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String c(java.lang.String r6) {
        /*
            r0 = 0
            java.io.File r2 = new java.io.File
            r2.<init>(r6)
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ Exception -> 0x003b, all -> 0x0031 }
            java.io.FileReader r3 = new java.io.FileReader     // Catch:{ Exception -> 0x003b, all -> 0x0031 }
            r3.<init>(r2)     // Catch:{ Exception -> 0x003b, all -> 0x0031 }
            r1.<init>(r3)     // Catch:{ Exception -> 0x003b, all -> 0x0031 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0024, all -> 0x0039 }
            r2.<init>()     // Catch:{ Exception -> 0x0024, all -> 0x0039 }
        L_0x0015:
            java.lang.String r3 = r1.readLine()     // Catch:{ Exception -> 0x0024, all -> 0x0039 }
            if (r3 == 0) goto L_0x0029
            java.lang.String r4 = "\n"
            r2.append(r4)     // Catch:{ Exception -> 0x0024, all -> 0x0039 }
            r2.append(r3)     // Catch:{ Exception -> 0x0024, all -> 0x0039 }
            goto L_0x0015
        L_0x0024:
            r2 = move-exception
        L_0x0025:
            com.xiaomi.channel.commonutils.file.a.a(r1)
        L_0x0028:
            return r0
        L_0x0029:
            java.lang.String r0 = r2.toString()     // Catch:{ Exception -> 0x0024, all -> 0x0039 }
            com.xiaomi.channel.commonutils.file.a.a(r1)
            goto L_0x0028
        L_0x0031:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L_0x0035:
            com.xiaomi.channel.commonutils.file.a.a(r1)
            throw r0
        L_0x0039:
            r0 = move-exception
            goto L_0x0035
        L_0x003b:
            r1 = move-exception
            r1 = r0
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.ag.c(java.lang.String):java.lang.String");
    }
}
