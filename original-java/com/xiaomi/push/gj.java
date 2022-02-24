package com.xiaomi.push;

import android.os.SystemClock;
import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;
import com.xiaomi.push.service.bh;
import java.io.Reader;
import java.io.Writer;
import java.util.Collection;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public abstract class gj {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f8989a = new AtomicInteger(0);

    /* renamed from: a  reason: collision with other field name */
    public static boolean f424a;

    /* renamed from: a  reason: collision with other field name */
    protected gk f427a;

    /* renamed from: a  reason: collision with other field name */
    protected XMPushService f429a;

    /* renamed from: a  reason: collision with other field name */
    protected int f425a = 0;

    /* renamed from: a  reason: collision with other field name */
    protected long f426a = -1;

    /* renamed from: b  reason: collision with other field name */
    protected volatile long f434b = 0;

    /* renamed from: c  reason: collision with other field name */
    protected volatile long f437c = 0;

    /* renamed from: a  reason: collision with other field name */
    private LinkedList<Pair<Integer, Long>> f432a = new LinkedList<>();

    /* renamed from: a  reason: collision with other field name */
    private final Collection<gm> f431a = new CopyOnWriteArrayList();

    /* renamed from: a  reason: collision with other field name */
    protected final Map<go, a> f433a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with other field name */
    protected final Map<go, a> f436b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with other field name */
    protected gv f428a = null;

    /* renamed from: a  reason: collision with other field name */
    protected String f430a = "";

    /* renamed from: b  reason: collision with other field name */
    protected String f435b = "";

    /* renamed from: c  reason: collision with root package name */
    private int f8991c = 2;

    /* renamed from: b  reason: collision with root package name */
    protected final int f8990b = f8989a.getAndIncrement();
    private long e = 0;
    protected long d = 0;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private go f8992a;

        /* renamed from: a  reason: collision with other field name */
        private gw f438a;

        public a(go goVar, gw gwVar) {
            this.f8992a = goVar;
            this.f438a = gwVar;
        }

        public void a(fy fyVar) {
            this.f8992a.a(fyVar);
        }

        public void a(ha haVar) {
            gw gwVar = this.f438a;
            if (gwVar == null || gwVar.mo312a(haVar)) {
                this.f8992a.mo312a(haVar);
            }
        }
    }

    static {
        f424a = false;
        try {
            f424a = Boolean.getBoolean("smack.debugEnabled");
        } catch (Exception unused) {
        }
        gp.m324a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public gj(XMPushService xMPushService, gk gkVar) {
        this.f427a = gkVar;
        this.f429a = xMPushService;
        c();
    }

    private String a(int i) {
        return i == 1 ? "connected" : i == 0 ? "connecting" : i == 2 ? "disconnected" : "unknown";
    }

    /* renamed from: a  reason: collision with other method in class */
    private void m313a(int i) {
        synchronized (this.f432a) {
            if (i == 1) {
                this.f432a.clear();
            } else {
                this.f432a.add(new Pair<>(Integer.valueOf(i), Long.valueOf(System.currentTimeMillis())));
                if (this.f432a.size() > 6) {
                    this.f432a.remove(0);
                }
            }
        }
    }

    /* renamed from: a */
    public int mo326a() {
        return this.f425a;
    }

    public long a() {
        return this.f437c;
    }

    /* renamed from: a  reason: collision with other method in class */
    public gk m314a() {
        return this.f427a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m315a() {
        return this.f427a.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a  reason: collision with other method in class */
    public Map<go, a> m316a() {
        return this.f433a;
    }

    public void a(int i, int i2, Exception exc) {
        int i3 = this.f8991c;
        if (i != i3) {
            b.m1a(String.format("update the connection status. %1$s -> %2$s : %3$s ", a(i3), a(i), bh.a(i2)));
        }
        if (bi.b(this.f429a)) {
            m313a(i);
        }
        if (i == 1) {
            this.f429a.a(10);
            if (this.f8991c != 0) {
                b.m1a("try set connected while not connecting.");
            }
            this.f8991c = i;
            for (gm gmVar : this.f431a) {
                gmVar.b(this);
            }
        } else if (i == 0) {
            if (this.f8991c != 2) {
                b.m1a("try set connecting while not disconnected.");
            }
            this.f8991c = i;
            for (gm gmVar2 : this.f431a) {
                gmVar2.a(this);
            }
        } else if (i == 2) {
            this.f429a.a(10);
            int i4 = this.f8991c;
            if (i4 == 0) {
                for (gm gmVar3 : this.f431a) {
                    gmVar3.a(this, exc == null ? new CancellationException("disconnect while connecting") : exc);
                }
            } else if (i4 == 1) {
                for (gm gmVar4 : this.f431a) {
                    gmVar4.a(this, i2, exc);
                }
            }
            this.f8991c = i;
        }
    }

    public void a(gm gmVar) {
        if (gmVar != null && !this.f431a.contains(gmVar)) {
            this.f431a.add(gmVar);
        }
    }

    public void a(go goVar, gw gwVar) {
        if (goVar != null) {
            this.f433a.put(goVar, new a(goVar, gwVar));
            return;
        }
        throw new NullPointerException("Packet listener is null.");
    }

    public abstract void a(ha haVar);

    public abstract void a(bd.b bVar);

    public synchronized void a(String str) {
        if (this.f8991c == 0) {
            b.m1a("setChallenge hash = " + bn.a(str).substring(0, 8));
            this.f430a = str;
            a(1, 0, null);
        } else {
            b.m1a("ignore setChallenge because connection was disconnected");
        }
    }

    public abstract void a(String str, String str2);

    public abstract void a(fy[] fyVarArr);

    /* renamed from: a  reason: collision with other method in class */
    public boolean m317a() {
        return false;
    }

    public synchronized boolean a(long j) {
        return this.e >= j;
    }

    public int b() {
        return this.f8991c;
    }

    /* renamed from: b  reason: collision with other method in class */
    public String m318b() {
        return this.f427a.b();
    }

    public abstract void b(int i, Exception exc);

    public abstract void b(fy fyVar);

    public void b(gm gmVar) {
        this.f431a.remove(gmVar);
    }

    public void b(go goVar, gw gwVar) {
        if (goVar != null) {
            this.f436b.put(goVar, new a(goVar, gwVar));
            return;
        }
        throw new NullPointerException("Packet listener is null.");
    }

    public abstract void b(boolean z);

    /* renamed from: b  reason: collision with other method in class */
    public boolean m319b() {
        return this.f8991c == 0;
    }

    protected void c() {
        String str;
        if (this.f427a.m322a() && this.f428a == null) {
            Class<?> cls = null;
            try {
                str = System.getProperty("smack.debuggerClass");
            } catch (Throwable unused) {
                str = null;
            }
            if (str != null) {
                try {
                    cls = Class.forName(str);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (cls == null) {
                this.f428a = new gh(this);
                return;
            }
            try {
                this.f428a = (gv) cls.getConstructor(gj.class, Writer.class, Reader.class).newInstance(this);
            } catch (Exception e2) {
                throw new IllegalArgumentException("Can't initialize the configured debugger!", e2);
            }
        }
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m320c() {
        return this.f8991c == 1;
    }

    public synchronized void d() {
        this.e = SystemClock.elapsedRealtime();
    }

    public void e() {
        synchronized (this.f432a) {
            this.f432a.clear();
        }
    }
}
