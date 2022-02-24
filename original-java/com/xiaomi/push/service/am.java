package com.xiaomi.push.service;

import android.os.Process;
import android.text.TextUtils;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.aa;
import com.xiaomi.push.cs;
import com.xiaomi.push.dv;
import com.xiaomi.push.fu;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class am {

    /* renamed from: a  reason: collision with other field name */
    private static final Pattern f919a = Pattern.compile("([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})");

    /* renamed from: a  reason: collision with root package name */
    private static long f9241a = 0;

    /* renamed from: a  reason: collision with other field name */
    private static ThreadPoolExecutor f918a = new ThreadPoolExecutor(1, 1, 20, TimeUnit.SECONDS, new LinkedBlockingQueue());

    private static String a(String str) {
        BufferedReader bufferedReader;
        Throwable th;
        try {
            bufferedReader = new BufferedReader(new FileReader(new File(str)));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append("\n");
                        sb.append(readLine);
                    } else {
                        String sb2 = sb.toString();
                        aa.a(bufferedReader);
                        return sb2;
                    }
                }
            } catch (Exception unused) {
                aa.a(bufferedReader);
                return null;
            } catch (Throwable th2) {
                th = th2;
                aa.a(bufferedReader);
                throw th;
            }
        } catch (Exception unused2) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }

    public static void a() {
        dv.a a2;
        long currentTimeMillis = System.currentTimeMillis();
        if ((f918a.getActiveCount() <= 0 || currentTimeMillis - f9241a >= 1800000) && fu.m284a().m289a() && (a2 = bs.a().m627a()) != null && a2.e() > 0) {
            f9241a = currentTimeMillis;
            a(a2.mo223a(), true);
        }
    }

    public static void a(List<String> list, boolean z) {
        f918a.execute(new an(list, z));
    }

    public static void b() {
        String a2 = a("/proc/self/net/tcp");
        if (!TextUtils.isEmpty(a2)) {
            b.m1a("dump tcp for uid = " + Process.myUid());
            b.m1a(a2);
        }
        String a3 = a("/proc/self/net/tcp6");
        if (!TextUtils.isEmpty(a3)) {
            b.m1a("dump tcp6 for uid = " + Process.myUid());
            b.m1a(a3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            b.m1a("ConnectivityTest: begin to connect to " + str);
            Socket socket = new Socket();
            socket.connect(cs.m147a(str, 5222), BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT);
            socket.setTcpNoDelay(true);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            b.m1a("ConnectivityTest: connect to " + str + " in " + currentTimeMillis2);
            socket.close();
            return true;
        } catch (Throwable th) {
            b.d("ConnectivityTest: could not connect to:" + str + " exception: " + th.getClass().getSimpleName() + " description: " + th.getMessage());
            return false;
        }
    }
}
