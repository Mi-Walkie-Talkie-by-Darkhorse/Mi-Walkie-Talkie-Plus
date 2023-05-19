package com.xiaomi.push.service;

import android.os.Process;
import android.text.TextUtils;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5968aa;
import com.xiaomi.push.C6060cs;
import com.xiaomi.push.C6097dv;
import com.xiaomi.push.C6167fu;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* renamed from: com.xiaomi.push.service.am */
/* loaded from: classes2.dex */
public class C6356am {

    /* renamed from: a */
    private static final Pattern f22975a = Pattern.compile("([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})");

    /* renamed from: a */
    private static long f22973a = 0;

    /* renamed from: a */
    private static ThreadPoolExecutor f22974a = new ThreadPoolExecutor(1, 1, 20, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: a */
    private static String m1632a(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        try {
            bufferedReader = new BufferedReader(new FileReader(new File(str)));
        } catch (Exception unused) {
            bufferedReader = null;
        } catch (Throwable th2) {
            bufferedReader = null;
            th = th2;
        }
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    String sb2 = sb.toString();
                    C5968aa.m3810a(bufferedReader);
                    return sb2;
                }
                sb.append("\n");
                sb.append(readLine);
            }
        } catch (Exception unused2) {
            C5968aa.m3810a(bufferedReader);
            return null;
        } catch (Throwable th3) {
            th = th3;
            C5968aa.m3810a(bufferedReader);
            throw th;
        }
    }

    /* renamed from: a */
    public static void m1633a() {
        C6097dv.C6098a m1448a;
        long currentTimeMillis = System.currentTimeMillis();
        if ((f22974a.getActiveCount() <= 0 || currentTimeMillis - f22973a >= 1800000) && C6167fu.m2865a().m2863a() && (m1448a = C6404bs.m1447a().m1448a()) != null && m1448a.m3324e() > 0) {
            f22973a = currentTimeMillis;
            m1630a(m1448a.m3338a(), true);
        }
    }

    /* renamed from: a */
    public static void m1630a(List<String> list, boolean z) {
        f22974a.execute(new RunnableC6357an(list, z));
    }

    /* renamed from: b */
    public static void m1629b() {
        String m1632a = m1632a("/proc/self/net/tcp");
        if (!TextUtils.isEmpty(m1632a)) {
            AbstractC5876b.m4147a("dump tcp for uid = " + Process.myUid());
            AbstractC5876b.m4147a(m1632a);
        }
        String m1632a2 = m1632a("/proc/self/net/tcp6");
        if (TextUtils.isEmpty(m1632a2)) {
            return;
        }
        AbstractC5876b.m4147a("dump tcp6 for uid = " + Process.myUid());
        AbstractC5876b.m4147a(m1632a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m1628b(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            AbstractC5876b.m4147a("ConnectivityTest: begin to connect to " + str);
            Socket socket = new Socket();
            socket.connect(C6060cs.m3460a(str, 5222), BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT);
            socket.setTcpNoDelay(true);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            AbstractC5876b.m4147a("ConnectivityTest: connect to " + str + " in " + currentTimeMillis2);
            socket.close();
            return true;
        } catch (Throwable th) {
            AbstractC5876b.m4138d("ConnectivityTest: could not connect to:" + str + " exception: " + th.getClass().getSimpleName() + " description: " + th.getMessage());
            return false;
        }
    }
}
