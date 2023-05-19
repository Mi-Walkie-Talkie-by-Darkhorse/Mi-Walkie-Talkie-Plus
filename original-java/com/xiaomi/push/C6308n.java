package com.xiaomi.push;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;

/* renamed from: com.xiaomi.push.n */
/* loaded from: classes2.dex */
public class C6308n {

    /* renamed from: a */
    private static volatile Handler f22828a;

    /* renamed from: a */
    private static final Object f22829a = new Object();

    /* renamed from: b */
    private static volatile Handler f22830b;

    /* renamed from: a */
    public static Intent m1829a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return m1828a(context, broadcastReceiver, intentFilter, null);
    }

    /* renamed from: a */
    public static Intent m1828a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str) {
        if (context == null || broadcastReceiver == null || intentFilter == null) {
            return null;
        }
        return context.registerReceiver(broadcastReceiver, intentFilter, str, m1825b());
    }

    /* renamed from: a */
    public static Handler m1830a() {
        if (f22830b == null) {
            synchronized (f22829a) {
                if (f22830b == null) {
                    HandlerThread handlerThread = new HandlerThread("receiver_task");
                    handlerThread.start();
                    f22830b = new Handler(handlerThread.getLooper());
                }
            }
        }
        return f22830b;
    }

    /* renamed from: a */
    private static void m1827a(Context context, ComponentName componentName) {
        m1825b().post(new RunnableC6309o(context, componentName));
    }

    /* renamed from: a */
    public static void m1826a(Context context, Class<?> cls) {
        if (context == null || cls == null) {
            return;
        }
        m1827a(context, new ComponentName(context, cls));
    }

    /* renamed from: b */
    private static Handler m1825b() {
        if (f22828a == null) {
            synchronized (C6308n.class) {
                if (f22828a == null) {
                    HandlerThread handlerThread = new HandlerThread("handle_receiver");
                    handlerThread.start();
                    f22828a = new Handler(handlerThread.getLooper());
                }
            }
        }
        return f22828a;
    }
}
