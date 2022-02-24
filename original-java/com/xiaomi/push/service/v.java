package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public class v {

    /* renamed from: a  reason: collision with other field name */
    private static final Map<String, byte[]> f1013a = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private static ArrayList<Pair<String, byte[]>> f9365a = new ArrayList<>();

    public static void a(Context context, int i, String str) {
        synchronized (f1013a) {
            for (String str2 : f1013a.keySet()) {
                b.m1a("notify registration error. " + str2);
                a(context, str2, f1013a.get(str2), i, str);
            }
            f1013a.clear();
        }
    }

    public static void a(Context context, String str, byte[] bArr, int i, String str2) {
        Intent intent = new Intent("com.xiaomi.mipush.ERROR");
        intent.setPackage(str);
        intent.putExtra("mipush_payload", bArr);
        intent.putExtra("mipush_error_code", i);
        intent.putExtra("mipush_error_msg", str2);
        context.sendBroadcast(intent, af.a(str));
    }

    public static void a(XMPushService xMPushService) {
        try {
            synchronized (f1013a) {
                for (String str : f1013a.keySet()) {
                    b.m1a("processing pending registration request. " + str);
                    af.a(xMPushService, str, f1013a.get(str));
                }
                f1013a.clear();
            }
        } catch (gu e) {
            b.d("fail to deal with pending register request. " + e);
            xMPushService.a(10, e);
        }
    }

    public static void a(String str, byte[] bArr) {
        synchronized (f1013a) {
            b.m1a("pending registration request. " + str);
            f1013a.put(str, bArr);
        }
    }

    public static void b(XMPushService xMPushService) {
        ArrayList<Pair<String, byte[]>> arrayList;
        try {
            synchronized (f9365a) {
                arrayList = f9365a;
                f9365a = new ArrayList<>();
            }
            boolean z = Thread.currentThread() == Looper.getMainLooper().getThread();
            Iterator<Pair<String, byte[]>> it = arrayList.iterator();
            while (it.hasNext()) {
                Pair<String, byte[]> next = it.next();
                af.a(xMPushService, (String) next.first, (byte[]) next.second);
                if (!z) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        } catch (gu e) {
            b.d("meet error when process pending message. " + e);
            xMPushService.a(10, e);
        }
    }

    public static void b(String str, byte[] bArr) {
        synchronized (f9365a) {
            f9365a.add(new Pair<>(str, bArr));
            if (f9365a.size() > 50) {
                f9365a.remove(0);
            }
        }
    }
}
