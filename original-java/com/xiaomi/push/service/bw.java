package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.infra.galaxy.fds.android.FDSClientConfiguration;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.Cif;
import com.xiaomi.push.aa;
import com.xiaomi.push.bo;
import com.xiaomi.push.hy;
import com.xiaomi.push.hz;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import com.xiaomi.push.u;
import java.text.SimpleDateFormat;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public class bw {

    /* renamed from: a  reason: collision with root package name */
    private static String f9303a;

    /* renamed from: a  reason: collision with other field name */
    private static SimpleDateFormat f975a;

    /* renamed from: a  reason: collision with other field name */
    private static AtomicLong f976a = new AtomicLong(0);

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        f975a = simpleDateFormat;
        f9303a = simpleDateFormat.format(Long.valueOf(System.currentTimeMillis()));
    }

    private static iu a(String str, String str2, hy hyVar) {
        return new iu("-1", false).d(str).b(str2).a(aa.a(jf.a(hyVar))).c(Cif.UploadTinyData.f527a);
    }

    public static synchronized String a() {
        String str;
        synchronized (bw.class) {
            String format = f975a.format(Long.valueOf(System.currentTimeMillis()));
            if (!TextUtils.equals(f9303a, format)) {
                f976a.set(0L);
                f9303a = format;
            }
            str = format + Constants.ACCEPT_TIME_SEPARATOR_SERVER + f976a.incrementAndGet();
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.ArrayList<com.xiaomi.push.iu> a(java.util.List<com.xiaomi.push.hz> r11, java.lang.String r12, java.lang.String r13, int r14) {
        /*
            r0 = 0
            if (r11 != 0) goto L_0x0009
            java.lang.String r11 = "requests can not be null in TinyDataHelper.transToThriftObj()."
        L_0x0005:
            com.xiaomi.channel.commonutils.logger.b.d(r11)
            return r0
        L_0x0009:
            int r1 = r11.size()
            if (r1 != 0) goto L_0x0012
            java.lang.String r11 = "requests.length is 0 in TinyDataHelper.transToThriftObj()."
            goto L_0x0005
        L_0x0012:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            com.xiaomi.push.hy r2 = new com.xiaomi.push.hy
            r2.<init>()
            r3 = 0
            r4 = 0
            r5 = 0
        L_0x001f:
            int r6 = r11.size()
            if (r4 >= r6) goto L_0x00aa
            java.lang.Object r6 = r11.get(r4)
            com.xiaomi.push.hz r6 = (com.xiaomi.push.hz) r6
            if (r6 != 0) goto L_0x002f
            goto L_0x00a6
        L_0x002f:
            java.util.Map r7 = r6.m357a()
            if (r7 == 0) goto L_0x006e
            java.util.Map r7 = r6.m357a()
            java.lang.String r8 = "item_size"
            boolean r7 = r7.containsKey(r8)
            if (r7 == 0) goto L_0x006e
            java.util.Map r7 = r6.m357a()
            java.lang.Object r7 = r7.get(r8)
            java.lang.String r7 = (java.lang.String) r7
            boolean r9 = android.text.TextUtils.isEmpty(r7)
            if (r9 != 0) goto L_0x0056
            int r7 = java.lang.Integer.parseInt(r7)     // Catch: Exception -> 0x0056
            goto L_0x0057
        L_0x0056:
            r7 = 0
        L_0x0057:
            java.util.Map r9 = r6.m357a()
            int r9 = r9.size()
            r10 = 1
            if (r9 != r10) goto L_0x0066
            r6.a(r0)
            goto L_0x006f
        L_0x0066:
            java.util.Map r9 = r6.m357a()
            r9.remove(r8)
            goto L_0x006f
        L_0x006e:
            r7 = 0
        L_0x006f:
            if (r7 > 0) goto L_0x0076
            byte[] r7 = com.xiaomi.push.jf.a(r6)
            int r7 = r7.length
        L_0x0076:
            if (r7 <= r14) goto L_0x0091
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "TinyData is too big, ignore upload request item:"
            r7.append(r8)
            java.lang.String r6 = r6.d()
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            com.xiaomi.channel.commonutils.logger.b.d(r6)
            goto L_0x00a6
        L_0x0091:
            int r8 = r5 + r7
            if (r8 <= r14) goto L_0x00a2
            com.xiaomi.push.iu r2 = a(r12, r13, r2)
            r1.add(r2)
            com.xiaomi.push.hy r2 = new com.xiaomi.push.hy
            r2.<init>()
            r5 = 0
        L_0x00a2:
            r2.a(r6)
            int r5 = r5 + r7
        L_0x00a6:
            int r4 = r4 + 1
            goto L_0x001f
        L_0x00aa:
            int r11 = r2.a()
            if (r11 == 0) goto L_0x00b7
            com.xiaomi.push.iu r11 = a(r12, r13, r2)
            r1.add(r11)
        L_0x00b7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.bw.a(java.util.List, java.lang.String, java.lang.String, int):java.util.ArrayList");
    }

    public static void a(Context context, String str, String str2, long j, String str3) {
        hz hzVar = new hz();
        hzVar.d(str);
        hzVar.c(str2);
        hzVar.a(j);
        hzVar.b(str3);
        hzVar.a("push_sdk_channel");
        hzVar.g(context.getPackageName());
        hzVar.e(context.getPackageName());
        hzVar.a(true);
        hzVar.b(System.currentTimeMillis());
        hzVar.f(a());
        bx.a(context, hzVar);
    }

    public static boolean a(hz hzVar, boolean z) {
        String str;
        if (hzVar == null) {
            str = "item is null, verfiy ClientUploadDataItem failed.";
        } else if (!z && TextUtils.isEmpty(hzVar.f496a)) {
            str = "item.channel is null or empty, verfiy ClientUploadDataItem failed.";
        } else if (TextUtils.isEmpty(hzVar.f503d)) {
            str = "item.category is null or empty, verfiy ClientUploadDataItem failed.";
        } else if (TextUtils.isEmpty(hzVar.f502c)) {
            str = "item.name is null or empty, verfiy ClientUploadDataItem failed.";
        } else if (!bo.m104a(hzVar.f503d)) {
            str = "item.category can only contain ascii char, verfiy ClientUploadDataItem failed.";
        } else if (!bo.m104a(hzVar.f502c)) {
            str = "item.name can only contain ascii char, verfiy ClientUploadDataItem failed.";
        } else {
            String str2 = hzVar.f501b;
            if (str2 == null || str2.length() <= 10240) {
                return false;
            }
            str = "item.data is too large(" + hzVar.f501b.length() + "), max size for data is " + FDSClientConfiguration.DEFAULT_WORK_QUEUE_CAPACITY + " , verfiy ClientUploadDataItem failed.";
        }
        b.m1a(str);
        return true;
    }

    public static boolean a(String str) {
        return !u.m663b() || Constants.HYBRID_PACKAGE_NAME.equals(str);
    }
}
