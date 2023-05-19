package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5968aa;
import com.xiaomi.push.C5972ae;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6020bl;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6210h;
import com.xiaomi.push.C6241hz;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6312q;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.xiaomi.push.service.bx */
/* loaded from: classes2.dex */
public class C6411bx {

    /* renamed from: a */
    public static final Object f23143a = new Object();

    /* renamed from: a */
    public static void m1412a(Context context, C6241hz c6241hz) {
        if (C6410bw.m1416a(c6241hz.m2527e())) {
            C5978ak.m3784a(context).m3775a(new RunnableC6412by(context, c6241hz));
        }
    }

    /* renamed from: a */
    public static byte[] m1413a(Context context) {
        String m1819a = C6312q.m1822a(context).m1819a("mipush", "td_key", "");
        if (TextUtils.isEmpty(m1819a)) {
            m1819a = C6023bo.m3621a(20);
            C6312q.m1822a(context).m1818a("mipush", "td_key", m1819a);
        }
        return m1411a(m1819a);
    }

    /* renamed from: a */
    private static byte[] m1411a(String str) {
        byte[] copyOf = Arrays.copyOf(C6020bl.m3632a(str), 16);
        copyOf[0] = 68;
        copyOf[15] = 84;
        return copyOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.Closeable] */
    /* renamed from: c */
    public static void m1409c(Context context, C6241hz c6241hz) {
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2;
        String str;
        String str2;
        BufferedOutputStream m1413a = m1413a(context);
        try {
            try {
                byte[] m2665b = C6210h.m2665b(m1413a, C6278jf.m1933a(c6241hz));
                if (m2665b != null && m2665b.length >= 1) {
                    if (m2665b.length > 10240) {
                        str2 = "TinyData write to cache file failed case too much data content item:" + c6241hz.m2530d() + "  ts:" + System.currentTimeMillis();
                        AbstractC5876b.m4147a(str2);
                        C5968aa.m3810a((Closeable) null);
                        C5968aa.m3810a((Closeable) null);
                    }
                    BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(new FileOutputStream(new File(context.getFilesDir(), "tiny_data.data"), true));
                    try {
                        bufferedOutputStream3.write(C5972ae.m3793a(m2665b.length));
                        bufferedOutputStream3.write(m2665b);
                        bufferedOutputStream3.flush();
                        C5968aa.m3810a((Closeable) null);
                        C5968aa.m3810a(bufferedOutputStream3);
                        return;
                    } catch (IOException e) {
                        bufferedOutputStream2 = bufferedOutputStream3;
                        e = e;
                        str = "TinyData write to cache file failed cause io exception item:" + c6241hz.m2530d();
                        m1413a = bufferedOutputStream2;
                        AbstractC5876b.m4144a(str, e);
                        C5968aa.m3810a((Closeable) null);
                        C5968aa.m3810a((Closeable) m1413a);
                        return;
                    } catch (Exception e2) {
                        bufferedOutputStream = bufferedOutputStream3;
                        e = e2;
                        str = "TinyData write to cache file  failed item:" + c6241hz.m2530d();
                        m1413a = bufferedOutputStream;
                        AbstractC5876b.m4144a(str, e);
                        C5968aa.m3810a((Closeable) null);
                        C5968aa.m3810a((Closeable) m1413a);
                        return;
                    } catch (Throwable th) {
                        m1413a = bufferedOutputStream3;
                        th = th;
                        C5968aa.m3810a((Closeable) null);
                        C5968aa.m3810a(m1413a);
                        throw th;
                    }
                }
                str2 = "TinyData write to cache file failed case encryption fail item:" + c6241hz.m2530d() + "  ts:" + System.currentTimeMillis();
                AbstractC5876b.m4147a(str2);
                C5968aa.m3810a((Closeable) null);
                C5968aa.m3810a((Closeable) null);
            } catch (IOException e3) {
                e = e3;
                bufferedOutputStream2 = null;
            } catch (Exception e4) {
                e = e4;
                bufferedOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                m1413a = null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
