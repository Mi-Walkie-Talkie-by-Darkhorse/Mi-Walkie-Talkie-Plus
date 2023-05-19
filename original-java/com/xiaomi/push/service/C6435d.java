package com.xiaomi.push.service;

import android.app.Notification;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import com.xiaomi.push.C6306l;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.xiaomi.push.service.d */
/* loaded from: classes2.dex */
public class C6435d {

    /* renamed from: a */
    private static List<C6436a> f23179a = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.service.d$a */
    /* loaded from: classes2.dex */
    public static class C6436a {

        /* renamed from: a */
        public final int f23180a;

        /* renamed from: a */
        public final long f23181a;

        /* renamed from: a */
        public final String f23182a;

        /* renamed from: a */
        public final Notification.Action[] f23183a;

        C6436a(String str, long j, int i, Notification.Action[] actionArr) {
            this.f23182a = str;
            this.f23181a = j;
            this.f23180a = i;
            this.f23183a = actionArr;
        }
    }

    /* renamed from: a */
    private static void m1384a() {
        for (int size = f23179a.size() - 1; size >= 0; size--) {
            C6436a c6436a = f23179a.get(size);
            if (SystemClock.elapsedRealtime() - c6436a.f23181a > 5000) {
                f23179a.remove(c6436a);
            }
        }
        if (f23179a.size() > 10) {
            f23179a.remove(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static void m1383a(Context context, StatusBarNotification statusBarNotification, int i) {
        if (!C6306l.m1851a(context) || i <= 0 || statusBarNotification == null || Build.VERSION.SDK_INT < 20) {
            return;
        }
        m1382a(new C6436a(statusBarNotification.getKey(), SystemClock.elapsedRealtime(), i, C6369av.m1556a(statusBarNotification.getNotification())));
    }

    /* renamed from: a */
    private static void m1382a(C6436a c6436a) {
        f23179a.add(c6436a);
        m1384a();
    }
}
