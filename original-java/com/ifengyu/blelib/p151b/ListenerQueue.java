package com.ifengyu.blelib.p151b;

import android.os.Handler;
import android.os.Looper;
import com.ifengyu.library.utils.C4971k;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.ifengyu.blelib.b.b */
/* loaded from: classes2.dex */
public class ListenerQueue {

    /* renamed from: e */
    private static final String f12045e = "b";

    /* renamed from: f */
    private static ListenerQueue f12046f = new ListenerQueue();

    /* renamed from: a */
    private volatile boolean f12047a = false;

    /* renamed from: b */
    private volatile boolean f12048b = false;

    /* renamed from: c */
    private Map<Integer, PacketListener> f12049c = new ConcurrentHashMap();

    /* renamed from: d */
    private Handler f12050d = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ListenerQueue.java */
    /* renamed from: com.ifengyu.blelib.b.b$a */
    /* loaded from: classes2.dex */
    public class RunnableC3137a implements Runnable {
        RunnableC3137a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenerQueue.this.m14371k();
            ListenerQueue.this.f12048b = false;
            ListenerQueue.this.m14373i();
        }
    }

    /* renamed from: d */
    public static ListenerQueue m14378d() {
        return f12046f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m14373i() {
        if (this.f12047a || this.f12048b) {
            return;
        }
        this.f12048b = true;
        this.f12050d.postDelayed(new RunnableC3137a(), 5000L);
    }

    /* renamed from: j */
    private void m14372j() {
        this.f12047a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m14371k() {
        long currentTimeMillis = System.currentTimeMillis();
        for (Map.Entry<Integer, PacketListener> entry : this.f12049c.entrySet()) {
            PacketListener value = entry.getValue();
            Integer key = entry.getKey();
            try {
                if (currentTimeMillis - value.m14370a() >= value.m14369b()) {
                    C4971k.m8659a(f12045e, "ListenerQueue#find timeout msg");
                    PacketListener m14375g = m14375g(key.intValue());
                    if (m14375g != null) {
                        m14375g.mo11457c(-5);
                    }
                }
            } catch (Exception e) {
                C4971k.m8658b(f12045e, "ListenerQueue#timerImpl onTimeout is Error,exception is %s", e.getCause());
            }
        }
    }

    /* renamed from: e */
    public void m14377e() {
        C4971k.m8659a(f12045e, "ListenerQueue#onDestroy ");
        this.f12049c.clear();
        m14372j();
    }

    /* renamed from: f */
    public void m14376f() {
        C4971k.m8659a(f12045e, "ListenerQueue#onStart run");
        this.f12047a = false;
        m14373i();
    }

    /* renamed from: g */
    public PacketListener m14375g(int i) {
        synchronized (this) {
            if (this.f12049c.containsKey(Integer.valueOf(i))) {
                return this.f12049c.remove(Integer.valueOf(i));
            }
            return null;
        }
    }

    /* renamed from: h */
    public void m14374h(int i, PacketListener packetListener) {
        if (i > 0 && packetListener != null) {
            this.f12049c.put(Integer.valueOf(i), packetListener);
        } else {
            C4971k.m8659a(f12045e, "ListenerQueue#push error, cause by Illegal params");
        }
    }
}
