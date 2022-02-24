package com.xiaomi.push.service;

import android.app.Notification;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import com.xiaomi.push.l;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static List<a> f9328a = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f9329a;

        /* renamed from: a  reason: collision with other field name */
        public final long f989a;

        /* renamed from: a  reason: collision with other field name */
        public final String f990a;

        /* renamed from: a  reason: collision with other field name */
        public final Notification.Action[] f991a;

        a(String str, long j, int i, Notification.Action[] actionArr) {
            this.f990a = str;
            this.f989a = j;
            this.f9329a = i;
            this.f991a = actionArr;
        }
    }

    private static void a() {
        for (int size = f9328a.size() - 1; size >= 0; size--) {
            a aVar = f9328a.get(size);
            if (SystemClock.elapsedRealtime() - aVar.f989a > 5000) {
                f9328a.remove(aVar);
            }
        }
        if (f9328a.size() > 10) {
            f9328a.remove(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, StatusBarNotification statusBarNotification, int i) {
        if (l.m528a(context) && i > 0 && statusBarNotification != null && Build.VERSION.SDK_INT >= 20) {
            a(new a(statusBarNotification.getKey(), SystemClock.elapsedRealtime(), i, av.m608a(statusBarNotification.getNotification())));
        }
    }

    private static void a(a aVar) {
        f9328a.add(aVar);
        a();
    }
}
