package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.infra.galaxy.fds.android.FDSClientConfiguration;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C5968aa;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6240hy;
import com.xiaomi.push.C6241hz;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.EnumC6248if;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: com.xiaomi.push.service.bw */
/* loaded from: classes2.dex */
public class C6410bw {

    /* renamed from: a */
    private static String f23140a;

    /* renamed from: a */
    private static SimpleDateFormat f23141a;

    /* renamed from: a */
    private static AtomicLong f23142a = new AtomicLong(0);

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        f23141a = simpleDateFormat;
        f23140a = simpleDateFormat.format(Long.valueOf(System.currentTimeMillis()));
    }

    /* renamed from: a */
    private static C6263iu m1415a(String str, String str2, C6240hy c6240hy) {
        return new C6263iu("-1", false).m2173d(str).m2180b(str2).m2183a(C5968aa.m3804a(C6278jf.m1933a(c6240hy))).m2176c(EnumC6248if.UploadTinyData.f22236a);
    }

    /* renamed from: a */
    public static synchronized String m1419a() {
        String str;
        synchronized (C6410bw.class) {
            String format = f23141a.format(Long.valueOf(System.currentTimeMillis()));
            if (!TextUtils.equals(f23140a, format)) {
                f23142a.set(0L);
                f23140a = format;
            }
            str = format + Constants.ACCEPT_TIME_SEPARATOR_SERVER + f23142a.incrementAndGet();
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList<C6263iu> m1414a(List<C6241hz> list, String str, String str2, int i) {
        int i2;
        String str3;
        if (list == null) {
            str3 = "requests can not be null in TinyDataHelper.transToThriftObj().";
        } else if (list.size() != 0) {
            ArrayList<C6263iu> arrayList = new ArrayList<>();
            C6240hy c6240hy = new C6240hy();
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                C6241hz c6241hz = list.get(i4);
                if (c6241hz != null) {
                    if (c6241hz.m2550a() == null || !c6241hz.m2550a().containsKey("item_size")) {
                        i2 = 0;
                    } else {
                        String str4 = c6241hz.m2550a().get("item_size");
                        if (!TextUtils.isEmpty(str4)) {
                            try {
                                i2 = Integer.parseInt(str4);
                            } catch (Exception unused) {
                            }
                            if (c6241hz.m2550a().size() != 1) {
                                c6241hz.m2542a((Map<String, String>) null);
                            } else {
                                c6241hz.m2550a().remove("item_size");
                            }
                        }
                        i2 = 0;
                        if (c6241hz.m2550a().size() != 1) {
                        }
                    }
                    if (i2 <= 0) {
                        i2 = C6278jf.m1933a(c6241hz).length;
                    }
                    if (i2 > i) {
                        AbstractC5876b.m4138d("TinyData is too big, ignore upload request item:" + c6241hz.m2530d());
                    } else {
                        if (i3 + i2 > i) {
                            arrayList.add(m1415a(str, str2, c6240hy));
                            c6240hy = new C6240hy();
                            i3 = 0;
                        }
                        c6240hy.m2553a(c6241hz);
                        i3 += i2;
                    }
                }
            }
            if (c6240hy.m2558a() != 0) {
                arrayList.add(m1415a(str, str2, c6240hy));
            }
            return arrayList;
        } else {
            str3 = "requests.length is 0 in TinyDataHelper.transToThriftObj().";
        }
        AbstractC5876b.m4138d(str3);
        return null;
    }

    /* renamed from: a */
    public static void m1418a(Context context, String str, String str2, long j, String str3) {
        C6241hz c6241hz = new C6241hz();
        c6241hz.m2528d(str);
        c6241hz.m2532c(str2);
        c6241hz.m2547a(j);
        c6241hz.m2536b(str3);
        c6241hz.m2544a("push_sdk_channel");
        c6241hz.m2521g(context.getPackageName());
        c6241hz.m2525e(context.getPackageName());
        c6241hz.m2541a(true);
        c6241hz.m2537b(System.currentTimeMillis());
        c6241hz.m2523f(m1419a());
        C6411bx.m1412a(context, c6241hz);
    }

    /* renamed from: a */
    public static boolean m1417a(C6241hz c6241hz, boolean z) {
        String str;
        if (c6241hz == null) {
            str = "item is null, verfiy ClientUploadDataItem failed.";
        } else if (!z && TextUtils.isEmpty(c6241hz.f22000a)) {
            str = "item.channel is null or empty, verfiy ClientUploadDataItem failed.";
        } else if (TextUtils.isEmpty(c6241hz.f22007d)) {
            str = "item.category is null or empty, verfiy ClientUploadDataItem failed.";
        } else if (TextUtils.isEmpty(c6241hz.f22006c)) {
            str = "item.name is null or empty, verfiy ClientUploadDataItem failed.";
        } else if (!C6023bo.m3619a(c6241hz.f22007d)) {
            str = "item.category can only contain ascii char, verfiy ClientUploadDataItem failed.";
        } else if (C6023bo.m3619a(c6241hz.f22006c)) {
            String str2 = c6241hz.f22005b;
            if (str2 == null || str2.length() <= 10240) {
                return false;
            }
            str = "item.data is too large(" + c6241hz.f22005b.length() + "), max size for data is " + FDSClientConfiguration.DEFAULT_WORK_QUEUE_CAPACITY + " , verfiy ClientUploadDataItem failed.";
        } else {
            str = "item.name can only contain ascii char, verfiy ClientUploadDataItem failed.";
        }
        AbstractC5876b.m4147a(str);
        return true;
    }

    /* renamed from: a */
    public static boolean m1416a(String str) {
        return !C6469u.m1232b() || Constants.HYBRID_PACKAGE_NAME.equals(str);
    }
}
