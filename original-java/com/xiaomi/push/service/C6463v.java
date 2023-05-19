package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6203gu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.v */
/* loaded from: classes2.dex */
public class C6463v {

    /* renamed from: a */
    private static final Map<String, byte[]> f23244a = new HashMap();

    /* renamed from: a */
    private static ArrayList<Pair<String, byte[]>> f23243a = new ArrayList<>();

    /* renamed from: a */
    public static void m1275a(Context context, int i, String str) {
        Map<String, byte[]> map = f23244a;
        synchronized (map) {
            for (String str2 : map.keySet()) {
                AbstractC5876b.m4147a("notify registration error. " + str2);
                m1274a(context, str2, f23244a.get(str2), i, str);
            }
            f23244a.clear();
        }
    }

    /* renamed from: a */
    public static void m1274a(Context context, String str, byte[] bArr, int i, String str2) {
        Intent intent = new Intent("com.xiaomi.mipush.ERROR");
        intent.setPackage(str);
        intent.putExtra("mipush_payload", bArr);
        intent.putExtra("mipush_error_code", i);
        intent.putExtra("mipush_error_msg", str2);
        context.sendBroadcast(intent, C6346af.m1692a(str));
    }

    /* renamed from: a */
    public static void m1273a(XMPushService xMPushService) {
        try {
            Map<String, byte[]> map = f23244a;
            synchronized (map) {
                for (String str : map.keySet()) {
                    AbstractC5876b.m4147a("processing pending registration request. " + str);
                    C6346af.m1695a(xMPushService, str, f23244a.get(str));
                }
                f23244a.clear();
            }
        } catch (C6203gu e) {
            AbstractC5876b.m4138d("fail to deal with pending register request. " + e);
            xMPushService.m1793a(10, e);
        }
    }

    /* renamed from: a */
    public static void m1272a(String str, byte[] bArr) {
        Map<String, byte[]> map = f23244a;
        synchronized (map) {
            AbstractC5876b.m4147a("pending registration request. " + str);
            map.put(str, bArr);
        }
    }

    /* renamed from: b */
    public static void m1271b(XMPushService xMPushService) {
        ArrayList<Pair<String, byte[]>> arrayList;
        try {
            synchronized (f23243a) {
                arrayList = f23243a;
                f23243a = new ArrayList<>();
            }
            boolean z = Thread.currentThread() == Looper.getMainLooper().getThread();
            Iterator<Pair<String, byte[]>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Pair<String, byte[]> next = it2.next();
                C6346af.m1695a(xMPushService, (String) next.first, (byte[]) next.second);
                if (!z) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        } catch (C6203gu e) {
            AbstractC5876b.m4138d("meet error when process pending message. " + e);
            xMPushService.m1793a(10, e);
        }
    }

    /* renamed from: b */
    public static void m1270b(String str, byte[] bArr) {
        synchronized (f23243a) {
            f23243a.add(new Pair<>(str, bArr));
            if (f23243a.size() > 50) {
                f23243a.remove(0);
            }
        }
    }
}
