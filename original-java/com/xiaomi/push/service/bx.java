package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.aa;
import com.xiaomi.push.ae;
import com.xiaomi.push.ak;
import com.xiaomi.push.bl;
import com.xiaomi.push.bo;
import com.xiaomi.push.h;
import com.xiaomi.push.hz;
import com.xiaomi.push.jf;
import com.xiaomi.push.q;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class bx {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f9304a = new Object();

    public static void a(Context context, hz hzVar) {
        if (bw.a(hzVar.e())) {
            ak.a(context).a(new by(context, hzVar));
        }
    }

    public static byte[] a(Context context) {
        String a2 = q.a(context).a("mipush", "td_key", "");
        if (TextUtils.isEmpty(a2)) {
            a2 = bo.a(20);
            q.a(context).m536a("mipush", "td_key", a2);
        }
        return a(a2);
    }

    private static byte[] a(String str) {
        byte[] copyOf = Arrays.copyOf(bl.m102a(str), 16);
        copyOf[0] = 68;
        copyOf[15] = 84;
        return copyOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v8 */
    public static void c(Context context, hz hzVar) {
        Throwable th;
        String str;
        Exception e;
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2;
        String str2;
        BufferedOutputStream a2 = a(context);
        try {
            try {
                byte[] b2 = h.b(a2, jf.a(hzVar));
                if (b2 != null && b2.length >= 1) {
                    if (b2.length > 10240) {
                        str2 = "TinyData write to cache file failed case too much data content item:" + hzVar.d() + "  ts:" + System.currentTimeMillis();
                        b.m1a(str2);
                        aa.a((Closeable) null);
                        aa.a((Closeable) null);
                    }
                    BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(new FileOutputStream(new File(context.getFilesDir(), "tiny_data.data"), true));
                    try {
                        bufferedOutputStream3.write(ae.a(b2.length));
                        bufferedOutputStream3.write(b2);
                        bufferedOutputStream3.flush();
                        aa.a((Closeable) null);
                        aa.a(bufferedOutputStream3);
                        return;
                    } catch (IOException e2) {
                        e = e2;
                        bufferedOutputStream = bufferedOutputStream3;
                        str = "TinyData write to cache file failed cause io exception item:" + hzVar.d();
                        a2 = bufferedOutputStream;
                        b.a(str, e);
                        aa.a((Closeable) null);
                        aa.a((Closeable) a2);
                        return;
                    } catch (Exception e3) {
                        e = e3;
                        bufferedOutputStream2 = bufferedOutputStream3;
                        str = "TinyData write to cache file  failed item:" + hzVar.d();
                        a2 = bufferedOutputStream2;
                        b.a(str, e);
                        aa.a((Closeable) null);
                        aa.a((Closeable) a2);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        a2 = bufferedOutputStream3;
                        aa.a((Closeable) null);
                        aa.a((Closeable) a2);
                        throw th;
                    }
                }
                str2 = "TinyData write to cache file failed case encryption fail item:" + hzVar.d() + "  ts:" + System.currentTimeMillis();
                b.m1a(str2);
                aa.a((Closeable) null);
                aa.a((Closeable) null);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e4) {
            e = e4;
            bufferedOutputStream = null;
        } catch (Exception e5) {
            e = e5;
            bufferedOutputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            a2 = 0;
        }
    }
}
