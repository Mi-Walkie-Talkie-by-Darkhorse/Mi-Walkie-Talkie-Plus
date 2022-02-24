package com.xiaomi.push.service;

import android.content.Context;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import com.xiaomi.push.service.XMPushService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public class bd {

    /* renamed from: a  reason: collision with root package name */
    private static bd f9267a;

    /* renamed from: a  reason: collision with other field name */
    private ConcurrentHashMap<String, HashMap<String, b>> f938a = new ConcurrentHashMap<>();

    /* renamed from: a  reason: collision with other field name */
    private List<a> f937a = new ArrayList();

    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with other field name */
        public Context f939a;

        /* renamed from: a  reason: collision with other field name */
        Messenger f941a;

        /* renamed from: a  reason: collision with other field name */
        private XMPushService f943a;

        /* renamed from: a  reason: collision with other field name */
        public j f946a;

        /* renamed from: a  reason: collision with other field name */
        public String f947a;

        /* renamed from: a  reason: collision with other field name */
        public boolean f949a;

        /* renamed from: b  reason: collision with other field name */
        public String f950b;

        /* renamed from: c  reason: collision with root package name */
        public String f9270c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;

        /* renamed from: a  reason: collision with other field name */
        c f945a = c.unbind;

        /* renamed from: a  reason: collision with root package name */
        private int f9268a = 0;

        /* renamed from: a  reason: collision with other field name */
        private List<a> f948a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        c f9269b = null;

        /* renamed from: b  reason: collision with other field name */
        private boolean f951b = false;

        /* renamed from: a  reason: collision with other field name */
        private XMPushService.c f942a = new XMPushService.c(this);

        /* renamed from: a  reason: collision with other field name */
        IBinder.DeathRecipient f940a = null;

        /* renamed from: a  reason: collision with other field name */
        final C0236b f944a = new C0236b();

        /* loaded from: classes2.dex */
        public interface a {
            void a(c cVar, c cVar2, int i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.xiaomi.push.service.bd$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0236b extends XMPushService.j {

            /* renamed from: a  reason: collision with other field name */
            String f952a;

            /* renamed from: b  reason: collision with root package name */
            int f9272b;

            /* renamed from: b  reason: collision with other field name */
            String f953b;

            /* renamed from: c  reason: collision with root package name */
            int f9273c;

            public C0236b() {
                super(0);
            }

            public XMPushService.j a(int i, int i2, String str, String str2) {
                this.f9272b = i;
                this.f9273c = i2;
                this.f953b = str2;
                this.f952a = str;
                return this;
            }

            @Override // com.xiaomi.push.service.XMPushService.j
            /* renamed from: a */
            public String mo657a() {
                return "notify job";
            }

            @Override // com.xiaomi.push.service.XMPushService.j
            /* renamed from: a  reason: collision with other method in class */
            public void mo657a() {
                if (b.this.a(this.f9272b, this.f9273c, this.f953b)) {
                    b.this.a(this.f9272b, this.f9273c, this.f952a, this.f953b);
                    return;
                }
                com.xiaomi.channel.commonutils.logger.b.b(" ignore notify client :" + b.this.g);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class c implements IBinder.DeathRecipient {

            /* renamed from: a  reason: collision with root package name */
            final Messenger f9274a;

            /* renamed from: a  reason: collision with other field name */
            final b f954a;

            c(b bVar, Messenger messenger) {
                this.f954a = bVar;
                this.f9274a = messenger;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                com.xiaomi.channel.commonutils.logger.b.b("peer died, chid = " + this.f954a.g);
                b.this.f943a.a(new bf(this, 0), 0L);
                if ("9".equals(this.f954a.g) && "com.xiaomi.xmsf".equals(b.this.f943a.getPackageName())) {
                    b.this.f943a.a(new bg(this, 0), OpenStreetMapTileProviderConstants.ONE_MINUTE);
                }
            }
        }

        public b() {
        }

        public b(XMPushService xMPushService) {
            this.f943a = xMPushService;
            a(new be(this));
        }

        public static String a(String str) {
            int lastIndexOf;
            return (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf("/")) != -1) ? str.substring(lastIndexOf + 1) : "";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, int i2, String str, String str2) {
            c cVar = this.f945a;
            this.f9269b = cVar;
            if (i == 2) {
                this.f946a.a(this.f939a, this, i2);
            } else if (i == 3) {
                this.f946a.a(this.f939a, this, str2, str);
            } else if (i == 1) {
                boolean z = cVar == c.binded;
                if (!z && "wait".equals(str2)) {
                    this.f9268a++;
                } else if (z) {
                    this.f9268a = 0;
                    if (this.f941a != null) {
                        try {
                            this.f941a.send(Message.obtain(null, 16, this.f943a.f859a));
                        } catch (RemoteException unused) {
                        }
                    }
                }
                this.f946a.a(this.f943a, this, z, i2, str);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(int i, int i2, String str) {
            boolean z;
            StringBuilder sb;
            String str2;
            c cVar = this.f9269b;
            if (cVar == null || !(z = this.f951b)) {
                return true;
            }
            if (cVar == this.f945a) {
                sb = new StringBuilder();
                str2 = " status recovered, don't notify client:";
            } else if (this.f941a == null || !z) {
                sb = new StringBuilder();
                str2 = "peer died, ignore notify ";
            } else {
                com.xiaomi.channel.commonutils.logger.b.b("Peer alive notify status to client:" + this.g);
                return true;
            }
            sb.append(str2);
            sb.append(this.g);
            com.xiaomi.channel.commonutils.logger.b.b(sb.toString());
            return false;
        }

        private boolean b(int i, int i2, String str) {
            if (i == 1) {
                return this.f945a != c.binded && this.f943a.m557c() && i2 != 21 && (i2 != 7 || !"wait".equals(str));
            }
            if (i == 2) {
                return this.f943a.m557c();
            }
            if (i != 3) {
                return false;
            }
            return !"wait".equals(str);
        }

        public long a() {
            return (((long) ((Math.random() * 20.0d) - 10.0d)) + ((this.f9268a + 1) * 15)) * 1000;
        }

        public String a(int i) {
            return i != 1 ? i != 2 ? i != 3 ? "unknown" : "KICK" : "CLOSE" : "OPEN";
        }

        /* renamed from: a  reason: collision with other method in class */
        void m616a() {
            try {
                Messenger messenger = this.f941a;
                if (!(messenger == null || this.f940a == null)) {
                    messenger.getBinder().unlinkToDeath(this.f940a, 0);
                }
            } catch (Exception unused) {
            }
            this.f9269b = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(Messenger messenger) {
            m616a();
            try {
                if (messenger != null) {
                    this.f941a = messenger;
                    this.f951b = true;
                    this.f940a = new c(this, messenger);
                    messenger.getBinder().linkToDeath(this.f940a, 0);
                } else {
                    com.xiaomi.channel.commonutils.logger.b.b("peer linked with old sdk chid = " + this.g);
                }
            } catch (Exception e) {
                com.xiaomi.channel.commonutils.logger.b.b("peer linkToDeath err: " + e.getMessage());
                this.f941a = null;
                this.f951b = false;
            }
        }

        public void a(a aVar) {
            synchronized (this.f948a) {
                this.f948a.add(aVar);
            }
        }

        public void a(c cVar, int i, int i2, String str, String str2) {
            boolean z;
            synchronized (this.f948a) {
                for (a aVar : this.f948a) {
                    aVar.a(this.f945a, cVar, i2);
                }
            }
            c cVar2 = this.f945a;
            int i3 = 0;
            if (cVar2 != cVar) {
                com.xiaomi.channel.commonutils.logger.b.m1a(String.format("update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s", cVar2, cVar, a(i), bh.a(i2), str, str2, this.g));
                this.f945a = cVar;
            }
            if (this.f946a == null) {
                com.xiaomi.channel.commonutils.logger.b.d("status changed while the client dispatcher is missing");
            } else if (cVar != c.binding) {
                if (this.f9269b != null && (z = this.f951b)) {
                    i3 = (this.f941a == null || !z) ? Constants.REQUEST_API : 1000;
                }
                this.f943a.b(this.f944a);
                if (b(i, i2, str2)) {
                    a(i, i2, str, str2);
                } else {
                    this.f943a.a(this.f944a.a(i, i2, str, str2), i3);
                }
            }
        }

        public void b(a aVar) {
            synchronized (this.f948a) {
                this.f948a.remove(aVar);
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum c {
        unbind,
        binding,
        binded
    }

    private bd() {
    }

    public static synchronized bd a() {
        bd bdVar;
        synchronized (bd.class) {
            if (f9267a == null) {
                f9267a = new bd();
            }
            bdVar = f9267a;
        }
        return bdVar;
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("@");
        return indexOf > 0 ? str.substring(0, indexOf) : str;
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized int m609a() {
        return this.f938a.size();
    }

    public synchronized b a(String str, String str2) {
        HashMap<String, b> hashMap = this.f938a.get(str);
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(a(str2));
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized ArrayList<b> m610a() {
        ArrayList<b> arrayList;
        arrayList = new ArrayList<>();
        for (HashMap<String, b> hashMap : this.f938a.values()) {
            arrayList.addAll(hashMap.values());
        }
        return arrayList;
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized Collection<b> m611a(String str) {
        if (!this.f938a.containsKey(str)) {
            return new ArrayList();
        }
        return ((HashMap) this.f938a.get(str).clone()).values();
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized List<String> m612a(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (HashMap<String, b> hashMap : this.f938a.values()) {
            for (b bVar : hashMap.values()) {
                if (str.equals(bVar.f947a)) {
                    arrayList.add(bVar.g);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized void m613a() {
        Iterator<b> it = m610a().iterator();
        while (it.hasNext()) {
            it.next().m616a();
        }
        this.f938a.clear();
    }

    public synchronized void a(Context context) {
        for (HashMap<String, b> hashMap : this.f938a.values()) {
            for (b bVar : hashMap.values()) {
                bVar.a(c.unbind, 1, 3, (String) null, (String) null);
            }
        }
    }

    public synchronized void a(Context context, int i) {
        for (HashMap<String, b> hashMap : this.f938a.values()) {
            for (b bVar : hashMap.values()) {
                bVar.a(c.unbind, 2, i, (String) null, (String) null);
            }
        }
    }

    public synchronized void a(a aVar) {
        this.f937a.add(aVar);
    }

    public synchronized void a(b bVar) {
        HashMap<String, b> hashMap = this.f938a.get(bVar.g);
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.f938a.put(bVar.g, hashMap);
        }
        hashMap.put(a(bVar.f950b), bVar);
        com.xiaomi.channel.commonutils.logger.b.m1a("add active client. " + bVar.f947a);
        for (a aVar : this.f937a) {
            aVar.a();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized void m614a(String str) {
        HashMap<String, b> hashMap = this.f938a.get(str);
        if (hashMap != null) {
            for (b bVar : hashMap.values()) {
                bVar.m616a();
            }
            hashMap.clear();
            this.f938a.remove(str);
        }
        for (a aVar : this.f937a) {
            aVar.a();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized void m615a(String str, String str2) {
        HashMap<String, b> hashMap = this.f938a.get(str);
        if (hashMap != null) {
            b bVar = hashMap.get(a(str2));
            if (bVar != null) {
                bVar.m616a();
            }
            hashMap.remove(a(str2));
            if (hashMap.isEmpty()) {
                this.f938a.remove(str);
            }
        }
        for (a aVar : this.f937a) {
            aVar.a();
        }
    }

    public synchronized void b() {
        this.f937a.clear();
    }
}
