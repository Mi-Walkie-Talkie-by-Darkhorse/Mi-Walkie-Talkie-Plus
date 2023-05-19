package com.xiaomi.push;

import android.os.SystemClock;
import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.AbstractC6391bh;
import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.XMPushService;
import java.io.Reader;
import java.io.Writer;
import java.util.Collection;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.xiaomi.push.gj */
/* loaded from: classes2.dex */
public abstract class AbstractC6191gj {

    /* renamed from: a */
    private static final AtomicInteger f21728a = new AtomicInteger(0);

    /* renamed from: a */
    public static boolean f21729a;

    /* renamed from: a */
    protected C6193gk f21732a;

    /* renamed from: a */
    protected XMPushService f21734a;

    /* renamed from: a */
    protected int f21730a = 0;

    /* renamed from: a */
    protected long f21731a = -1;

    /* renamed from: b */
    protected volatile long f21740b = 0;

    /* renamed from: c */
    protected volatile long f21744c = 0;

    /* renamed from: a */
    private LinkedList<Pair<Integer, Long>> f21737a = new LinkedList<>();

    /* renamed from: a */
    private final Collection<InterfaceC6195gm> f21736a = new CopyOnWriteArrayList();

    /* renamed from: a */
    protected final Map<InterfaceC6197go, C6192a> f21738a = new ConcurrentHashMap();

    /* renamed from: b */
    protected final Map<InterfaceC6197go, C6192a> f21742b = new ConcurrentHashMap();

    /* renamed from: a */
    protected InterfaceC6204gv f21733a = null;

    /* renamed from: a */
    protected String f21735a = "";

    /* renamed from: b */
    protected String f21741b = "";

    /* renamed from: c */
    private int f21743c = 2;

    /* renamed from: b */
    protected final int f21739b = f21728a.getAndIncrement();

    /* renamed from: e */
    private long f21746e = 0;

    /* renamed from: d */
    protected long f21745d = 0;

    /* renamed from: com.xiaomi.push.gj$a */
    /* loaded from: classes2.dex */
    public static class C6192a {

        /* renamed from: a */
        private InterfaceC6197go f21747a;

        /* renamed from: a */
        private InterfaceC6205gw f21748a;

        public C6192a(InterfaceC6197go interfaceC6197go, InterfaceC6205gw interfaceC6205gw) {
            this.f21747a = interfaceC6197go;
            this.f21748a = interfaceC6205gw;
        }

        /* renamed from: a */
        public void m2740a(C6173fy c6173fy) {
            this.f21747a.mo1389a(c6173fy);
        }

        /* renamed from: a */
        public void m2739a(AbstractC6211ha abstractC6211ha) {
            InterfaceC6205gw interfaceC6205gw = this.f21748a;
            if (interfaceC6205gw == null || interfaceC6205gw.mo1387a(abstractC6211ha)) {
                this.f21747a.mo1388a(abstractC6211ha);
            }
        }
    }

    static {
        f21729a = false;
        try {
            f21729a = Boolean.getBoolean("smack.debugEnabled");
        } catch (Exception unused) {
        }
        C6198gp.m2726a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC6191gj(XMPushService xMPushService, C6193gk c6193gk) {
        this.f21732a = c6193gk;
        this.f21734a = xMPushService;
        m2744c();
    }

    /* renamed from: a */
    private String m2760a(int i) {
        return i == 1 ? "connected" : i == 0 ? "connecting" : i == 2 ? "disconnected" : "unknown";
    }

    /* renamed from: a */
    private void m2759a(int i) {
        synchronized (this.f21737a) {
            if (i == 1) {
                this.f21737a.clear();
            } else {
                this.f21737a.add(new Pair<>(Integer.valueOf(i), Long.valueOf(System.currentTimeMillis())));
                if (this.f21737a.size() > 6) {
                    this.f21737a.remove(0);
                }
            }
        }
    }

    /* renamed from: a */
    public int m2765a() {
        return this.f21730a;
    }

    /* renamed from: a */
    public long m2764a() {
        return this.f21744c;
    }

    /* renamed from: a */
    public C6193gk m2763a() {
        return this.f21732a;
    }

    /* renamed from: a */
    public String mo2721a() {
        return this.f21732a.m2730c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Map<InterfaceC6197go, C6192a> m2762a() {
        return this.f21738a;
    }

    /* renamed from: a */
    public void m2758a(int i, int i2, Exception exc) {
        int i3 = this.f21743c;
        if (i != i3) {
            AbstractC5876b.m4147a(String.format("update the connection status. %1$s -> %2$s : %3$s ", m2760a(i3), m2760a(i), AbstractC6391bh.m1477a(i2)));
        }
        if (C6013bi.m3662b(this.f21734a)) {
            m2759a(i);
        }
        if (i == 1) {
            this.f21734a.m1795a(10);
            if (this.f21743c != 0) {
                AbstractC5876b.m4147a("try set connected while not connecting.");
            }
            this.f21743c = i;
            for (InterfaceC6195gm interfaceC6195gm : this.f21736a) {
                interfaceC6195gm.mo1753b(this);
            }
        } else if (i == 0) {
            if (this.f21743c != 2) {
                AbstractC5876b.m4147a("try set connecting while not disconnected.");
            }
            this.f21743c = i;
            for (InterfaceC6195gm interfaceC6195gm2 : this.f21736a) {
                interfaceC6195gm2.mo1787a(this);
            }
        } else if (i == 2) {
            this.f21734a.m1795a(10);
            int i4 = this.f21743c;
            if (i4 == 0) {
                for (InterfaceC6195gm interfaceC6195gm3 : this.f21736a) {
                    interfaceC6195gm3.mo1785a(this, exc == null ? new CancellationException("disconnect while connecting") : exc);
                }
            } else if (i4 == 1) {
                for (InterfaceC6195gm interfaceC6195gm4 : this.f21736a) {
                    interfaceC6195gm4.mo1786a(this, i2, exc);
                }
            }
            this.f21743c = i;
        }
    }

    /* renamed from: a */
    public void m2756a(InterfaceC6195gm interfaceC6195gm) {
        if (interfaceC6195gm == null || this.f21736a.contains(interfaceC6195gm)) {
            return;
        }
        this.f21736a.add(interfaceC6195gm);
    }

    /* renamed from: a */
    public void m2755a(InterfaceC6197go interfaceC6197go, InterfaceC6205gw interfaceC6205gw) {
        Objects.requireNonNull(interfaceC6197go, "Packet listener is null.");
        this.f21738a.put(interfaceC6197go, new C6192a(interfaceC6197go, interfaceC6205gw));
    }

    /* renamed from: a */
    public abstract void mo2754a(AbstractC6211ha abstractC6211ha);

    /* renamed from: a */
    public abstract void mo2753a(C6381bd.C6383b c6383b);

    /* renamed from: a */
    public synchronized void m2752a(String str) {
        if (this.f21743c == 0) {
            AbstractC5876b.m4147a("setChallenge hash = " + C6022bn.m3624a(str).substring(0, 8));
            this.f21735a = str;
            m2758a(1, 0, null);
        } else {
            AbstractC5876b.m4147a("ignore setChallenge because connection was disconnected");
        }
    }

    /* renamed from: a */
    public abstract void mo2751a(String str, String str2);

    /* renamed from: a */
    public abstract void mo2711a(C6173fy[] c6173fyArr);

    /* renamed from: a */
    public boolean mo2761a() {
        return false;
    }

    /* renamed from: a */
    public synchronized boolean m2757a(long j) {
        return this.f21746e >= j;
    }

    /* renamed from: b */
    public int m2750b() {
        return this.f21743c;
    }

    /* renamed from: b */
    public String m2749b() {
        return this.f21732a.m2732b();
    }

    /* renamed from: b */
    public abstract void mo2710b(int i, Exception exc);

    /* renamed from: b */
    public abstract void mo2747b(C6173fy c6173fy);

    /* renamed from: b */
    public void m2746b(InterfaceC6195gm interfaceC6195gm) {
        this.f21736a.remove(interfaceC6195gm);
    }

    /* renamed from: b */
    public void m2745b(InterfaceC6197go interfaceC6197go, InterfaceC6205gw interfaceC6205gw) {
        Objects.requireNonNull(interfaceC6197go, "Packet listener is null.");
        this.f21742b.put(interfaceC6197go, new C6192a(interfaceC6197go, interfaceC6205gw));
    }

    /* renamed from: b */
    public abstract void mo2709b(boolean z);

    /* renamed from: b */
    public boolean m2748b() {
        return this.f21743c == 0;
    }

    /* renamed from: c */
    protected void m2744c() {
        String str;
        if (this.f21732a.m2736a() && this.f21733a == null) {
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
                this.f21733a = new C6188gh(this);
                return;
            }
            try {
                this.f21733a = (InterfaceC6204gv) cls.getConstructor(AbstractC6191gj.class, Writer.class, Reader.class).newInstance(this);
            } catch (Exception e2) {
                throw new IllegalArgumentException("Can't initialize the configured debugger!", e2);
            }
        }
    }

    /* renamed from: c */
    public boolean m2743c() {
        return this.f21743c == 1;
    }

    /* renamed from: d */
    public synchronized void m2742d() {
        this.f21746e = SystemClock.elapsedRealtime();
    }

    /* renamed from: e */
    public void m2741e() {
        synchronized (this.f21737a) {
            this.f21737a.clear();
        }
    }
}
