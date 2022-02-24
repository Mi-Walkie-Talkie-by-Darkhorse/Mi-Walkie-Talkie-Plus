package com.xiaomi.push;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;

/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Handler f9183a;

    /* renamed from: a  reason: collision with other field name */
    private static final Object f836a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f9184b;

    public static Intent a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return a(context, broadcastReceiver, intentFilter, null);
    }

    public static Intent a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str) {
        if (context == null || broadcastReceiver == null || intentFilter == null) {
            return null;
        }
        return context.registerReceiver(broadcastReceiver, intentFilter, str, b());
    }

    public static Handler a() {
        if (f9184b == null) {
            synchronized (f836a) {
                if (f9184b == null) {
                    HandlerThread handlerThread = new HandlerThread("receiver_task");
                    handlerThread.start();
                    f9184b = new Handler(handlerThread.getLooper());
                }
            }
        }
        return f9184b;
    }

    private static void a(Context context, ComponentName componentName) {
        b().post(new o(context, componentName));
    }

    public static void a(Context context, Class<?> cls) {
        if (context != null && cls != null) {
            a(context, new ComponentName(context, cls));
        }
    }

    private static Handler b() {
        if (f9183a == null) {
            synchronized (n.class) {
                if (f9183a == null) {
                    HandlerThread handlerThread = new HandlerThread("handle_receiver");
                    handlerThread.start();
                    f9183a = new Handler(handlerThread.getLooper());
                }
            }
        }
        return f9183a;
    }
}
