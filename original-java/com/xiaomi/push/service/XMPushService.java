package com.xiaomi.push.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.push.ad;
import com.xiaomi.push.ak;
import com.xiaomi.push.aq;
import com.xiaomi.push.bi;
import com.xiaomi.push.bn;
import com.xiaomi.push.cu;
import com.xiaomi.push.dc;
import com.xiaomi.push.de;
import com.xiaomi.push.ec;
import com.xiaomi.push.en;
import com.xiaomi.push.et;
import com.xiaomi.push.fh;
import com.xiaomi.push.fu;
import com.xiaomi.push.fw;
import com.xiaomi.push.fy;
import com.xiaomi.push.gf;
import com.xiaomi.push.gj;
import com.xiaomi.push.gk;
import com.xiaomi.push.gm;
import com.xiaomi.push.go;
import com.xiaomi.push.gp;
import com.xiaomi.push.gu;
import com.xiaomi.push.gz;
import com.xiaomi.push.ha;
import com.xiaomi.push.ho;
import com.xiaomi.push.hq;
import com.xiaomi.push.ht;
import com.xiaomi.push.hv;
import com.xiaomi.push.ia;
import com.xiaomi.push.ir;
import com.xiaomi.push.iu;
import com.xiaomi.push.iv;
import com.xiaomi.push.jf;
import com.xiaomi.push.jl;
import com.xiaomi.push.service.bd;
import com.xiaomi.push.service.n;
import com.xiaomi.push.service.receivers.BatteryReceiver;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class XMPushService extends Service implements gm {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f9200b = false;

    /* renamed from: a  reason: collision with other field name */
    private ContentObserver f858a;

    /* renamed from: a  reason: collision with other field name */
    private gf f860a;

    /* renamed from: a  reason: collision with other field name */
    private gj f861a;

    /* renamed from: a  reason: collision with other field name */
    private gk f862a;

    /* renamed from: a  reason: collision with other field name */
    private a f864a;

    /* renamed from: a  reason: collision with other field name */
    private f f865a;

    /* renamed from: a  reason: collision with other field name */
    private k f866a;

    /* renamed from: a  reason: collision with other field name */
    private n f867a;

    /* renamed from: a  reason: collision with other field name */
    private s f868a;

    /* renamed from: a  reason: collision with other field name */
    private u f869a;

    /* renamed from: a  reason: collision with other field name */
    private bn f871a;

    /* renamed from: a  reason: collision with other field name */
    private j f872a;

    /* renamed from: a  reason: collision with other field name */
    private BatteryReceiver f874a;

    /* renamed from: a  reason: collision with other field name */
    private String f876a;

    /* renamed from: b  reason: collision with other field name */
    private ContentObserver f881b;

    /* renamed from: a  reason: collision with other field name */
    private boolean f879a = false;

    /* renamed from: a  reason: collision with root package name */
    private int f9201a = 0;

    /* renamed from: b  reason: collision with other field name */
    private int f880b = 0;

    /* renamed from: a  reason: collision with other field name */
    private long f857a = 0;

    /* renamed from: a  reason: collision with other field name */
    protected Class f875a = XMJobService.class;

    /* renamed from: a  reason: collision with other field name */
    private bb f870a = null;

    /* renamed from: a  reason: collision with other field name */
    private n f873a = null;

    /* renamed from: a  reason: collision with other field name */
    Messenger f859a = null;

    /* renamed from: a  reason: collision with other field name */
    private Collection<ao> f878a = Collections.synchronizedCollection(new ArrayList());

    /* renamed from: a  reason: collision with other field name */
    private ArrayList<o> f877a = new ArrayList<>();

    /* renamed from: a  reason: collision with other field name */
    private go f863a = new cf(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with other field name */
        private final Object f882a;

        private a() {
            this.f882a = new Object();
        }

        /* synthetic */ a(XMPushService xMPushService, cf cfVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                com.xiaomi.channel.commonutils.logger.b.d("[Alarm] Cannot perform lock.notifyAll in the UI thread!");
                return;
            }
            synchronized (this.f882a) {
                try {
                    this.f882a.notifyAll();
                } catch (Exception e) {
                    com.xiaomi.channel.commonutils.logger.b.m1a("[Alarm] notify lock. " + e);
                }
            }
        }

        private void a(long j) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                com.xiaomi.channel.commonutils.logger.b.d("[Alarm] Cannot perform lock.wait in the UI thread!");
                return;
            }
            synchronized (this.f882a) {
                try {
                    this.f882a.wait(j);
                } catch (InterruptedException e) {
                    com.xiaomi.channel.commonutils.logger.b.m1a("[Alarm] interrupt from waiting state. " + e);
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            long currentTimeMillis = System.currentTimeMillis();
            com.xiaomi.channel.commonutils.logger.b.c("[Alarm] heartbeat alarm has been triggered.");
            if (!bh.q.equals(intent.getAction())) {
                com.xiaomi.channel.commonutils.logger.b.m1a("[Alarm] cancel the old ping timer");
                fh.a();
            } else if (TextUtils.equals(context.getPackageName(), intent.getPackage())) {
                com.xiaomi.channel.commonutils.logger.b.c("[Alarm] Ping XMChannelService on timer");
                try {
                    Intent intent2 = new Intent(context, XMPushService.class);
                    intent2.putExtra("time_stamp", System.currentTimeMillis());
                    intent2.setAction("com.xiaomi.push.timer");
                    ServiceClient.getInstance(context).startServiceSafely(intent2);
                    a(3000L);
                    com.xiaomi.channel.commonutils.logger.b.m1a("[Alarm] heartbeat alarm finish in " + (System.currentTimeMillis() - currentTimeMillis));
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends j {

        /* renamed from: a  reason: collision with other field name */
        bd.b f883a;

        public b(bd.b bVar) {
            super(9);
            this.f883a = null;
            this.f883a = bVar;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "bind the client. " + this.f883a.g;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            String str;
            try {
                if (!XMPushService.this.m557c()) {
                    com.xiaomi.channel.commonutils.logger.b.d("trying bind while the connection is not created, quit!");
                    return;
                }
                bd.b a2 = bd.a().a(this.f883a.g, this.f883a.f950b);
                if (a2 == null) {
                    str = "ignore bind because the channel " + this.f883a.g + " is removed ";
                } else if (a2.f945a == bd.c.unbind) {
                    a2.a(bd.c.binding, 0, 0, (String) null, (String) null);
                    XMPushService.this.f861a.a(a2);
                    fw.a(XMPushService.this, a2);
                    return;
                } else {
                    str = "trying duplicate bind, ingore! " + a2.f945a;
                }
                com.xiaomi.channel.commonutils.logger.b.m1a(str);
            } catch (Exception e) {
                com.xiaomi.channel.commonutils.logger.b.d("Meet error when trying to bind. " + e);
                XMPushService.this.a(10, e);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c extends j {

        /* renamed from: a  reason: collision with root package name */
        private final bd.b f9204a;

        public c(bd.b bVar) {
            super(12);
            this.f9204a = bVar;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "bind time out. chid=" + this.f9204a.g;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            this.f9204a.a(bd.c.unbind, 1, 21, (String) null, (String) null);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            return TextUtils.equals(((c) obj).f9204a.g, this.f9204a.g);
        }

        public int hashCode() {
            return this.f9204a.g.hashCode();
        }
    }

    /* loaded from: classes2.dex */
    class d extends j {

        /* renamed from: a  reason: collision with root package name */
        private fy f9205a;

        public d(fy fyVar) {
            super(8);
            this.f9205a = null;
            this.f9205a = fyVar;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "receive a message.";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            XMPushService.this.f870a.a(this.f9205a);
        }
    }

    /* loaded from: classes2.dex */
    public class e extends j {
        /* JADX INFO: Access modifiers changed from: package-private */
        public e() {
            super(1);
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "do reconnect..";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            if (XMPushService.this.m552a()) {
                XMPushService xMPushService = XMPushService.this;
                if (xMPushService.a(xMPushService.getApplicationContext())) {
                    XMPushService.this.f();
                    return;
                }
            }
            com.xiaomi.channel.commonutils.logger.b.m1a("should not connect. quit the job.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            com.xiaomi.channel.commonutils.logger.b.m1a("network changed, " + com.xiaomi.push.l.a(intent));
            XMPushService.this.onStart(intent, 1);
        }
    }

    /* loaded from: classes2.dex */
    public class g extends j {

        /* renamed from: a  reason: collision with other field name */
        public Exception f885a;

        /* renamed from: b  reason: collision with root package name */
        public int f9209b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(int i, Exception exc) {
            super(2);
            this.f9209b = i;
            this.f885a = exc;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "disconnect the connection.";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            XMPushService.this.a(this.f9209b, this.f885a);
        }
    }

    /* loaded from: classes2.dex */
    class h extends j {
        h() {
            super(65535);
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "Init Job";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            XMPushService.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i extends j {

        /* renamed from: a  reason: collision with root package name */
        private Intent f9211a;

        public i(Intent intent) {
            super(15);
            this.f9211a = null;
            this.f9211a = intent;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "Handle intent action = " + this.f9211a.getAction();
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            XMPushService.this.d(this.f9211a);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class j extends n.b {
        public j(int i) {
            super(i);
        }

        /* renamed from: a */
        public abstract String mo657a();

        public abstract void a();

        @Override // java.lang.Runnable
        public void run() {
            int i = this.f9339a;
            if (!(i == 4 || i == 8)) {
                com.xiaomi.channel.commonutils.logger.b.m2a(com.xiaomi.channel.commonutils.logger.a.f8646a, mo657a());
            }
            a();
        }
    }

    /* loaded from: classes2.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            com.xiaomi.channel.commonutils.logger.b.m1a("[HB] hold short heartbeat, " + com.xiaomi.push.l.a(intent));
            if (intent != null && intent.getExtras() != null) {
                XMPushService.this.onStart(intent, 1);
            }
        }
    }

    /* loaded from: classes2.dex */
    class l extends j {
        public l() {
            super(5);
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "ask the job queue to quit";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            XMPushService.this.f873a.m637a();
        }
    }

    /* loaded from: classes2.dex */
    class m extends j {

        /* renamed from: a  reason: collision with root package name */
        private ha f9214a;

        public m(ha haVar) {
            super(8);
            this.f9214a = null;
            this.f9214a = haVar;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "receive a message.";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            XMPushService.this.f870a.a(this.f9214a);
        }
    }

    /* loaded from: classes2.dex */
    private class n extends BroadcastReceiver {
        private n() {
        }

        /* synthetic */ n(XMPushService xMPushService, cf cfVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            com.xiaomi.channel.commonutils.logger.b.m1a("[Guardian] parents guardian receiver ");
            XMPushService.this.j();
        }
    }

    /* loaded from: classes2.dex */
    public interface o {
        /* renamed from: a */
        void mo351a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class p extends j {

        /* renamed from: a  reason: collision with other field name */
        boolean f888a;

        public p(boolean z) {
            super(4);
            this.f888a = z;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "send ping..";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            if (XMPushService.this.m557c()) {
                try {
                    if (!this.f888a) {
                        fw.a();
                    }
                    XMPushService.this.f861a.b(this.f888a);
                } catch (gu e) {
                    com.xiaomi.channel.commonutils.logger.b.a(e);
                    XMPushService.this.a(10, e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class q extends j {

        /* renamed from: a  reason: collision with other field name */
        bd.b f889a;

        public q(bd.b bVar) {
            super(4);
            this.f889a = null;
            this.f889a = bVar;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "rebind the client. " + this.f889a.g;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            try {
                this.f889a.a(bd.c.unbind, 1, 16, (String) null, (String) null);
                XMPushService.this.f861a.a(this.f889a.g, this.f889a.f950b);
                XMPushService.this.a(new b(this.f889a), 300L);
            } catch (gu e) {
                com.xiaomi.channel.commonutils.logger.b.a(e);
                XMPushService.this.a(10, e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class r extends j {
        r() {
            super(3);
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "reset the connection.";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            XMPushService.this.a(11, (Exception) null);
            if (XMPushService.this.m552a()) {
                XMPushService xMPushService = XMPushService.this;
                if (xMPushService.a(xMPushService.getApplicationContext())) {
                    XMPushService.this.f();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class s extends BroadcastReceiver {
        s() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            XMPushService.this.onStart(intent, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class t extends j {

        /* renamed from: a  reason: collision with other field name */
        bd.b f890a;

        /* renamed from: a  reason: collision with other field name */
        String f891a;

        /* renamed from: b  reason: collision with root package name */
        int f9221b;

        /* renamed from: b  reason: collision with other field name */
        String f892b;

        public t(bd.b bVar, int i, String str, String str2) {
            super(9);
            this.f890a = null;
            this.f890a = bVar;
            this.f9221b = i;
            this.f891a = str;
            this.f892b = str2;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a */
        public String mo657a() {
            return "unbind the channel. " + this.f890a.g;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        /* renamed from: a  reason: collision with other method in class */
        public void mo657a() {
            if (!(this.f890a.f945a == bd.c.unbind || XMPushService.this.f861a == null)) {
                try {
                    XMPushService.this.f861a.a(this.f890a.g, this.f890a.f950b);
                } catch (gu e) {
                    com.xiaomi.channel.commonutils.logger.b.a(e);
                    XMPushService.this.a(10, e);
                }
            }
            this.f890a.a(bd.c.unbind, this.f9221b, 0, this.f892b, this.f891a);
        }
    }

    /* loaded from: classes2.dex */
    class u extends BroadcastReceiver {
        u() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!XMPushService.this.f879a) {
                XMPushService.this.f879a = true;
            }
            com.xiaomi.channel.commonutils.logger.b.m1a("[HB] wifi changed, " + com.xiaomi.push.l.a(intent));
            XMPushService.this.onStart(intent, 1);
        }
    }

    private ha a(ha haVar, String str, String str2) {
        StringBuilder sb;
        String str3;
        bd a2 = bd.a();
        List<String> a3 = a2.m612a(str);
        if (a3.isEmpty()) {
            sb = new StringBuilder();
            str3 = "open channel should be called first before sending a packet, pkg=";
        } else {
            haVar.o(str);
            str = haVar.k();
            if (TextUtils.isEmpty(str)) {
                str = a3.get(0);
                haVar.l(str);
            }
            bd.b a4 = a2.a(str, haVar.m());
            if (!m557c()) {
                sb = new StringBuilder();
                str3 = "drop a packet as the channel is not connected, chid=";
            } else if (a4 == null || a4.f945a != bd.c.binded) {
                sb = new StringBuilder();
                str3 = "drop a packet as the channel is not opened, chid=";
            } else if (TextUtils.equals(str2, a4.i)) {
                return haVar;
            } else {
                sb = new StringBuilder();
                sb.append("invalid session. ");
                sb.append(str2);
                com.xiaomi.channel.commonutils.logger.b.m1a(sb.toString());
                return null;
            }
        }
        sb.append(str3);
        sb.append(str);
        com.xiaomi.channel.commonutils.logger.b.m1a(sb.toString());
        return null;
    }

    private bd.b a(String str, Intent intent) {
        bd.b a2 = bd.a().a(str, intent.getStringExtra(bh.r));
        if (a2 == null) {
            a2 = new bd.b(this);
        }
        a2.g = intent.getStringExtra(bh.u);
        a2.f950b = intent.getStringExtra(bh.r);
        a2.f9270c = intent.getStringExtra(bh.w);
        a2.f947a = intent.getStringExtra(bh.C);
        a2.e = intent.getStringExtra(bh.A);
        a2.f = intent.getStringExtra(bh.B);
        a2.f949a = intent.getBooleanExtra(bh.z, false);
        a2.h = intent.getStringExtra(bh.y);
        a2.i = intent.getStringExtra(bh.G);
        a2.d = intent.getStringExtra(bh.x);
        a2.f946a = this.f872a;
        a2.a((Messenger) intent.getParcelableExtra(bh.K));
        a2.f939a = getApplicationContext();
        bd.a().a(a2);
        return a2;
    }

    private String a() {
        String a2 = com.xiaomi.push.l.m525a("ro.miui.region");
        return TextUtils.isEmpty(a2) ? com.xiaomi.push.l.m525a("ro.product.locale.region") : a2;
    }

    private void a(BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver != null) {
            try {
                unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException e2) {
                com.xiaomi.channel.commonutils.logger.b.a(e2);
            }
        }
    }

    private void a(Intent intent) {
        Bundle extras;
        if (intent != null && (extras = intent.getExtras()) != null) {
            et.a(getApplicationContext()).a(extras.getString("digest"));
        }
    }

    private void a(Intent intent, int i2) {
        byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
        boolean booleanExtra = intent.getBooleanExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
        iu iuVar = new iu();
        try {
            jf.a(iuVar, byteArrayExtra);
            ak.a(getApplicationContext()).a((ak.a) new b(iuVar, new WeakReference(this), booleanExtra), i2);
        } catch (jl unused) {
            com.xiaomi.channel.commonutils.logger.b.d("aw_ping : send help app ping  error");
        }
    }

    private void a(a aVar) {
        String str;
        String str2;
        if (aVar == null || !TextUtils.isEmpty(aVar.b()) || TextUtils.isEmpty(aVar.a())) {
            str = "no need to check country code";
        } else {
            String a2 = "com.xiaomi.xmsf".equals(getPackageName()) ? a() : com.xiaomi.push.l.b();
            if (!TextUtils.isEmpty(a2)) {
                String name = com.xiaomi.push.l.a(a2).name();
                if (TextUtils.equals(name, aVar.a())) {
                    aVar.b(a2);
                    str2 = "update country code";
                } else {
                    str2 = "not update country code, because not equals " + name;
                }
                com.xiaomi.channel.commonutils.logger.b.m1a(str2);
                return;
            }
            str = "check no country code";
        }
        com.xiaomi.channel.commonutils.logger.b.b(str);
    }

    private static void a(String str) {
        String str2;
        String str3;
        if (com.xiaomi.push.p.China.name().equals(str)) {
            cu.a("cn.app.chat.xiaomi.net", "cn.app.chat.xiaomi.net");
            cu.a("cn.app.chat.xiaomi.net", "111.13.141.211:443");
            cu.a("cn.app.chat.xiaomi.net", "39.156.81.172:443");
            cu.a("cn.app.chat.xiaomi.net", "111.202.1.250:443");
            cu.a("cn.app.chat.xiaomi.net", "123.125.102.213:443");
            str2 = "resolver.msg.xiaomi.net";
            cu.a(str2, "111.13.142.153:443");
            str3 = "111.202.1.252:443";
        } else {
            cu.a("app.chat.global.xiaomi.net", "app.chat.global.xiaomi.net");
            str2 = "resolver.msg.global.xiaomi.net";
            cu.a(str2, "161.117.97.14:443");
            str3 = "161.117.180.178:443";
        }
        cu.a(str2, str3);
    }

    private void a(String str, int i2) {
        Collection<bd.b> a2 = bd.a().m611a(str);
        if (a2 != null) {
            for (bd.b bVar : a2) {
                if (bVar != null) {
                    a(new t(bVar, i2, null, null));
                }
            }
        }
        bd.a().m614a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Context context) {
        try {
            aq.a();
            for (int i2 = 100; i2 > 0; i2--) {
                if (bi.c(context)) {
                    com.xiaomi.channel.commonutils.logger.b.m1a("network connectivity ok.");
                    return true;
                }
                try {
                    Thread.sleep(100L);
                } catch (Exception unused) {
                }
            }
            return false;
        } catch (Exception unused2) {
            return true;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private boolean m541a(String str, Intent intent) {
        bd.b a2 = bd.a().a(str, intent.getStringExtra(bh.r));
        boolean z = false;
        if (a2 == null || str == null) {
            return false;
        }
        String stringExtra = intent.getStringExtra(bh.G);
        String stringExtra2 = intent.getStringExtra(bh.y);
        if (!TextUtils.isEmpty(a2.i) && !TextUtils.equals(stringExtra, a2.i)) {
            com.xiaomi.channel.commonutils.logger.b.m1a("session changed. old session=" + a2.i + ", new session=" + stringExtra + " chid = " + str);
            z = true;
        }
        if (stringExtra2.equals(a2.h)) {
            return z;
        }
        com.xiaomi.channel.commonutils.logger.b.m1a("security changed. chid = " + str + " sechash = " + bn.a(stringExtra2));
        return true;
    }

    /* renamed from: a  reason: collision with other method in class */
    private int[] m542a() {
        String[] split;
        String a2 = ax.a(getApplicationContext()).a(ia.FallDownTimeRange.a(), "");
        if (!TextUtils.isEmpty(a2) && (split = a2.split(Constants.ACCEPT_TIME_SEPARATOR_SP)) != null && split.length >= 2) {
            int[] iArr = new int[2];
            try {
                iArr[0] = Integer.valueOf(split[0]).intValue();
                iArr[1] = Integer.valueOf(split[1]).intValue();
                if (iArr[0] >= 0 && iArr[0] <= 23 && iArr[1] >= 0 && iArr[1] <= 23) {
                    if (iArr[0] != iArr[1]) {
                        return iArr;
                    }
                }
            } catch (NumberFormatException e2) {
                com.xiaomi.channel.commonutils.logger.b.d("parse falldown time range failure: " + e2);
            }
        }
        return null;
    }

    private String b() {
        String str;
        aq.a();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Object obj = new Object();
        String str2 = null;
        int i2 = 0;
        if ("com.xiaomi.xmsf".equals(getPackageName())) {
            bk a2 = bk.a(this);
            str = null;
            while (true) {
                if (!TextUtils.isEmpty(str) && a2.a() != 0) {
                    break;
                }
                if (TextUtils.isEmpty(str)) {
                    str = a();
                }
                try {
                    synchronized (obj) {
                        if (i2 < 30) {
                            obj.wait(1000L);
                        } else {
                            obj.wait(30000L);
                        }
                    }
                } catch (InterruptedException unused) {
                }
                i2++;
            }
        } else {
            str = com.xiaomi.push.l.b();
        }
        if (!TextUtils.isEmpty(str)) {
            a.a(getApplicationContext()).b(str);
            str2 = com.xiaomi.push.l.a(str).name();
        }
        com.xiaomi.channel.commonutils.logger.b.m1a("wait region :" + str2 + " cost = " + (SystemClock.elapsedRealtime() - elapsedRealtime) + " , count = " + i2);
        return str2;
    }

    private void b(Intent intent) {
        long j2;
        String stringExtra = intent.getStringExtra(bh.C);
        String stringExtra2 = intent.getStringExtra(bh.G);
        Bundle bundleExtra = intent.getBundleExtra("ext_packet");
        bd a2 = bd.a();
        fy fyVar = null;
        if (bundleExtra != null) {
            gz gzVar = (gz) a(new gz(bundleExtra), stringExtra, stringExtra2);
            if (gzVar != null) {
                fyVar = fy.a(gzVar, a2.a(gzVar.k(), gzVar.m()).h);
            } else {
                return;
            }
        } else {
            byte[] byteArrayExtra = intent.getByteArrayExtra("ext_raw_packet");
            if (byteArrayExtra != null) {
                try {
                    j2 = Long.parseLong(intent.getStringExtra(bh.r));
                } catch (NumberFormatException unused) {
                    j2 = 0;
                }
                String stringExtra3 = intent.getStringExtra(bh.s);
                String stringExtra4 = intent.getStringExtra(bh.t);
                String stringExtra5 = intent.getStringExtra("ext_chid");
                bd.b a3 = a2.a(stringExtra5, String.valueOf(j2));
                if (a3 != null) {
                    fy fyVar2 = new fy();
                    try {
                        fyVar2.a(Integer.parseInt(stringExtra5));
                    } catch (NumberFormatException unused2) {
                    }
                    fyVar2.a("SECMSG", (String) null);
                    if (TextUtils.isEmpty(stringExtra3)) {
                        stringExtra3 = "xiaomi.com";
                    }
                    fyVar2.a(j2, stringExtra3, stringExtra4);
                    fyVar2.a(intent.getStringExtra("ext_pkt_id"));
                    fyVar2.a(byteArrayExtra, a3.h);
                    com.xiaomi.channel.commonutils.logger.b.m1a("send a message: chid=" + stringExtra5 + ", packetId=" + intent.getStringExtra("ext_pkt_id"));
                    fyVar = fyVar2;
                }
            }
        }
        if (fyVar != null) {
            c(new bq(this, fyVar));
        }
    }

    private void b(boolean z) {
        this.f857a = SystemClock.elapsedRealtime();
        if (m557c()) {
            if (bi.b(this)) {
                c(new p(z));
                return;
            }
            c(new g(17, null));
        }
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        String str;
        a a2 = a.a(getApplicationContext());
        String a3 = a2.a();
        com.xiaomi.channel.commonutils.logger.b.m1a("region of cache is " + a3);
        if (TextUtils.isEmpty(a3)) {
            a3 = b();
        } else {
            a(a2);
        }
        if (!TextUtils.isEmpty(a3)) {
            this.f876a = a3;
            a2.a(a3);
            if (com.xiaomi.push.p.Global.name().equals(this.f876a)) {
                str = "app.chat.global.xiaomi.net";
            } else if (com.xiaomi.push.p.Europe.name().equals(this.f876a)) {
                str = "fr.app.chat.global.xiaomi.net";
            } else if (com.xiaomi.push.p.Russia.name().equals(this.f876a)) {
                str = "ru.app.chat.global.xiaomi.net";
            } else if (com.xiaomi.push.p.India.name().equals(this.f876a)) {
                str = "idmb.app.chat.global.xiaomi.net";
            }
            gk.a(str);
        } else {
            this.f876a = com.xiaomi.push.p.China.name();
        }
        if (com.xiaomi.push.p.China.name().equals(this.f876a)) {
            gk.a("cn.app.chat.xiaomi.net");
        }
        a(this.f876a);
        if (m547i()) {
            cs csVar = new cs(this, 11);
            a(csVar);
            s.a(new ct(this, csVar));
        }
        try {
            if (com.xiaomi.push.u.m661a()) {
                this.f872a.a(this);
            }
        } catch (Exception e2) {
            com.xiaomi.channel.commonutils.logger.b.a(e2);
        }
    }

    private void c(Intent intent) {
        String stringExtra = intent.getStringExtra(bh.C);
        String stringExtra2 = intent.getStringExtra(bh.G);
        Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra("ext_packets");
        int length = parcelableArrayExtra.length;
        gz[] gzVarArr = new gz[length];
        intent.getBooleanExtra("ext_encrypt", true);
        for (int i2 = 0; i2 < parcelableArrayExtra.length; i2++) {
            gzVarArr[i2] = new gz((Bundle) parcelableArrayExtra[i2]);
            gzVarArr[i2] = (gz) a(gzVarArr[i2], stringExtra, stringExtra2);
            if (gzVarArr[i2] == null) {
                return;
            }
        }
        bd a2 = bd.a();
        fy[] fyVarArr = new fy[length];
        for (int i3 = 0; i3 < length; i3++) {
            gz gzVar = gzVarArr[i3];
            fyVarArr[i3] = fy.a(gzVar, a2.a(gzVar.k(), gzVar.m()).h);
        }
        c(new c(this, fyVarArr));
    }

    private void c(j jVar) {
        this.f873a.a(jVar);
    }

    private void c(boolean z) {
        try {
            if (!com.xiaomi.push.u.m661a()) {
                return;
            }
            if (z) {
                sendBroadcast(new Intent("miui.intent.action.NETWORK_CONNECTED"));
                for (ao aoVar : (ao[]) this.f878a.toArray(new ao[0])) {
                    aoVar.a();
                }
                return;
            }
            sendBroadcast(new Intent("miui.intent.action.NETWORK_BLOCKED"));
        } catch (Exception e2) {
            com.xiaomi.channel.commonutils.logger.b.a(e2);
        }
    }

    private void d() {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e2) {
            com.xiaomi.channel.commonutils.logger.b.a(e2);
            networkInfo = null;
        }
        et.a(getApplicationContext()).a(networkInfo);
        if (networkInfo != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("network changed,");
            sb.append("[type: " + networkInfo.getTypeName() + "[" + networkInfo.getSubtypeName() + "], state: " + networkInfo.getState() + "/" + networkInfo.getDetailedState());
            com.xiaomi.channel.commonutils.logger.b.m1a(sb.toString());
            NetworkInfo.State state = networkInfo.getState();
            if (state == NetworkInfo.State.SUSPENDED || state == NetworkInfo.State.UNKNOWN) {
                return;
            }
        } else {
            com.xiaomi.channel.commonutils.logger.b.m1a("network changed, no active network");
        }
        if (fu.a() != null) {
            fu.a().m283a();
        }
        ho.m349a((Context) this);
        this.f860a.e();
        if (bi.b(this)) {
            if (m557c() && m544f()) {
                b(false);
            }
            if (!m557c() && !m558d()) {
                this.f873a.a(1);
                a(new e());
            }
            de.a(this).a();
        } else {
            a(new g(2, null));
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:146:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:365:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(android.content.Intent r12) {
        /*
            Method dump skipped, instructions count: 2308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.XMPushService.d(android.content.Intent):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (!m552a()) {
            fh.a();
        } else if (!fh.m273a()) {
            fh.a(true);
        }
    }

    private void e(Intent intent) {
        int i2;
        try {
            ec.a(getApplicationContext()).a(new bj());
            String stringExtra = intent.getStringExtra("mipush_app_package");
            byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
            if (byteArrayExtra != null) {
                iu iuVar = new iu();
                jf.a(iuVar, byteArrayExtra);
                String b2 = iuVar.b();
                Map<String, String> a2 = iuVar.m446a();
                if (a2 != null) {
                    String str = a2.get("extra_help_aw_info");
                    String str2 = a2.get("extra_aw_app_online_cmd");
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            i2 = Integer.parseInt(str2);
                        } catch (NumberFormatException unused) {
                            i2 = 0;
                        }
                        if (!TextUtils.isEmpty(stringExtra) && !TextUtils.isEmpty(b2) && !TextUtils.isEmpty(str)) {
                            ec.a(getApplicationContext()).a(this, str, i2, stringExtra, b2);
                        }
                    }
                }
            }
        } catch (jl e2) {
            com.xiaomi.channel.commonutils.logger.b.d("aw_logic: translate fail. " + e2.getMessage());
        }
    }

    /* renamed from: e  reason: collision with other method in class */
    public static boolean m543e() {
        return f9200b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        String str;
        gj gjVar = this.f861a;
        if (gjVar == null || !gjVar.m319b()) {
            gj gjVar2 = this.f861a;
            if (gjVar2 == null || !gjVar2.m320c()) {
                this.f862a.b(bi.m94a((Context) this));
                g();
                if (this.f861a == null) {
                    bd.a().a(this);
                    c(false);
                    return;
                }
                return;
            }
            str = "try to connect while is connected.";
        } else {
            str = "try to connect while connecting.";
        }
        com.xiaomi.channel.commonutils.logger.b.d(str);
    }

    /* renamed from: f  reason: collision with other method in class */
    private boolean m544f() {
        if (SystemClock.elapsedRealtime() - this.f857a < 30000) {
            return false;
        }
        return bi.d(this);
    }

    private void g() {
        try {
            this.f860a.a(this.f863a, new cj(this));
            this.f860a.f();
            this.f861a = this.f860a;
        } catch (gu e2) {
            com.xiaomi.channel.commonutils.logger.b.a("fail to create Slim connection", e2);
            this.f860a.b(3, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g  reason: collision with other method in class */
    public boolean m545g() {
        return "com.xiaomi.xmsf".equals(getPackageName()) && Settings.Secure.getInt(getContentResolver(), "EXTREME_POWER_MODE_ENABLE", 0) == 1;
    }

    private void h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h  reason: collision with other method in class */
    public boolean m546h() {
        return "com.xiaomi.xmsf".equals(getPackageName()) && Settings.System.getInt(getContentResolver(), "power_supersave_mode_open", 0) == 1;
    }

    private void i() {
        synchronized (this.f877a) {
            this.f877a.clear();
        }
    }

    /* renamed from: i  reason: collision with other method in class */
    private boolean m547i() {
        return "com.xiaomi.xmsf".equals(getPackageName()) || !t.a(this).m652b(getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        a(new cl(this, 17));
    }

    /* renamed from: j  reason: collision with other method in class */
    private boolean m548j() {
        return getApplicationContext().getPackageName().equals("com.xiaomi.xmsf") && k() && !com.xiaomi.push.i.m370b((Context) this) && !com.xiaomi.push.i.m368a(getApplicationContext());
    }

    private boolean k() {
        int intValue = Integer.valueOf(String.format("%tH", new Date())).intValue();
        int i2 = this.f9201a;
        int i3 = this.f880b;
        if (i2 > i3) {
            if (intValue >= i2 || intValue < i3) {
                return true;
            }
        } else if (i2 < i3 && intValue >= i2 && intValue < i3) {
            return true;
        }
        return false;
    }

    private boolean l() {
        if (TextUtils.equals(getPackageName(), "com.xiaomi.xmsf")) {
            return false;
        }
        return ax.a(this).a(ia.ForegroundServiceSwitch.a(), false);
    }

    /* renamed from: a  reason: collision with other method in class */
    public gj m549a() {
        return this.f861a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public j m550a() {
        return new j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public void m551a() {
        if (SystemClock.elapsedRealtime() - this.f857a >= gp.a() && bi.d(this)) {
            b(true);
        }
    }

    public void a(int i2) {
        this.f873a.a(i2);
    }

    public void a(int i2, Exception exc) {
        StringBuilder sb = new StringBuilder();
        sb.append("disconnect ");
        sb.append(hashCode());
        sb.append(", ");
        gj gjVar = this.f861a;
        sb.append(gjVar == null ? null : Integer.valueOf(gjVar.hashCode()));
        com.xiaomi.channel.commonutils.logger.b.m1a(sb.toString());
        gj gjVar2 = this.f861a;
        if (gjVar2 != null) {
            gjVar2.b(i2, exc);
            this.f861a = null;
        }
        a(7);
        a(4);
        bd.a().a(this, i2);
    }

    public void a(fy fyVar) {
        gj gjVar = this.f861a;
        if (gjVar != null) {
            gjVar.b(fyVar);
            return;
        }
        throw new gu("try send msg while connection is null.");
    }

    @Override // com.xiaomi.push.gm
    public void a(gj gjVar) {
        com.xiaomi.channel.commonutils.logger.b.c("begin to connect...");
        fu.a().a(gjVar);
    }

    @Override // com.xiaomi.push.gm
    public void a(gj gjVar, int i2, Exception exc) {
        fu.a().a(gjVar, i2, exc);
        if (!m548j()) {
            a(false);
        }
    }

    @Override // com.xiaomi.push.gm
    public void a(gj gjVar, Exception exc) {
        fu.a().a(gjVar, exc);
        c(false);
        if (!m548j()) {
            a(false);
        }
    }

    public void a(j jVar) {
        a(jVar, 0L);
    }

    public void a(j jVar, long j2) {
        try {
            this.f873a.a(jVar, j2);
        } catch (IllegalStateException e2) {
            com.xiaomi.channel.commonutils.logger.b.m1a("can't execute job err = " + e2.getMessage());
        }
    }

    public void a(o oVar) {
        synchronized (this.f877a) {
            this.f877a.add(oVar);
        }
    }

    public void a(bd.b bVar) {
        if (bVar != null) {
            long a2 = bVar.a();
            com.xiaomi.channel.commonutils.logger.b.m1a("schedule rebind job in " + (a2 / 1000));
            a(new b(bVar), a2);
        }
    }

    public void a(String str, String str2, int i2, String str3, String str4) {
        bd.b a2 = bd.a().a(str, str2);
        if (a2 != null) {
            a(new t(a2, i2, str4, str3));
        }
        bd.a().m615a(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, byte[] bArr, boolean z) {
        Collection<bd.b> a2 = bd.a().m611a("5");
        if (a2.isEmpty()) {
            if (!z) {
                return;
            }
        } else if (a2.iterator().next().f945a == bd.c.binded) {
            a(new ch(this, 4, str, bArr));
            return;
        } else if (!z) {
            return;
        }
        v.b(str, bArr);
    }

    public void a(boolean z) {
        this.f871a.a(z);
    }

    public void a(byte[] bArr, String str) {
        if (bArr == null) {
            v.a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, "null payload");
            com.xiaomi.channel.commonutils.logger.b.m1a("register request without payload");
            return;
        }
        ir irVar = new ir();
        try {
            jf.a(irVar, bArr);
            if (irVar.f647a == hv.Registration) {
                iv ivVar = new iv();
                try {
                    jf.a(ivVar, irVar.m436a());
                    a(new u(this, irVar.b(), ivVar.b(), ivVar.c(), bArr));
                    en.a(getApplicationContext()).a(irVar.b(), "E100003", ivVar.a(), 6002, null);
                } catch (jl e2) {
                    com.xiaomi.channel.commonutils.logger.b.d("app register error. " + e2);
                    v.a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, " data action error.");
                }
            } else {
                v.a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, " registration action required.");
                com.xiaomi.channel.commonutils.logger.b.m1a("register request with invalid payload");
            }
        } catch (jl e3) {
            com.xiaomi.channel.commonutils.logger.b.d("app register fail. " + e3);
            v.a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, " data container error.");
        }
    }

    public void a(fy[] fyVarArr) {
        gj gjVar = this.f861a;
        if (gjVar != null) {
            gjVar.a(fyVarArr);
            return;
        }
        throw new gu("try send msg while connection is null.");
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m552a() {
        boolean b2 = bi.b(this);
        boolean z = bd.a().m609a() > 0;
        boolean z2 = !m556b();
        boolean i2 = m547i();
        boolean z3 = !m546h();
        boolean z4 = !m545g();
        boolean z5 = b2 && z && z2 && i2 && z3 && z4;
        if (!z5) {
            com.xiaomi.channel.commonutils.logger.b.e(String.format("not conn, net=%s;cnt=%s;!dis=%s;enb=%s;!spm=%s;!eps=%s", Boolean.valueOf(b2), Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(i2), Boolean.valueOf(z3), Boolean.valueOf(z4)));
        }
        return z5;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m553a(int i2) {
        return this.f873a.m639a(i2);
    }

    /* renamed from: b  reason: collision with other method in class */
    public j m554b() {
        return this.f872a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b  reason: collision with other method in class */
    public void m555b() {
        et.a(getApplicationContext()).c();
        Iterator it = new ArrayList(this.f877a).iterator();
        while (it.hasNext()) {
            ((o) it.next()).mo351a();
        }
    }

    @Override // com.xiaomi.push.gm
    public void b(gj gjVar) {
        fu.a().b(gjVar);
        c(true);
        this.f871a.m623a();
        if (!fh.m273a() && !m548j()) {
            com.xiaomi.channel.commonutils.logger.b.m1a("reconnection successful, reactivate alarm.");
            fh.a(true);
        }
        Iterator<bd.b> it = bd.a().m610a().iterator();
        while (it.hasNext()) {
            a(new b(it.next()));
        }
        if (!this.f879a && com.xiaomi.push.l.m528a(getApplicationContext())) {
            ak.a(getApplicationContext()).a(new ck(this));
        }
    }

    public void b(j jVar) {
        this.f873a.a(jVar.f9339a, jVar);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m556b() {
        try {
            Class<?> a2 = com.xiaomi.push.u.a(this, "miui.os.Build");
            Field field = a2.getField("IS_CM_CUSTOMIZATION_TEST");
            Field field2 = a2.getField("IS_CU_CUSTOMIZATION_TEST");
            Field field3 = a2.getField("IS_CT_CUSTOMIZATION_TEST");
            if (!field.getBoolean(null) && !field2.getBoolean(null)) {
                if (!field3.getBoolean(null)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m557c() {
        gj gjVar = this.f861a;
        return gjVar != null && gjVar.m320c();
    }

    /* renamed from: d  reason: collision with other method in class */
    public boolean m558d() {
        gj gjVar = this.f861a;
        return gjVar != null && gjVar.m319b();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f859a.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        String[] split;
        super.onCreate();
        com.xiaomi.channel.commonutils.logger.b.a(getApplicationContext());
        com.xiaomi.push.u.m660a((Context) this);
        r a2 = s.m648a((Context) this);
        if (a2 != null) {
            ad.a(a2.f9351a);
        }
        if (com.xiaomi.push.l.m528a(getApplicationContext())) {
            HandlerThread handlerThread = new HandlerThread("hb-alarm");
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper());
            this.f864a = new a(this, null);
            registerReceiver(this.f864a, new IntentFilter(bh.q), null, handler);
            f9200b = true;
            handler.post(new cm(this));
        }
        this.f859a = new Messenger(new cn(this));
        bi.a(this);
        co coVar = new co(this, null, 5222, "xiaomi.com", null);
        this.f862a = coVar;
        coVar.a(true);
        this.f860a = new gf(this, this.f862a);
        this.f872a = m550a();
        fh.a(this);
        this.f860a.a(this);
        this.f870a = new bb(this);
        this.f871a = new bn(this);
        new k().a();
        fu.m284a().a(this);
        this.f873a = new n("Connection Controller Thread");
        bd a3 = bd.a();
        a3.b();
        a3.a(new cp(this));
        if (l()) {
            h();
        }
        ht.a(this).a(new p(this), "UPLOADER_PUSH_CHANNEL");
        a(new hq(this));
        a(new cd(this));
        if (com.xiaomi.push.l.m528a((Context) this)) {
            a(new bc());
        }
        a(new h());
        this.f878a.add(bu.a(this));
        if (m547i()) {
            this.f865a = new f();
            registerReceiver(this.f865a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        if (com.xiaomi.push.l.m528a(getApplicationContext())) {
            this.f869a = new u();
            registerReceiver(this.f869a, new IntentFilter("miui.net.wifi.DIGEST_INFORMATION_CHANGED"), "miui.net.wifi.permission.ACCESS_WIFI_DIGEST_INFO", null);
            k kVar = new k();
            this.f866a = kVar;
            registerReceiver(kVar, new IntentFilter("com.xiaomi.xmsf.USE_INTELLIGENT_HB"), "com.xiaomi.xmsf.permission.INTELLIGENT_HB", null);
            HandlerThread handlerThread2 = new HandlerThread("battery_thread");
            handlerThread2.start();
            Handler handler2 = new Handler(handlerThread2.getLooper());
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
            registerReceiver(this.f874a, intentFilter, null, handler2);
            HandlerThread handlerThread3 = new HandlerThread("guardian_thread");
            handlerThread3.start();
            Handler handler3 = new Handler(handlerThread3.getLooper());
            this.f867a = new n(this, null);
            registerReceiver(this.f867a, new IntentFilter(bh.p), "com.miui.greenguard.permission.RECV_PARENTS_GUARDIAN", handler3);
            j();
        }
        et.a(getApplicationContext()).m237a();
        if ("com.xiaomi.xmsf".equals(getPackageName())) {
            Uri uriFor = Settings.Secure.getUriFor("EXTREME_POWER_MODE_ENABLE");
            if (uriFor != null) {
                this.f858a = new cq(this, new Handler(Looper.getMainLooper()));
                try {
                    getContentResolver().registerContentObserver(uriFor, false, this.f858a);
                } catch (Throwable th) {
                    com.xiaomi.channel.commonutils.logger.b.m1a("register observer err:" + th.getMessage());
                }
            }
            Uri uriFor2 = Settings.System.getUriFor("power_supersave_mode_open");
            if (uriFor2 != null) {
                this.f881b = new cr(this, new Handler(Looper.getMainLooper()));
                try {
                    getContentResolver().registerContentObserver(uriFor2, false, this.f881b);
                } catch (Throwable th2) {
                    com.xiaomi.channel.commonutils.logger.b.d("register super-power-mode observer err:" + th2.getMessage());
                }
            }
            int[] a4 = m542a();
            if (a4 != null) {
                this.f868a = new s();
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.SCREEN_ON");
                intentFilter2.addAction("android.intent.action.SCREEN_OFF");
                registerReceiver(this.f868a, intentFilter2);
                this.f9201a = a4[0];
                this.f880b = a4[1];
                com.xiaomi.channel.commonutils.logger.b.m1a("falldown initialized: " + this.f9201a + Constants.ACCEPT_TIME_SEPARATOR_SP + this.f880b);
            }
        }
        String str = "";
        if (a2 != null) {
            try {
                if (!TextUtils.isEmpty(a2.f1006a) && (split = a2.f1006a.split("@")) != null && split.length > 0) {
                    str = split[0];
                }
            } catch (Exception unused) {
            }
        }
        dc.a(this);
        com.xiaomi.channel.commonutils.logger.b.e("XMPushService created. pid=" + Process.myPid() + ", uid=" + Process.myUid() + ", vc=" + com.xiaomi.push.g.a(getApplicationContext(), getPackageName()) + ", uuid=" + str);
    }

    @Override // android.app.Service
    public void onDestroy() {
        f fVar = this.f865a;
        if (fVar != null) {
            a(fVar);
            this.f865a = null;
        }
        u uVar = this.f869a;
        if (uVar != null) {
            a(uVar);
            this.f869a = null;
        }
        k kVar = this.f866a;
        if (kVar != null) {
            a(kVar);
            this.f866a = null;
        }
        n nVar = this.f867a;
        if (nVar != null) {
            a(nVar);
            this.f867a = null;
        }
        s sVar = this.f868a;
        if (sVar != null) {
            a(sVar);
            this.f868a = null;
        }
        BatteryReceiver batteryReceiver = this.f874a;
        if (batteryReceiver != null) {
            a(batteryReceiver);
            this.f874a = null;
        }
        a aVar = this.f864a;
        if (aVar != null) {
            a(aVar);
            this.f864a = null;
        }
        if ("com.xiaomi.xmsf".equals(getPackageName()) && this.f858a != null) {
            try {
                getContentResolver().unregisterContentObserver(this.f858a);
            } catch (Throwable th) {
                com.xiaomi.channel.commonutils.logger.b.m1a("unregister observer err:" + th.getMessage());
            }
        }
        if ("com.xiaomi.xmsf".equals(getPackageName()) && this.f881b != null) {
            try {
                getContentResolver().unregisterContentObserver(this.f881b);
            } catch (Throwable th2) {
                com.xiaomi.channel.commonutils.logger.b.d("unregister super-power-mode err:" + th2.getMessage());
            }
        }
        this.f878a.clear();
        this.f873a.m640b();
        a(new ci(this, 2));
        a(new l());
        bd.a().b();
        bd.a().a(this, 15);
        bd.a().m613a();
        this.f860a.b(this);
        bs.a().m628a();
        fh.a();
        i();
        super.onDestroy();
        com.xiaomi.channel.commonutils.logger.b.m1a("Service destroyed");
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i2) {
        i iVar;
        long currentTimeMillis = System.currentTimeMillis();
        if (intent == null) {
            com.xiaomi.channel.commonutils.logger.b.d("onStart() with intent NULL");
        } else {
            com.xiaomi.channel.commonutils.logger.b.m1a(String.format("onStart() with intent.Action = %s, chid = %s, pkg = %s|%s", intent.getAction(), intent.getStringExtra(bh.u), intent.getStringExtra(bh.C), intent.getStringExtra("mipush_app_package")));
        }
        if (!(intent == null || intent.getAction() == null)) {
            if ("com.xiaomi.push.timer".equalsIgnoreCase(intent.getAction()) || "com.xiaomi.push.check_alive".equalsIgnoreCase(intent.getAction())) {
                if (this.f873a.m638a()) {
                    com.xiaomi.channel.commonutils.logger.b.d("ERROR, the job controller is blocked.");
                    bd.a().a(this, 14);
                    stopSelf();
                } else {
                    iVar = new i(intent);
                    a(iVar);
                }
            } else if (!"com.xiaomi.push.network_status_changed".equalsIgnoreCase(intent.getAction())) {
                iVar = new i(intent);
                a(iVar);
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (currentTimeMillis2 > 50) {
            com.xiaomi.channel.commonutils.logger.b.c("[Prefs] spend " + currentTimeMillis2 + " ms, too more times.");
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        onStart(intent, i3);
        return 1;
    }
}
