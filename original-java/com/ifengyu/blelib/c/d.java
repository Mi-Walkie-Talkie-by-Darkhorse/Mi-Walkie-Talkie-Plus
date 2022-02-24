package com.ifengyu.blelib.c;

import android.os.Handler;
import android.os.Looper;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ListenerQueue.java */
/* loaded from: classes.dex */
public class d {
    private static final String e = "d";
    private static d f = new d();

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f5188a = false;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f5189b = false;

    /* renamed from: c  reason: collision with root package name */
    private Map<Integer, e> f5190c = new ConcurrentHashMap();
    private Handler d = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ListenerQueue.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f();
            d.this.f5189b = false;
            d.this.d();
        }
    }

    public static d c() {
        return f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (!this.f5188a && !this.f5189b) {
            this.f5189b = true;
            this.d.postDelayed(new a(), 5000L);
        }
    }

    private void e() {
        this.f5188a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        long currentTimeMillis = System.currentTimeMillis();
        for (Map.Entry<Integer, e> entry : this.f5190c.entrySet()) {
            e value = entry.getValue();
            Integer key = entry.getKey();
            try {
                if (currentTimeMillis - value.a() >= value.b()) {
                    com.ifengyu.blelib.a.a(e, "ListenerQueue#find timeout msg");
                    e a2 = a(key.intValue());
                    if (a2 != null) {
                        a2.a(-5);
                    }
                }
            } catch (Exception e2) {
                com.ifengyu.blelib.a.a(e, "ListenerQueue#timerImpl onTimeout is Error,exception is %s", e2.getCause());
            }
        }
    }

    public void b() {
        com.ifengyu.blelib.a.a(e, "ListenerQueue#onStart run");
        this.f5188a = false;
        d();
    }

    public void a() {
        com.ifengyu.blelib.a.a(e, "ListenerQueue#onDestroy ");
        this.f5190c.clear();
        e();
    }

    public void a(int i, e eVar) {
        if (i <= 0 || eVar == null) {
            com.ifengyu.blelib.a.a(e, "ListenerQueue#push error, cause by Illegal params");
        } else {
            this.f5190c.put(Integer.valueOf(i), eVar);
        }
    }

    public e a(int i) {
        synchronized (this) {
            if (!this.f5190c.containsKey(Integer.valueOf(i))) {
                return null;
            }
            return this.f5190c.remove(Integer.valueOf(i));
        }
    }
}
