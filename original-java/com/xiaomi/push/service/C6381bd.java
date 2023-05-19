package com.xiaomi.push.service;

import android.content.Context;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.XMPushService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.xiaomi.push.service.bd */
/* loaded from: classes2.dex */
public class C6381bd {

    /* renamed from: a */
    private static C6381bd f23020a;

    /* renamed from: a */
    private ConcurrentHashMap<String, HashMap<String, C6383b>> f23022a = new ConcurrentHashMap<>();

    /* renamed from: a */
    private List<InterfaceC6382a> f23021a = new ArrayList();

    /* renamed from: com.xiaomi.push.service.bd$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC6382a {
        /* renamed from: a */
        void mo1385a();
    }

    /* renamed from: com.xiaomi.push.service.bd$b */
    /* loaded from: classes2.dex */
    public static class C6383b {

        /* renamed from: a */
        public Context f23024a;

        /* renamed from: a */
        Messenger f23026a;

        /* renamed from: a */
        private XMPushService f23028a;

        /* renamed from: a */
        public C6444j f23031a;

        /* renamed from: a */
        public String f23032a;

        /* renamed from: a */
        public boolean f23034a;

        /* renamed from: b */
        public String f23036b;

        /* renamed from: c */
        public String f23038c;

        /* renamed from: d */
        public String f23039d;

        /* renamed from: e */
        public String f23040e;

        /* renamed from: f */
        public String f23041f;

        /* renamed from: g */
        public String f23042g;

        /* renamed from: h */
        public String f23043h;

        /* renamed from: i */
        public String f23044i;

        /* renamed from: a */
        EnumC6387c f23030a = EnumC6387c.unbind;

        /* renamed from: a */
        private int f23023a = 0;

        /* renamed from: a */
        private List<InterfaceC6384a> f23033a = new ArrayList();

        /* renamed from: b */
        EnumC6387c f23035b = null;

        /* renamed from: b */
        private boolean f23037b = false;

        /* renamed from: a */
        private XMPushService.C6319c f23027a = new XMPushService.C6319c(this);

        /* renamed from: a */
        IBinder.DeathRecipient f23025a = null;

        /* renamed from: a */
        final C6385b f23029a = new C6385b();

        /* renamed from: com.xiaomi.push.service.bd$b$a */
        /* loaded from: classes2.dex */
        public interface InterfaceC6384a {
            /* renamed from: a */
            void mo1478a(EnumC6387c enumC6387c, EnumC6387c enumC6387c2, int i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.xiaomi.push.service.bd$b$b */
        /* loaded from: classes2.dex */
        public class C6385b extends XMPushService.AbstractC6326j {

            /* renamed from: a */
            String f23046a;

            /* renamed from: b */
            int f23047b;

            /* renamed from: b */
            String f23048b;

            /* renamed from: c */
            int f23049c;

            public C6385b() {
                super(0);
            }

            /* renamed from: a */
            public XMPushService.AbstractC6326j m1480a(int i, int i2, String str, String str2) {
                this.f23047b = i;
                this.f23049c = i2;
                this.f23048b = str2;
                this.f23046a = str;
                return this;
            }

            @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
            /* renamed from: a */
            public String mo1244a() {
                return "notify job";
            }

            @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
            /* renamed from: a */
            public void mo1243a() {
                if (C6383b.this.m1492a(this.f23047b, this.f23049c, this.f23048b)) {
                    C6383b.this.m1491a(this.f23047b, this.f23049c, this.f23046a, this.f23048b);
                    return;
                }
                AbstractC5876b.m4141b(" ignore notify client :" + C6383b.this.f23042g);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.xiaomi.push.service.bd$b$c */
        /* loaded from: classes2.dex */
        public class C6386c implements IBinder.DeathRecipient {

            /* renamed from: a */
            final Messenger f23050a;

            /* renamed from: a */
            final C6383b f23051a;

            C6386c(C6383b c6383b, Messenger messenger) {
                this.f23051a = c6383b;
                this.f23050a = messenger;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                AbstractC5876b.m4141b("peer died, chid = " + this.f23051a.f23042g);
                C6383b.this.f23028a.m1782a(new C6389bf(this, 0), 0L);
                if ("9".equals(this.f23051a.f23042g) && "com.xiaomi.xmsf".equals(C6383b.this.f23028a.getPackageName())) {
                    C6383b.this.f23028a.m1782a(new C6390bg(this, 0), 60000L);
                }
            }
        }

        public C6383b() {
        }

        public C6383b(XMPushService xMPushService) {
            this.f23028a = xMPushService;
            m1489a(new C6388be(this));
        }

        /* renamed from: a */
        public static String m1483a(String str) {
            int lastIndexOf;
            return (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf("/")) == -1) ? "" : str.substring(lastIndexOf + 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m1491a(int i, int i2, String str, String str2) {
            EnumC6387c enumC6387c = this.f23030a;
            this.f23035b = enumC6387c;
            if (i == 2) {
                this.f23031a.m1364a(this.f23024a, this, i2);
            } else if (i == 3) {
                this.f23031a.m1363a(this.f23024a, this, str2, str);
            } else if (i == 1) {
                boolean z = enumC6387c == EnumC6387c.binded;
                if (!z && "wait".equals(str2)) {
                    this.f23023a++;
                } else if (z) {
                    this.f23023a = 0;
                    if (this.f23026a != null) {
                        try {
                            this.f23026a.send(Message.obtain(null, 16, this.f23028a.f22872a));
                        } catch (RemoteException unused) {
                        }
                    }
                }
                this.f23031a.m1362a(this.f23028a, this, z, i2, str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public boolean m1492a(int i, int i2, String str) {
            boolean z;
            StringBuilder sb;
            String str2;
            EnumC6387c enumC6387c = this.f23035b;
            if (enumC6387c == null || !(z = this.f23037b)) {
                return true;
            }
            if (enumC6387c == this.f23030a) {
                sb = new StringBuilder();
                str2 = " status recovered, don't notify client:";
            } else if (this.f23026a != null && z) {
                AbstractC5876b.m4141b("Peer alive notify status to client:" + this.f23042g);
                return true;
            } else {
                sb = new StringBuilder();
                str2 = "peer died, ignore notify ";
            }
            sb.append(str2);
            sb.append(this.f23042g);
            AbstractC5876b.m4141b(sb.toString());
            return false;
        }

        /* renamed from: b */
        private boolean m1482b(int i, int i2, String str) {
            if (i == 1) {
                return (this.f23030a == EnumC6387c.binded || !this.f23028a.m1747c() || i2 == 21 || (i2 == 7 && "wait".equals(str))) ? false : true;
            } else if (i != 2) {
                if (i != 3) {
                    return false;
                }
                return !"wait".equals(str);
            } else {
                return this.f23028a.m1747c();
            }
        }

        /* renamed from: a */
        public long m1495a() {
            return (((long) ((Math.random() * 20.0d) - 10.0d)) + ((this.f23023a + 1) * 15)) * 1000;
        }

        /* renamed from: a */
        public String m1493a(int i) {
            return i != 1 ? i != 2 ? i != 3 ? "unknown" : "KICK" : "CLOSE" : "OPEN";
        }

        /* renamed from: a */
        void m1494a() {
            try {
                Messenger messenger = this.f23026a;
                if (messenger != null && this.f23025a != null) {
                    messenger.getBinder().unlinkToDeath(this.f23025a, 0);
                }
            } catch (Exception unused) {
            }
            this.f23035b = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public void m1490a(Messenger messenger) {
            m1494a();
            try {
                if (messenger != null) {
                    this.f23026a = messenger;
                    this.f23037b = true;
                    this.f23025a = new C6386c(this, messenger);
                    messenger.getBinder().linkToDeath(this.f23025a, 0);
                } else {
                    AbstractC5876b.m4141b("peer linked with old sdk chid = " + this.f23042g);
                }
            } catch (Exception e) {
                AbstractC5876b.m4141b("peer linkToDeath err: " + e.getMessage());
                this.f23026a = null;
                this.f23037b = false;
            }
        }

        /* renamed from: a */
        public void m1489a(InterfaceC6384a interfaceC6384a) {
            synchronized (this.f23033a) {
                this.f23033a.add(interfaceC6384a);
            }
        }

        /* renamed from: a */
        public void m1484a(EnumC6387c enumC6387c, int i, int i2, String str, String str2) {
            boolean z;
            synchronized (this.f23033a) {
                for (InterfaceC6384a interfaceC6384a : this.f23033a) {
                    interfaceC6384a.mo1478a(this.f23030a, enumC6387c, i2);
                }
            }
            EnumC6387c enumC6387c2 = this.f23030a;
            int i3 = 0;
            if (enumC6387c2 != enumC6387c) {
                AbstractC5876b.m4147a(String.format("update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s", enumC6387c2, enumC6387c, m1493a(i), AbstractC6391bh.m1477a(i2), str, str2, this.f23042g));
                this.f23030a = enumC6387c;
            }
            if (this.f23031a == null) {
                AbstractC5876b.m4138d("status changed while the client dispatcher is missing");
            } else if (enumC6387c != EnumC6387c.binding) {
                if (this.f23035b != null && (z = this.f23037b)) {
                    i3 = (this.f23026a == null || !z) ? Constants.REQUEST_API : XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
                }
                this.f23028a.m1752b(this.f23029a);
                if (m1482b(i, i2, str2)) {
                    m1491a(i, i2, str, str2);
                } else {
                    this.f23028a.m1782a(this.f23029a.m1480a(i, i2, str, str2), i3);
                }
            }
        }

        /* renamed from: b */
        public void m1481b(InterfaceC6384a interfaceC6384a) {
            synchronized (this.f23033a) {
                this.f23033a.remove(interfaceC6384a);
            }
        }
    }

    /* renamed from: com.xiaomi.push.service.bd$c */
    /* loaded from: classes2.dex */
    public enum EnumC6387c {
        unbind,
        binding,
        binded
    }

    private C6381bd() {
    }

    /* renamed from: a */
    public static synchronized C6381bd m1509a() {
        C6381bd c6381bd;
        synchronized (C6381bd.class) {
            if (f23020a == null) {
                f23020a = new C6381bd();
            }
            c6381bd = f23020a;
        }
        return c6381bd;
    }

    /* renamed from: a */
    private String m1502a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("@");
        return indexOf > 0 ? str.substring(0, indexOf) : str;
    }

    /* renamed from: a */
    public synchronized int m1510a() {
        return this.f23022a.size();
    }

    /* renamed from: a */
    public synchronized C6383b m1498a(String str, String str2) {
        HashMap<String, C6383b> hashMap = this.f23022a.get(str);
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(m1502a(str2));
    }

    /* renamed from: a */
    public synchronized ArrayList<C6383b> m1508a() {
        ArrayList<C6383b> arrayList;
        arrayList = new ArrayList<>();
        for (HashMap<String, C6383b> hashMap : this.f23022a.values()) {
            arrayList.addAll(hashMap.values());
        }
        return arrayList;
    }

    /* renamed from: a */
    public synchronized Collection<C6383b> m1501a(String str) {
        if (this.f23022a.containsKey(str)) {
            return ((HashMap) this.f23022a.get(str).clone()).values();
        }
        return new ArrayList();
    }

    /* renamed from: a */
    public synchronized List<String> m1500a(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (HashMap<String, C6383b> hashMap : this.f23022a.values()) {
            for (C6383b c6383b : hashMap.values()) {
                if (str.equals(c6383b.f23032a)) {
                    arrayList.add(c6383b.f23042g);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public synchronized void m1507a() {
        Iterator<C6383b> it2 = m1508a().iterator();
        while (it2.hasNext()) {
            it2.next().m1494a();
        }
        this.f23022a.clear();
    }

    /* renamed from: a */
    public synchronized void m1506a(Context context) {
        for (HashMap<String, C6383b> hashMap : this.f23022a.values()) {
            for (C6383b c6383b : hashMap.values()) {
                c6383b.m1484a(EnumC6387c.unbind, 1, 3, (String) null, (String) null);
            }
        }
    }

    /* renamed from: a */
    public synchronized void m1505a(Context context, int i) {
        for (HashMap<String, C6383b> hashMap : this.f23022a.values()) {
            for (C6383b c6383b : hashMap.values()) {
                c6383b.m1484a(EnumC6387c.unbind, 2, i, (String) null, (String) null);
            }
        }
    }

    /* renamed from: a */
    public synchronized void m1504a(InterfaceC6382a interfaceC6382a) {
        this.f23021a.add(interfaceC6382a);
    }

    /* renamed from: a */
    public synchronized void m1503a(C6383b c6383b) {
        HashMap<String, C6383b> hashMap = this.f23022a.get(c6383b.f23042g);
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.f23022a.put(c6383b.f23042g, hashMap);
        }
        hashMap.put(m1502a(c6383b.f23036b), c6383b);
        AbstractC5876b.m4147a("add active client. " + c6383b.f23032a);
        for (InterfaceC6382a interfaceC6382a : this.f23021a) {
            interfaceC6382a.mo1385a();
        }
    }

    /* renamed from: a */
    public synchronized void m1499a(String str) {
        HashMap<String, C6383b> hashMap = this.f23022a.get(str);
        if (hashMap != null) {
            for (C6383b c6383b : hashMap.values()) {
                c6383b.m1494a();
            }
            hashMap.clear();
            this.f23022a.remove(str);
        }
        for (InterfaceC6382a interfaceC6382a : this.f23021a) {
            interfaceC6382a.mo1385a();
        }
    }

    /* renamed from: a */
    public synchronized void m1497a(String str, String str2) {
        HashMap<String, C6383b> hashMap = this.f23022a.get(str);
        if (hashMap != null) {
            C6383b c6383b = hashMap.get(m1502a(str2));
            if (c6383b != null) {
                c6383b.m1494a();
            }
            hashMap.remove(m1502a(str2));
            if (hashMap.isEmpty()) {
                this.f23022a.remove(str);
            }
        }
        for (InterfaceC6382a interfaceC6382a : this.f23021a) {
            interfaceC6382a.mo1385a();
        }
    }

    /* renamed from: b */
    public synchronized void m1496b() {
        this.f23021a.clear();
    }
}
