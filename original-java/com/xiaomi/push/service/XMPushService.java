package com.xiaomi.push.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
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
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.channel.commonutils.logger.C5875a;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.push.AbstractC6191gj;
import com.xiaomi.push.AbstractC6211ha;
import com.xiaomi.push.C5971ad;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C5988aq;
import com.xiaomi.push.C6013bi;
import com.xiaomi.push.C6022bn;
import com.xiaomi.push.C6027bs;
import com.xiaomi.push.C6062cu;
import com.xiaomi.push.C6074dc;
import com.xiaomi.push.C6076de;
import com.xiaomi.push.C6117ec;
import com.xiaomi.push.C6127em;
import com.xiaomi.push.C6129en;
import com.xiaomi.push.C6135et;
import com.xiaomi.push.C6152fh;
import com.xiaomi.push.C6167fu;
import com.xiaomi.push.C6170fw;
import com.xiaomi.push.C6173fy;
import com.xiaomi.push.C6175g;
import com.xiaomi.push.C6186gf;
import com.xiaomi.push.C6193gk;
import com.xiaomi.push.C6198gp;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.C6207gy;
import com.xiaomi.push.C6209gz;
import com.xiaomi.push.C6213hc;
import com.xiaomi.push.C6228ho;
import com.xiaomi.push.C6231hq;
import com.xiaomi.push.C6235ht;
import com.xiaomi.push.C6241hz;
import com.xiaomi.push.C6242i;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6264iv;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6285jl;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.EnumC6310p;
import com.xiaomi.push.InterfaceC6195gm;
import com.xiaomi.push.InterfaceC6197go;
import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.C6448n;
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
public class XMPushService extends Service implements InterfaceC6195gm {

    /* renamed from: b */
    private static boolean f22868b = false;

    /* renamed from: a */
    private ContentObserver f22871a;

    /* renamed from: a */
    private C6186gf f22873a;

    /* renamed from: a */
    private AbstractC6191gj f22874a;

    /* renamed from: a */
    private C6193gk f22875a;

    /* renamed from: a */
    private C6317a f22877a;

    /* renamed from: a */
    private C6322f f22878a;

    /* renamed from: a */
    private C6327k f22879a;

    /* renamed from: a */
    private C6330n f22880a;

    /* renamed from: a */
    private C6335s f22881a;

    /* renamed from: a */
    private C6337u f22882a;

    /* renamed from: a */
    private C6399bn f22884a;

    /* renamed from: a */
    private C6444j f22885a;

    /* renamed from: a */
    private BatteryReceiver f22887a;

    /* renamed from: a */
    private String f22889a;

    /* renamed from: b */
    private ContentObserver f22894b;

    /* renamed from: a */
    private boolean f22892a = false;

    /* renamed from: a */
    private int f22869a = 0;

    /* renamed from: b */
    private int f22893b = 0;

    /* renamed from: a */
    private long f22870a = 0;

    /* renamed from: a */
    protected Class f22888a = XMJobService.class;

    /* renamed from: a */
    private C6378bb f22883a = null;

    /* renamed from: a */
    private C6448n f22886a = null;

    /* renamed from: a */
    Messenger f22872a = null;

    /* renamed from: a */
    private Collection<InterfaceC6358ao> f22891a = Collections.synchronizedCollection(new ArrayList());

    /* renamed from: a */
    private ArrayList<InterfaceC6331o> f22890a = new ArrayList<>();

    /* renamed from: a */
    private InterfaceC6197go f22876a = new C6420cf(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.service.XMPushService$a */
    /* loaded from: classes2.dex */
    public class C6317a extends BroadcastReceiver {

        /* renamed from: a */
        private final Object f22896a;

        private C6317a() {
            this.f22896a = new Object();
        }

        /* synthetic */ C6317a(XMPushService xMPushService, C6420cf c6420cf) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m1722a() {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                AbstractC5876b.m4138d("[Alarm] Cannot perform lock.notifyAll in the UI thread!");
                return;
            }
            synchronized (this.f22896a) {
                try {
                    this.f22896a.notifyAll();
                } catch (Exception e) {
                    AbstractC5876b.m4147a("[Alarm] notify lock. " + e);
                }
            }
        }

        /* renamed from: a */
        private void m1721a(long j) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                AbstractC5876b.m4138d("[Alarm] Cannot perform lock.wait in the UI thread!");
                return;
            }
            synchronized (this.f22896a) {
                try {
                    this.f22896a.wait(j);
                } catch (InterruptedException e) {
                    AbstractC5876b.m4147a("[Alarm] interrupt from waiting state. " + e);
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            long currentTimeMillis = System.currentTimeMillis();
            AbstractC5876b.m4139c("[Alarm] heartbeat alarm has been triggered.");
            if (!AbstractC6391bh.f23091q.equals(intent.getAction())) {
                AbstractC5876b.m4147a("[Alarm] cancel the old ping timer");
                C6152fh.m2935a();
            } else if (TextUtils.equals(context.getPackageName(), intent.getPackage())) {
                AbstractC5876b.m4139c("[Alarm] Ping XMChannelService on timer");
                try {
                    Intent intent2 = new Intent(context, XMPushService.class);
                    intent2.putExtra("time_stamp", System.currentTimeMillis());
                    intent2.setAction("com.xiaomi.push.timer");
                    ServiceClient.getInstance(context).startServiceSafely(intent2);
                    m1721a(3000L);
                    AbstractC5876b.m4147a("[Alarm] heartbeat alarm finish in " + (System.currentTimeMillis() - currentTimeMillis));
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.XMPushService$b */
    /* loaded from: classes2.dex */
    public class C6318b extends AbstractC6326j {

        /* renamed from: a */
        C6381bd.C6383b f22898a;

        public C6318b(C6381bd.C6383b c6383b) {
            super(9);
            this.f22898a = null;
            this.f22898a = c6383b;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "bind the client. " + this.f22898a.f23042g;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            String str;
            try {
                if (!XMPushService.this.m1747c()) {
                    AbstractC5876b.m4138d("trying bind while the connection is not created, quit!");
                    return;
                }
                C6381bd m1509a = C6381bd.m1509a();
                C6381bd.C6383b c6383b = this.f22898a;
                C6381bd.C6383b m1498a = m1509a.m1498a(c6383b.f23042g, c6383b.f23036b);
                if (m1498a == null) {
                    str = "ignore bind because the channel " + this.f22898a.f23042g + " is removed ";
                } else if (m1498a.f23030a == C6381bd.EnumC6387c.unbind) {
                    m1498a.m1484a(C6381bd.EnumC6387c.binding, 0, 0, (String) null, (String) null);
                    XMPushService.this.f22874a.mo2753a(m1498a);
                    C6170fw.m2850a(XMPushService.this, m1498a);
                    return;
                } else {
                    str = "trying duplicate bind, ingore! " + m1498a.f23030a;
                }
                AbstractC5876b.m4147a(str);
            } catch (Exception e) {
                AbstractC5876b.m4138d("Meet error when trying to bind. " + e);
                XMPushService.this.m1793a(10, e);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.XMPushService$c */
    /* loaded from: classes2.dex */
    public static class C6319c extends AbstractC6326j {

        /* renamed from: a */
        private final C6381bd.C6383b f22899a;

        public C6319c(C6381bd.C6383b c6383b) {
            super(12);
            this.f22899a = c6383b;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "bind time out. chid=" + this.f22899a.f23042g;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            this.f22899a.m1484a(C6381bd.EnumC6387c.unbind, 1, 21, (String) null, (String) null);
        }

        public boolean equals(Object obj) {
            if (obj instanceof C6319c) {
                return TextUtils.equals(((C6319c) obj).f22899a.f23042g, this.f22899a.f23042g);
            }
            return false;
        }

        public int hashCode() {
            return this.f22899a.f23042g.hashCode();
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$d */
    /* loaded from: classes2.dex */
    class C6320d extends AbstractC6326j {

        /* renamed from: a */
        private C6173fy f22900a;

        public C6320d(C6173fy c6173fy) {
            super(8);
            this.f22900a = null;
            this.f22900a = c6173fy;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "receive a message.";
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            XMPushService.this.f22883a.m1517a(this.f22900a);
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$e */
    /* loaded from: classes2.dex */
    public class C6321e extends AbstractC6326j {
        /* JADX INFO: Access modifiers changed from: package-private */
        public C6321e() {
            super(1);
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "do reconnect..";
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            if (XMPushService.this.m1797a()) {
                XMPushService xMPushService = XMPushService.this;
                if (xMPushService.m1791a(xMPushService.getApplicationContext())) {
                    XMPushService.this.m1734f();
                    return;
                }
            }
            AbstractC5876b.m4147a("should not connect. quit the job.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.XMPushService$f */
    /* loaded from: classes2.dex */
    public class C6322f extends BroadcastReceiver {
        C6322f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AbstractC5876b.m4147a("network changed, " + C6306l.m1850a(intent));
            XMPushService.this.onStart(intent, 1);
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$g */
    /* loaded from: classes2.dex */
    public class C6323g extends AbstractC6326j {

        /* renamed from: a */
        public Exception f22905a;

        /* renamed from: b */
        public int f22906b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C6323g(int i, Exception exc) {
            super(2);
            this.f22906b = i;
            this.f22905a = exc;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "disconnect the connection.";
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            XMPushService.this.m1793a(this.f22906b, this.f22905a);
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$h */
    /* loaded from: classes2.dex */
    class C6324h extends AbstractC6326j {
        C6324h() {
            super(65535);
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "Init Job";
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            XMPushService.this.m1748c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.XMPushService$i */
    /* loaded from: classes2.dex */
    public class C6325i extends AbstractC6326j {

        /* renamed from: a */
        private Intent f22908a;

        public C6325i(Intent intent) {
            super(15);
            this.f22908a = null;
            this.f22908a = intent;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "Handle intent action = " + this.f22908a.getAction();
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            XMPushService.this.m1739d(this.f22908a);
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$j */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC6326j extends C6448n.AbstractRunnableC6450b {
        public AbstractC6326j(int i) {
            super(i);
        }

        /* renamed from: a */
        public abstract String mo1244a();

        /* renamed from: a */
        public abstract void mo1243a();

        @Override // java.lang.Runnable
        public void run() {
            int i = this.f23197a;
            if (i != 4 && i != 8) {
                AbstractC5876b.m4145a(C5875a.f20806a, mo1244a());
            }
            mo1243a();
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$k */
    /* loaded from: classes2.dex */
    class C6327k extends BroadcastReceiver {
        C6327k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AbstractC5876b.m4147a("[HB] hold short heartbeat, " + C6306l.m1850a(intent));
            if (intent == null || intent.getExtras() == null) {
                return;
            }
            XMPushService.this.onStart(intent, 1);
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$l */
    /* loaded from: classes2.dex */
    class C6328l extends AbstractC6326j {
        public C6328l() {
            super(5);
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "ask the job queue to quit";
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            XMPushService.this.f22886a.m1341a();
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$m */
    /* loaded from: classes2.dex */
    class C6329m extends AbstractC6326j {

        /* renamed from: a */
        private AbstractC6211ha f22912a;

        public C6329m(AbstractC6211ha abstractC6211ha) {
            super(8);
            this.f22912a = null;
            this.f22912a = abstractC6211ha;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "receive a message.";
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            XMPushService.this.f22883a.m1515a(this.f22912a);
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$n */
    /* loaded from: classes2.dex */
    private class C6330n extends BroadcastReceiver {
        private C6330n() {
        }

        /* synthetic */ C6330n(XMPushService xMPushService, C6420cf c6420cf) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AbstractC5876b.m4147a("[Guardian] parents guardian receiver ");
            XMPushService.this.m1726j();
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$o */
    /* loaded from: classes2.dex */
    public interface InterfaceC6331o {
        /* renamed from: a */
        void mo1393a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.XMPushService$p */
    /* loaded from: classes2.dex */
    public class C6332p extends AbstractC6326j {

        /* renamed from: a */
        boolean f22916a;

        public C6332p(boolean z) {
            super(4);
            this.f22916a = z;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "send ping..";
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            if (XMPushService.this.m1747c()) {
                try {
                    if (!this.f22916a) {
                        C6170fw.m2856a();
                    }
                    XMPushService.this.f22874a.mo2709b(this.f22916a);
                } catch (C6203gu e) {
                    AbstractC5876b.m4143a(e);
                    XMPushService.this.m1793a(10, e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.XMPushService$q */
    /* loaded from: classes2.dex */
    public class C6333q extends AbstractC6326j {

        /* renamed from: a */
        C6381bd.C6383b f22918a;

        public C6333q(C6381bd.C6383b c6383b) {
            super(4);
            this.f22918a = null;
            this.f22918a = c6383b;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "rebind the client. " + this.f22918a.f23042g;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            try {
                this.f22918a.m1484a(C6381bd.EnumC6387c.unbind, 1, 16, (String) null, (String) null);
                AbstractC6191gj abstractC6191gj = XMPushService.this.f22874a;
                C6381bd.C6383b c6383b = this.f22918a;
                abstractC6191gj.mo2751a(c6383b.f23042g, c6383b.f23036b);
                XMPushService xMPushService = XMPushService.this;
                xMPushService.m1782a(new C6318b(this.f22918a), 300L);
            } catch (C6203gu e) {
                AbstractC5876b.m4143a(e);
                XMPushService.this.m1793a(10, e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.XMPushService$r */
    /* loaded from: classes2.dex */
    public class C6334r extends AbstractC6326j {
        C6334r() {
            super(3);
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "reset the connection.";
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            XMPushService.this.m1793a(11, (Exception) null);
            if (XMPushService.this.m1797a()) {
                XMPushService xMPushService = XMPushService.this;
                if (xMPushService.m1791a(xMPushService.getApplicationContext())) {
                    XMPushService.this.m1734f();
                }
            }
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$s */
    /* loaded from: classes2.dex */
    class C6335s extends BroadcastReceiver {
        C6335s() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            XMPushService.this.onStart(intent, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.service.XMPushService$t */
    /* loaded from: classes2.dex */
    public class C6336t extends AbstractC6326j {

        /* renamed from: a */
        C6381bd.C6383b f22922a;

        /* renamed from: a */
        String f22923a;

        /* renamed from: b */
        int f22924b;

        /* renamed from: b */
        String f22925b;

        public C6336t(C6381bd.C6383b c6383b, int i, String str, String str2) {
            super(9);
            this.f22922a = null;
            this.f22922a = c6383b;
            this.f22924b = i;
            this.f22923a = str;
            this.f22925b = str2;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public String mo1244a() {
            return "unbind the channel. " + this.f22922a.f23042g;
        }

        @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
        /* renamed from: a */
        public void mo1243a() {
            if (this.f22922a.f23030a != C6381bd.EnumC6387c.unbind && XMPushService.this.f22874a != null) {
                try {
                    AbstractC6191gj abstractC6191gj = XMPushService.this.f22874a;
                    C6381bd.C6383b c6383b = this.f22922a;
                    abstractC6191gj.mo2751a(c6383b.f23042g, c6383b.f23036b);
                } catch (C6203gu e) {
                    AbstractC5876b.m4143a(e);
                    XMPushService.this.m1793a(10, e);
                }
            }
            this.f22922a.m1484a(C6381bd.EnumC6387c.unbind, this.f22924b, 0, this.f22925b, this.f22923a);
        }
    }

    /* renamed from: com.xiaomi.push.service.XMPushService$u */
    /* loaded from: classes2.dex */
    class C6337u extends BroadcastReceiver {
        C6337u() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!XMPushService.this.f22892a) {
                XMPushService.this.f22892a = true;
            }
            AbstractC5876b.m4147a("[HB] wifi changed, " + C6306l.m1850a(intent));
            XMPushService.this.onStart(intent, 1);
        }
    }

    /* renamed from: a */
    private AbstractC6211ha m1784a(AbstractC6211ha abstractC6211ha, String str, String str2) {
        StringBuilder sb;
        String str3;
        C6381bd m1509a = C6381bd.m1509a();
        List<String> m1500a = m1509a.m1500a(str);
        if (m1500a.isEmpty()) {
            sb = new StringBuilder();
            str3 = "open channel should be called first before sending a packet, pkg=";
        } else {
            abstractC6211ha.m2645o(str);
            str = abstractC6211ha.m2654k();
            if (TextUtils.isEmpty(str)) {
                str = m1500a.get(0);
                abstractC6211ha.m2651l(str);
            }
            C6381bd.C6383b m1498a = m1509a.m1498a(str, abstractC6211ha.m2650m());
            if (!m1747c()) {
                sb = new StringBuilder();
                str3 = "drop a packet as the channel is not connected, chid=";
            } else if (m1498a != null && m1498a.f23030a == C6381bd.EnumC6387c.binded) {
                if (TextUtils.equals(str2, m1498a.f23044i)) {
                    return abstractC6211ha;
                }
                sb = new StringBuilder();
                sb.append("invalid session. ");
                sb.append(str2);
                AbstractC5876b.m4147a(sb.toString());
                return null;
            } else {
                sb = new StringBuilder();
                str3 = "drop a packet as the channel is not opened, chid=";
            }
        }
        sb.append(str3);
        sb.append(str);
        AbstractC5876b.m4147a(sb.toString());
        return null;
    }

    /* renamed from: a */
    private C6381bd.C6383b m1765a(String str, Intent intent) {
        C6381bd.C6383b m1498a = C6381bd.m1509a().m1498a(str, intent.getStringExtra(AbstractC6391bh.f23092r));
        if (m1498a == null) {
            m1498a = new C6381bd.C6383b(this);
        }
        m1498a.f23042g = intent.getStringExtra(AbstractC6391bh.f23095u);
        m1498a.f23036b = intent.getStringExtra(AbstractC6391bh.f23092r);
        m1498a.f23038c = intent.getStringExtra(AbstractC6391bh.f23097w);
        m1498a.f23032a = intent.getStringExtra(AbstractC6391bh.f23062C);
        m1498a.f23040e = intent.getStringExtra(AbstractC6391bh.f23060A);
        m1498a.f23041f = intent.getStringExtra(AbstractC6391bh.f23061B);
        m1498a.f23034a = intent.getBooleanExtra(AbstractC6391bh.f23100z, false);
        m1498a.f23043h = intent.getStringExtra(AbstractC6391bh.f23099y);
        m1498a.f23044i = intent.getStringExtra(AbstractC6391bh.f23066G);
        m1498a.f23039d = intent.getStringExtra(AbstractC6391bh.f23098x);
        m1498a.f23031a = this.f22885a;
        m1498a.m1490a((Messenger) intent.getParcelableExtra(AbstractC6391bh.f23070K));
        m1498a.f23024a = getApplicationContext();
        C6381bd.m1509a().m1503a(m1498a);
        return m1498a;
    }

    /* renamed from: a */
    private String m1799a() {
        String m1847a = C6306l.m1847a("ro.miui.region");
        return TextUtils.isEmpty(m1847a) ? C6306l.m1847a("ro.product.locale.region") : m1847a;
    }

    /* renamed from: a */
    private void m1792a(BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver != null) {
            try {
                unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException e) {
                AbstractC5876b.m4143a(e);
            }
        }
    }

    /* renamed from: a */
    private void m1790a(Intent intent) {
        Bundle extras;
        if (intent == null || (extras = intent.getExtras()) == null) {
            return;
        }
        C6135et.m3055a(getApplicationContext()).m3053a(extras.getString("digest"));
    }

    /* renamed from: a */
    private void m1789a(Intent intent, int i) {
        byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
        boolean booleanExtra = intent.getBooleanExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
        C6263iu c6263iu = new C6263iu();
        try {
            C6278jf.m1932a(c6263iu, byteArrayExtra);
            C5978ak.m3784a(getApplicationContext()).m3781a((C5978ak.AbstractRunnableC5979a) new C6376b(c6263iu, new WeakReference(this), booleanExtra), i);
        } catch (C6285jl unused) {
            AbstractC5876b.m4138d("aw_ping : send help app ping  error");
        }
    }

    /* renamed from: a */
    private void m1769a(C6338a c6338a) {
        String str;
        String str2;
        if (c6338a == null || !TextUtils.isEmpty(c6338a.m1714b()) || TextUtils.isEmpty(c6338a.m1719a())) {
            str = "no need to check country code";
        } else {
            String m1799a = "com.xiaomi.xmsf".equals(getPackageName()) ? m1799a() : C6306l.m1845b();
            if (!TextUtils.isEmpty(m1799a)) {
                String name = C6306l.m1848a(m1799a).name();
                if (TextUtils.equals(name, c6338a.m1719a())) {
                    c6338a.m1713b(m1799a);
                    str2 = "update country code";
                } else {
                    str2 = "not update country code, because not equals " + name;
                }
                AbstractC5876b.m4147a(str2);
                return;
            }
            str = "check no country code";
        }
        AbstractC5876b.m4141b(str);
    }

    /* renamed from: a */
    private static void m1767a(String str) {
        String str2;
        String str3;
        if (EnumC6310p.China.name().equals(str)) {
            C6062cu.m3448a("cn.app.chat.xiaomi.net", "cn.app.chat.xiaomi.net");
            C6062cu.m3448a("cn.app.chat.xiaomi.net", "111.13.141.211:443");
            C6062cu.m3448a("cn.app.chat.xiaomi.net", "39.156.81.172:443");
            C6062cu.m3448a("cn.app.chat.xiaomi.net", "111.202.1.250:443");
            C6062cu.m3448a("cn.app.chat.xiaomi.net", "123.125.102.213:443");
            str2 = "resolver.msg.xiaomi.net";
            C6062cu.m3448a("resolver.msg.xiaomi.net", "111.13.142.153:443");
            str3 = "111.202.1.252:443";
        } else {
            C6062cu.m3448a("app.chat.global.xiaomi.net", "app.chat.global.xiaomi.net");
            str2 = "resolver.msg.global.xiaomi.net";
            C6062cu.m3448a("resolver.msg.global.xiaomi.net", "161.117.97.14:443");
            str3 = "161.117.180.178:443";
        }
        C6062cu.m3448a(str2, str3);
    }

    /* renamed from: a */
    private void m1766a(String str, int i) {
        Collection<C6381bd.C6383b> m1501a = C6381bd.m1509a().m1501a(str);
        if (m1501a != null) {
            for (C6381bd.C6383b c6383b : m1501a) {
                if (c6383b != null) {
                    m1783a(new C6336t(c6383b, i, null, null));
                }
            }
        }
        C6381bd.m1509a().m1499a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m1791a(Context context) {
        try {
            C5988aq.m3757a();
            for (int i = 100; i > 0; i--) {
                if (C6013bi.m3661c(context)) {
                    AbstractC5876b.m4147a("network connectivity ok.");
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

    /* renamed from: a */
    private boolean m1764a(String str, Intent intent) {
        C6381bd.C6383b m1498a = C6381bd.m1509a().m1498a(str, intent.getStringExtra(AbstractC6391bh.f23092r));
        boolean z = false;
        if (m1498a == null || str == null) {
            return false;
        }
        String stringExtra = intent.getStringExtra(AbstractC6391bh.f23066G);
        String stringExtra2 = intent.getStringExtra(AbstractC6391bh.f23099y);
        if (!TextUtils.isEmpty(m1498a.f23044i) && !TextUtils.equals(stringExtra, m1498a.f23044i)) {
            AbstractC5876b.m4147a("session changed. old session=" + m1498a.f23044i + ", new session=" + stringExtra + " chid = " + str);
            z = true;
        }
        if (stringExtra2.equals(m1498a.f23043h)) {
            return z;
        }
        AbstractC5876b.m4147a("security changed. chid = " + str + " sechash = " + C6022bn.m3624a(stringExtra2));
        return true;
    }

    /* renamed from: a */
    private int[] m1796a() {
        String[] split;
        String m1532a = C6372ax.m1530a(getApplicationContext()).m1532a(EnumC6243ia.FallDownTimeRange.m2484a(), "");
        if (!TextUtils.isEmpty(m1532a) && (split = m1532a.split(Constants.ACCEPT_TIME_SEPARATOR_SP)) != null && split.length >= 2) {
            int[] iArr = new int[2];
            try {
                iArr[0] = Integer.valueOf(split[0]).intValue();
                iArr[1] = Integer.valueOf(split[1]).intValue();
                if (iArr[0] >= 0 && iArr[0] <= 23 && iArr[1] >= 0 && iArr[1] <= 23) {
                    if (iArr[0] != iArr[1]) {
                        return iArr;
                    }
                }
            } catch (NumberFormatException e) {
                AbstractC5876b.m4138d("parse falldown time range failure: " + e);
            }
        }
        return null;
    }

    /* renamed from: b */
    private String m1757b() {
        String m1845b;
        C5988aq.m3757a();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Object obj = new Object();
        String str = null;
        int i = 0;
        if ("com.xiaomi.xmsf".equals(getPackageName())) {
            C6396bk m1466a = C6396bk.m1466a(this);
            m1845b = null;
            while (true) {
                if (!TextUtils.isEmpty(m1845b) && m1466a.m1469a() != 0) {
                    break;
                }
                if (TextUtils.isEmpty(m1845b)) {
                    m1845b = m1799a();
                }
                try {
                    synchronized (obj) {
                        if (i < 30) {
                            obj.wait(1000L);
                        } else {
                            obj.wait(30000L);
                        }
                    }
                } catch (InterruptedException unused) {
                }
                i++;
            }
        } else {
            m1845b = C6306l.m1845b();
        }
        if (!TextUtils.isEmpty(m1845b)) {
            C6338a.m1718a(getApplicationContext()).m1713b(m1845b);
            str = C6306l.m1848a(m1845b).name();
        }
        AbstractC5876b.m4147a("wait region :" + str + " cost = " + (SystemClock.elapsedRealtime() - elapsedRealtime) + " , count = " + i);
        return str;
    }

    /* renamed from: b */
    private void m1754b(Intent intent) {
        long j;
        String stringExtra = intent.getStringExtra(AbstractC6391bh.f23062C);
        String stringExtra2 = intent.getStringExtra(AbstractC6391bh.f23066G);
        Bundle bundleExtra = intent.getBundleExtra("ext_packet");
        C6381bd m1509a = C6381bd.m1509a();
        C6173fy c6173fy = null;
        if (bundleExtra != null) {
            C6209gz c6209gz = (C6209gz) m1784a(new C6209gz(bundleExtra), stringExtra, stringExtra2);
            if (c6209gz == null) {
                return;
            }
            c6173fy = C6173fy.m2836a(c6209gz, m1509a.m1498a(c6209gz.m2654k(), c6209gz.m2650m()).f23043h);
        } else {
            byte[] byteArrayExtra = intent.getByteArrayExtra("ext_raw_packet");
            if (byteArrayExtra != null) {
                try {
                    j = Long.parseLong(intent.getStringExtra(AbstractC6391bh.f23092r));
                } catch (NumberFormatException unused) {
                    j = 0;
                }
                String stringExtra3 = intent.getStringExtra(AbstractC6391bh.f23093s);
                String stringExtra4 = intent.getStringExtra(AbstractC6391bh.f23094t);
                String stringExtra5 = intent.getStringExtra("ext_chid");
                C6381bd.C6383b m1498a = m1509a.m1498a(stringExtra5, String.valueOf(j));
                if (m1498a != null) {
                    C6173fy c6173fy2 = new C6173fy();
                    try {
                        c6173fy2.m2838a(Integer.parseInt(stringExtra5));
                    } catch (NumberFormatException unused2) {
                    }
                    c6173fy2.m2833a("SECMSG", (String) null);
                    if (TextUtils.isEmpty(stringExtra3)) {
                        stringExtra3 = "xiaomi.com";
                    }
                    c6173fy2.m2837a(j, stringExtra3, stringExtra4);
                    c6173fy2.m2835a(intent.getStringExtra("ext_pkt_id"));
                    c6173fy2.m2830a(byteArrayExtra, m1498a.f23043h);
                    AbstractC5876b.m4147a("send a message: chid=" + stringExtra5 + ", packetId=" + intent.getStringExtra("ext_pkt_id"));
                    c6173fy = c6173fy2;
                }
            }
        }
        if (c6173fy != null) {
            m1745c(new C6402bq(this, c6173fy));
        }
    }

    /* renamed from: b */
    private void m1749b(boolean z) {
        this.f22870a = SystemClock.elapsedRealtime();
        if (m1747c()) {
            if (C6013bi.m3662b(this)) {
                m1745c(new C6332p(z));
                return;
            }
            m1745c(new C6323g(17, null));
        }
        m1761a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m1748c() {
        String str;
        C6338a m1718a = C6338a.m1718a(getApplicationContext());
        String m1719a = m1718a.m1719a();
        AbstractC5876b.m4147a("region of cache is " + m1719a);
        if (TextUtils.isEmpty(m1719a)) {
            m1719a = m1757b();
        } else {
            m1769a(m1718a);
        }
        if (TextUtils.isEmpty(m1719a)) {
            this.f22889a = EnumC6310p.China.name();
        } else {
            this.f22889a = m1719a;
            m1718a.m1715a(m1719a);
            if (EnumC6310p.Global.name().equals(this.f22889a)) {
                str = "app.chat.global.xiaomi.net";
            } else if (EnumC6310p.Europe.name().equals(this.f22889a)) {
                str = "fr.app.chat.global.xiaomi.net";
            } else if (EnumC6310p.Russia.name().equals(this.f22889a)) {
                str = "ru.app.chat.global.xiaomi.net";
            } else if (EnumC6310p.India.name().equals(this.f22889a)) {
                str = "idmb.app.chat.global.xiaomi.net";
            }
            C6193gk.m2735a(str);
        }
        if (EnumC6310p.China.name().equals(this.f22889a)) {
            C6193gk.m2735a("cn.app.chat.xiaomi.net");
        }
        m1767a(this.f22889a);
        if (m1727i()) {
            C6433cs c6433cs = new C6433cs(this, 11);
            m1783a(c6433cs);
            C6459s.m1287a(new C6434ct(this, c6433cs));
        }
        try {
            if (C6469u.m1238a()) {
                this.f22885a.m1366a(this);
            }
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
        }
    }

    /* renamed from: c */
    private void m1746c(Intent intent) {
        String stringExtra = intent.getStringExtra(AbstractC6391bh.f23062C);
        String stringExtra2 = intent.getStringExtra(AbstractC6391bh.f23066G);
        Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra("ext_packets");
        int length = parcelableArrayExtra.length;
        C6209gz[] c6209gzArr = new C6209gz[length];
        intent.getBooleanExtra("ext_encrypt", true);
        for (int i = 0; i < parcelableArrayExtra.length; i++) {
            c6209gzArr[i] = new C6209gz((Bundle) parcelableArrayExtra[i]);
            c6209gzArr[i] = (C6209gz) m1784a(c6209gzArr[i], stringExtra, stringExtra2);
            if (c6209gzArr[i] == null) {
                return;
            }
        }
        C6381bd m1509a = C6381bd.m1509a();
        C6173fy[] c6173fyArr = new C6173fy[length];
        for (int i2 = 0; i2 < length; i2++) {
            C6209gz c6209gz = c6209gzArr[i2];
            c6173fyArr[i2] = C6173fy.m2836a(c6209gz, m1509a.m1498a(c6209gz.m2654k(), c6209gz.m2650m()).f23043h);
        }
        m1745c(new C6414c(this, c6173fyArr));
    }

    /* renamed from: c */
    private void m1745c(AbstractC6326j abstractC6326j) {
        this.f22886a.m1336a(abstractC6326j);
    }

    /* renamed from: c */
    private void m1742c(boolean z) {
        try {
            if (C6469u.m1238a()) {
                if (!z) {
                    sendBroadcast(new Intent("miui.intent.action.NETWORK_BLOCKED"));
                    return;
                }
                sendBroadcast(new Intent("miui.intent.action.NETWORK_CONNECTED"));
                for (InterfaceC6358ao interfaceC6358ao : (InterfaceC6358ao[]) this.f22891a.toArray(new InterfaceC6358ao[0])) {
                    interfaceC6358ao.mo1428a();
                }
            }
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
        }
    }

    /* renamed from: d */
    private void m1741d() {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
            networkInfo = null;
        }
        C6135et.m3055a(getApplicationContext()).m3054a(networkInfo);
        if (networkInfo != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("network changed,");
            sb.append("[type: " + networkInfo.getTypeName() + "[" + networkInfo.getSubtypeName() + "], state: " + networkInfo.getState() + "/" + networkInfo.getDetailedState());
            AbstractC5876b.m4147a(sb.toString());
            NetworkInfo.State state = networkInfo.getState();
            if (state == NetworkInfo.State.SUSPENDED || state == NetworkInfo.State.UNKNOWN) {
                return;
            }
        } else {
            AbstractC5876b.m4147a("network changed, no active network");
        }
        if (C6167fu.m2866a() != null) {
            C6167fu.m2866a().m2871a();
        }
        C6228ho.m2598a((Context) this);
        this.f22873a.m2741e();
        if (C6013bi.m3662b(this)) {
            if (m1747c() && m1733f()) {
                m1749b(false);
            }
            if (!m1747c() && !m1740d()) {
                this.f22886a.m1339a(1);
                m1783a(new C6321e());
            }
            C6076de.m3390a(this).m3392a();
        } else {
            m1783a(new C6323g(2, null));
        }
        m1737e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:153:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:377:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m1739d(Intent intent) {
        String str;
        C6444j c6444j;
        boolean z;
        int i;
        String format;
        AbstractC6326j c6333q;
        int i2;
        String m3622b;
        SharedPreferences sharedPreferences;
        String str2;
        C6402bq c6402bq;
        C6381bd m1509a = C6381bd.m1509a();
        boolean z2 = true;
        int i3 = 0;
        if (AbstractC6391bh.f23078d.equalsIgnoreCase(intent.getAction()) || AbstractC6391bh.f23084j.equalsIgnoreCase(intent.getAction())) {
            String stringExtra = intent.getStringExtra(AbstractC6391bh.f23095u);
            if (!TextUtils.isEmpty(intent.getStringExtra(AbstractC6391bh.f23099y))) {
                if (TextUtils.isEmpty(stringExtra)) {
                    str = "channel id is empty, do nothing!";
                    AbstractC5876b.m4138d(str);
                    return;
                }
                boolean m1764a = m1764a(stringExtra, intent);
                C6381bd.C6383b m1765a = m1765a(stringExtra, intent);
                if (C6013bi.m3661c(this)) {
                    if (m1747c()) {
                        C6381bd.EnumC6387c enumC6387c = m1765a.f23030a;
                        if (enumC6387c == C6381bd.EnumC6387c.unbind) {
                            c6333q = new C6318b(m1765a);
                        } else if (m1764a) {
                            c6333q = new C6333q(m1765a);
                        } else if (enumC6387c == C6381bd.EnumC6387c.binding) {
                            format = String.format("the client is binding. %1$s %2$s.", m1765a.f23042g, C6381bd.C6383b.m1483a(m1765a.f23036b));
                        } else if (enumC6387c != C6381bd.EnumC6387c.binded) {
                            return;
                        } else {
                            c6444j = this.f22885a;
                            z = true;
                            i = 0;
                        }
                        m1745c(c6333q);
                        return;
                    }
                    m1761a(true);
                    return;
                }
                c6444j = this.f22885a;
                z = false;
                i = 2;
                c6444j.m1362a(this, m1765a, z, i, null);
                return;
            }
            format = "security is empty. ignore.";
            AbstractC5876b.m4147a(format);
        } else if (AbstractC6391bh.f23083i.equalsIgnoreCase(intent.getAction())) {
            String stringExtra2 = intent.getStringExtra(AbstractC6391bh.f23062C);
            String stringExtra3 = intent.getStringExtra(AbstractC6391bh.f23095u);
            String stringExtra4 = intent.getStringExtra(AbstractC6391bh.f23092r);
            AbstractC5876b.m4147a("Service called close channel chid = " + stringExtra3 + " res = " + C6381bd.C6383b.m1483a(stringExtra4));
            if (TextUtils.isEmpty(stringExtra3)) {
                for (String str3 : m1509a.m1500a(stringExtra2)) {
                    m1766a(str3, 2);
                }
            } else if (TextUtils.isEmpty(stringExtra4)) {
                m1766a(stringExtra3, 2);
            } else {
                m1763a(stringExtra3, stringExtra4, 2, null, null);
            }
        } else if (AbstractC6391bh.f23079e.equalsIgnoreCase(intent.getAction())) {
            m1754b(intent);
        } else if (AbstractC6391bh.f23081g.equalsIgnoreCase(intent.getAction())) {
            m1746c(intent);
        } else {
            if (AbstractC6391bh.f23080f.equalsIgnoreCase(intent.getAction())) {
                AbstractC6211ha m1784a = m1784a(new C6207gy(intent.getBundleExtra("ext_packet")), intent.getStringExtra(AbstractC6391bh.f23062C), intent.getStringExtra(AbstractC6391bh.f23066G));
                if (m1784a == null) {
                    return;
                }
                c6402bq = new C6402bq(this, C6173fy.m2836a(m1784a, m1509a.m1498a(m1784a.m2654k(), m1784a.m2650m()).f23043h));
            } else if (!AbstractC6391bh.f23082h.equalsIgnoreCase(intent.getAction())) {
                if (!AbstractC6391bh.f23085k.equals(intent.getAction())) {
                    String str4 = null;
                    r2 = null;
                    C6381bd.C6383b m1498a = null;
                    str4 = null;
                    if (AbstractC6391bh.f23086l.equals(intent.getAction())) {
                        String stringExtra5 = intent.getStringExtra(AbstractC6391bh.f23062C);
                        List<String> m1500a = m1509a.m1500a(stringExtra5);
                        if (!m1500a.isEmpty()) {
                            String stringExtra6 = intent.getStringExtra(AbstractC6391bh.f23095u);
                            String stringExtra7 = intent.getStringExtra(AbstractC6391bh.f23092r);
                            if (TextUtils.isEmpty(stringExtra6)) {
                                stringExtra6 = m1500a.get(0);
                            }
                            if (TextUtils.isEmpty(stringExtra7)) {
                                Collection<C6381bd.C6383b> m1501a = m1509a.m1501a(stringExtra6);
                                if (m1501a != null && !m1501a.isEmpty()) {
                                    m1498a = m1501a.iterator().next();
                                }
                            } else {
                                m1498a = m1509a.m1498a(stringExtra6, stringExtra7);
                            }
                            if (m1498a != null) {
                                if (intent.hasExtra(AbstractC6391bh.f23060A)) {
                                    m1498a.f23040e = intent.getStringExtra(AbstractC6391bh.f23060A);
                                }
                                if (intent.hasExtra(AbstractC6391bh.f23061B)) {
                                    m1498a.f23041f = intent.getStringExtra(AbstractC6391bh.f23061B);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        str2 = "open channel should be called first before update info, pkg=" + stringExtra5;
                    } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) || "android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                        if (!"android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) && m1725j() && C6152fh.m2934a()) {
                                AbstractC5876b.m4147a("enter falldown mode, stop alarm.");
                                C6152fh.m2935a();
                                return;
                            }
                            return;
                        } else if (m1725j()) {
                            return;
                        } else {
                            AbstractC5876b.m4147a("exit falldown mode, activate alarm.");
                            m1737e();
                            if (m1747c() || m1740d()) {
                                return;
                            }
                            m1761a(true);
                            return;
                        }
                    } else if ("com.xiaomi.mipush.REGISTER_APP".equals(intent.getAction())) {
                        if (C6396bk.m1466a(getApplicationContext()).m1467a() && C6396bk.m1466a(getApplicationContext()).m1469a() == 0) {
                            str2 = "register without being provisioned. " + intent.getStringExtra("mipush_app_package");
                        } else {
                            byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
                            String stringExtra8 = intent.getStringExtra("mipush_app_package");
                            boolean booleanExtra = intent.getBooleanExtra("mipush_env_chanage", false);
                            int intExtra = intent.getIntExtra("mipush_env_type", 1);
                            C6461t.m1285a(this).m1278d(stringExtra8);
                            if (!booleanExtra || "com.xiaomi.xmsf".equals(getPackageName())) {
                                m1760a(byteArrayExtra, stringExtra8);
                                return;
                            }
                            c6333q = new C6421cg(this, 14, intExtra, stringExtra8, byteArrayExtra);
                        }
                    } else if ("com.xiaomi.mipush.SEND_MESSAGE".equals(intent.getAction()) || "com.xiaomi.mipush.UNREGISTER_APP".equals(intent.getAction())) {
                        String stringExtra9 = intent.getStringExtra("mipush_app_package");
                        byte[] byteArrayExtra2 = intent.getByteArrayExtra("mipush_payload");
                        boolean booleanExtra2 = intent.getBooleanExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
                        if ("com.xiaomi.mipush.UNREGISTER_APP".equals(intent.getAction())) {
                            C6461t.m1285a(this).m1284a(stringExtra9);
                            if (C6306l.m1851a(getApplicationContext())) {
                                C6343ae.m1707a(stringExtra9);
                            }
                        }
                        m1762a(stringExtra9, byteArrayExtra2, booleanExtra2);
                        return;
                    } else if (!AbstractC6397bl.f23106a.equals(intent.getAction())) {
                        if (AbstractC6397bl.f23107b.equals(intent.getAction())) {
                            String stringExtra10 = intent.getStringExtra("data_cleared_pkg_name");
                            if (TextUtils.isEmpty(stringExtra10)) {
                                return;
                            }
                            try {
                                sharedPreferences = getSharedPreferences("pref_registered_pkg_names", 0);
                                if (sharedPreferences != null) {
                                    try {
                                        str4 = sharedPreferences.getString(stringExtra10, null);
                                    } catch (Throwable th) {
                                        th = th;
                                        AbstractC5876b.m4147a("Fail to get sp or appId : " + th);
                                        if (!TextUtils.isEmpty(str4)) {
                                        }
                                        C6360aq.m1618a((Context) this, stringExtra10);
                                        if (C6306l.m1851a(getApplicationContext())) {
                                        }
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                sharedPreferences = null;
                            }
                            if (!TextUtils.isEmpty(str4)) {
                                SharedPreferences.Editor edit = sharedPreferences.edit();
                                edit.remove(stringExtra10);
                                edit.commit();
                                if (C6350aj.m1647b((Context) this, stringExtra10)) {
                                    C6350aj.m1640c(this, stringExtra10);
                                }
                                C6350aj.m1674a((Context) this, stringExtra10);
                                if (m1747c()) {
                                    try {
                                        C6346af.m1698a(this, C6346af.m1688b(stringExtra10, str4));
                                        AbstractC5876b.m4147a("send app data cleared Message pkgName is : " + stringExtra10);
                                    } catch (C6203gu e) {
                                        AbstractC5876b.m4138d("Fail to send Message: " + e);
                                        m1793a(10, e);
                                    }
                                }
                            }
                            C6360aq.m1618a((Context) this, stringExtra10);
                            if (C6306l.m1851a(getApplicationContext())) {
                                return;
                            }
                            C6343ae.m1707a(stringExtra10);
                            return;
                        } else if ("com.xiaomi.mipush.CLEAR_NOTIFICATION".equals(intent.getAction())) {
                            String stringExtra11 = intent.getStringExtra(AbstractC6391bh.f23062C);
                            int intExtra2 = intent.getIntExtra(AbstractC6391bh.f23063D, -2);
                            if (TextUtils.isEmpty(stringExtra11)) {
                                return;
                            }
                            if (intExtra2 >= -1) {
                                C6350aj.m1671a(this, stringExtra11, intExtra2, intent.getIntExtra(AbstractC6391bh.f23064E, -1));
                                return;
                            } else {
                                C6350aj.m1668a(this, stringExtra11, intent.getStringExtra(AbstractC6391bh.f23068I), intent.getStringExtra(AbstractC6391bh.f23069J));
                                return;
                            }
                        } else if ("com.xiaomi.mipush.CLEAR_HEADSUPNOTIFICATION".equals(intent.getAction())) {
                            String stringExtra12 = intent.getStringExtra(AbstractC6391bh.f23062C);
                            if (TextUtils.isEmpty(stringExtra12)) {
                                return;
                            }
                            C6350aj.m1648b((Context) this, stringExtra12);
                            return;
                        } else if ("com.xiaomi.mipush.SET_NOTIFICATION_TYPE".equals(intent.getAction())) {
                            String stringExtra13 = intent.getStringExtra(AbstractC6391bh.f23062C);
                            String stringExtra14 = intent.getStringExtra(AbstractC6391bh.f23067H);
                            if (intent.hasExtra(AbstractC6391bh.f23065F)) {
                                int intExtra3 = intent.getIntExtra(AbstractC6391bh.f23065F, 0);
                                m3622b = C6022bn.m3622b(stringExtra13 + intExtra3);
                                i3 = intExtra3;
                                z2 = false;
                            } else {
                                m3622b = C6022bn.m3622b(stringExtra13);
                            }
                            if (!TextUtils.isEmpty(stringExtra13) && TextUtils.equals(stringExtra14, m3622b)) {
                                if (z2) {
                                    C6350aj.m1640c(this, stringExtra13);
                                    return;
                                } else {
                                    C6350aj.m1646b(this, stringExtra13, i3);
                                    return;
                                }
                            }
                            str = "invalid notification for " + stringExtra13;
                            AbstractC5876b.m4138d(str);
                            return;
                        } else if ("com.xiaomi.mipush.DISABLE_PUSH".equals(intent.getAction())) {
                            String stringExtra15 = intent.getStringExtra("mipush_app_package");
                            if (!TextUtils.isEmpty(stringExtra15)) {
                                C6461t.m1285a(this).m1282b(stringExtra15);
                            }
                            if ("com.xiaomi.xmsf".equals(getPackageName())) {
                                return;
                            }
                            m1793a(19, (Exception) null);
                            m1737e();
                            stopSelf();
                            return;
                        } else if ("com.xiaomi.mipush.DISABLE_PUSH_MESSAGE".equals(intent.getAction()) || "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE".equals(intent.getAction())) {
                            String stringExtra16 = intent.getStringExtra("mipush_app_package");
                            byte[] byteArrayExtra3 = intent.getByteArrayExtra("mipush_payload");
                            String stringExtra17 = intent.getStringExtra("mipush_app_id");
                            String stringExtra18 = intent.getStringExtra("mipush_app_token");
                            if ("com.xiaomi.mipush.DISABLE_PUSH_MESSAGE".equals(intent.getAction())) {
                                C6461t.m1285a(this).m1280c(stringExtra16);
                            }
                            if ("com.xiaomi.mipush.ENABLE_PUSH_MESSAGE".equals(intent.getAction())) {
                                C6461t.m1285a(this).m1277e(stringExtra16);
                                C6461t.m1285a(this).m1276f(stringExtra16);
                            }
                            if (byteArrayExtra3 == null) {
                                C6463v.m1274a(this, stringExtra16, byteArrayExtra3, ErrorCode.ERROR_INVALID_PAYLOAD, "null payload");
                                return;
                            }
                            C6463v.m1270b(stringExtra16, byteArrayExtra3);
                            m1783a(new C6462u(this, stringExtra16, stringExtra17, stringExtra18, byteArrayExtra3));
                            if ("com.xiaomi.mipush.ENABLE_PUSH_MESSAGE".equals(intent.getAction()) && this.f22878a == null) {
                                this.f22878a = new C6322f();
                                registerReceiver(this.f22878a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                                return;
                            }
                            return;
                        } else if ("com.xiaomi.mipush.SEND_TINYDATA".equals(intent.getAction())) {
                            String stringExtra19 = intent.getStringExtra("mipush_app_package");
                            byte[] byteArrayExtra4 = intent.getByteArrayExtra("mipush_payload");
                            C6241hz c6241hz = new C6241hz();
                            try {
                                C6278jf.m1932a(c6241hz, byteArrayExtra4);
                                C6235ht.m2571a(this).m2569a(c6241hz, stringExtra19);
                                return;
                            } catch (C6285jl e2) {
                                AbstractC5876b.m4143a(e2);
                                return;
                            }
                        } else if ("com.xiaomi.push.timer".equalsIgnoreCase(intent.getAction())) {
                            AbstractC5876b.m4147a("[Alarm] Service called on timer");
                            C6135et.m3055a(getApplicationContext()).m3049e();
                            if (!m1725j()) {
                                C6152fh.m2930a(false);
                                if (m1733f()) {
                                    m1749b(false);
                                }
                            } else if (C6152fh.m2934a()) {
                                AbstractC5876b.m4147a("enter falldown mode, stop alarm");
                                C6152fh.m2935a();
                            }
                            C6317a c6317a = this.f22877a;
                            if (c6317a != null) {
                                c6317a.m1722a();
                                return;
                            }
                            return;
                        } else if ("com.xiaomi.push.check_alive".equalsIgnoreCase(intent.getAction())) {
                            AbstractC5876b.m4147a("Service called on check alive.");
                            if (m1733f()) {
                                m1749b(false);
                                return;
                            }
                            return;
                        } else if ("com.xiaomi.mipush.thirdparty".equals(intent.getAction())) {
                            AbstractC5876b.m4147a("on thirdpart push :" + intent.getStringExtra("com.xiaomi.mipush.thirdparty_DESC"));
                            C6152fh.m2931a(this, intent.getIntExtra("com.xiaomi.mipush.thirdparty_LEVEL", 0));
                            return;
                        } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                            m1741d();
                            return;
                        } else if ("miui.net.wifi.DIGEST_INFORMATION_CHANGED".equals(intent.getAction())) {
                            m1790a(intent);
                            return;
                        } else if ("com.xiaomi.xmsf.USE_INTELLIGENT_HB".equals(intent.getAction())) {
                            if (intent.getExtras() == null || (i2 = intent.getExtras().getInt("effectivePeriod", 0)) <= 0 || i2 > 604800) {
                                return;
                            }
                            C6135et.m3055a(this).m3058a().mo3008a(i2);
                            return;
                        } else if ("action_cr_config".equals(intent.getAction())) {
                            boolean booleanExtra3 = intent.getBooleanExtra("action_cr_event_switch", false);
                            long longExtra = intent.getLongExtra("action_cr_event_frequency", 86400L);
                            boolean booleanExtra4 = intent.getBooleanExtra("action_cr_perf_switch", false);
                            long longExtra2 = intent.getLongExtra("action_cr_perf_frequency", 86400L);
                            boolean booleanExtra5 = intent.getBooleanExtra("action_cr_event_en", true);
                            long longExtra3 = intent.getLongExtra("action_cr_max_file_size", 1048576L);
                            Config build = Config.getBuilder().setEventUploadSwitchOpen(booleanExtra3).setEventUploadFrequency(longExtra).setPerfUploadSwitchOpen(booleanExtra4).setPerfUploadFrequency(longExtra2).setAESKey(C6027bs.m3603a(getApplicationContext())).setEventEncrypted(booleanExtra5).setMaxFileLength(longExtra3).build(getApplicationContext());
                            if ("com.xiaomi.xmsf".equals(getPackageName()) || longExtra <= 0 || longExtra2 <= 0 || longExtra3 <= 0) {
                                return;
                            }
                            C6127em.m3091a(getApplicationContext(), build);
                            return;
                        } else if (!"action_help_ping".equals(intent.getAction())) {
                            if ("action_aw_app_logic".equals(intent.getAction())) {
                                m1735e(intent);
                                return;
                            } else if (AbstractC6391bh.f23088n.equals(intent.getAction())) {
                                C6447m.m1347a(getApplicationContext(), intent);
                                return;
                            } else {
                                return;
                            }
                        } else {
                            boolean booleanExtra6 = intent.getBooleanExtra("extra_help_ping_switch", false);
                            int intExtra4 = intent.getIntExtra("extra_help_ping_frequency", 0);
                            if (intExtra4 >= 0 && intExtra4 < 30) {
                                AbstractC5876b.m4139c("aw_ping: frquency need > 30s.");
                                intExtra4 = 30;
                            }
                            boolean z3 = intExtra4 >= 0 ? booleanExtra6 : false;
                            AbstractC5876b.m4147a("aw_ping: receive a aw_ping message. switch: " + z3 + " frequency: " + intExtra4);
                            if (!z3 || intExtra4 <= 0 || "com.xiaomi.xmsf".equals(getPackageName())) {
                                return;
                            }
                            m1789a(intent, intExtra4);
                            return;
                        }
                    } else {
                        String stringExtra20 = intent.getStringExtra("uninstall_pkg_name");
                        if (stringExtra20 == null || TextUtils.isEmpty(stringExtra20.trim())) {
                            return;
                        }
                        try {
                            PackageInfo packageInfo = getPackageManager().getPackageInfo(stringExtra20, 0);
                            if (packageInfo == null || packageInfo.applicationInfo == null || !C6242i.m2509a(this, packageInfo.packageName)) {
                                z2 = false;
                            } else {
                                AbstractC5876b.m4147a("dual space's app uninstalled " + stringExtra20);
                            }
                        } catch (PackageManager.NameNotFoundException unused) {
                        }
                        if (!"com.xiaomi.channel".equals(stringExtra20) || C6381bd.m1509a().m1501a("1").isEmpty() || !z2) {
                            SharedPreferences sharedPreferences2 = getSharedPreferences("pref_registered_pkg_names", 0);
                            String string = sharedPreferences2.getString(stringExtra20, null);
                            if (TextUtils.isEmpty(string) || !z2) {
                                return;
                            }
                            SharedPreferences.Editor edit2 = sharedPreferences2.edit();
                            edit2.remove(stringExtra20);
                            edit2.commit();
                            if (C6350aj.m1647b((Context) this, stringExtra20)) {
                                C6350aj.m1640c(this, stringExtra20);
                            }
                            C6350aj.m1674a((Context) this, stringExtra20);
                            C6360aq.m1618a(getApplicationContext(), stringExtra20);
                            if (!m1747c() || string == null) {
                                return;
                            }
                            try {
                                C6346af.m1698a(this, C6346af.m1691a(stringExtra20, string));
                                AbstractC5876b.m4147a("uninstall " + stringExtra20 + " msg sent");
                                return;
                            } catch (C6203gu e3) {
                                AbstractC5876b.m4138d("Fail to send Message: " + e3.getMessage());
                                m1793a(10, e3);
                                return;
                            }
                        }
                        m1766a("1", 0);
                        str2 = "close the miliao channel as the app is uninstalled.";
                    }
                    AbstractC5876b.m4147a(str2);
                    return;
                }
                String stringExtra21 = intent.getStringExtra(AbstractC6391bh.f23095u);
                String stringExtra22 = intent.getStringExtra(AbstractC6391bh.f23092r);
                if (stringExtra21 == null) {
                    return;
                }
                AbstractC5876b.m4147a("request reset connection from chid = " + stringExtra21);
                C6381bd.C6383b m1498a2 = C6381bd.m1509a().m1498a(stringExtra21, stringExtra22);
                if (m1498a2 == null || !m1498a2.f23043h.equals(intent.getStringExtra(AbstractC6391bh.f23099y)) || m1498a2.f23030a != C6381bd.EnumC6387c.binded) {
                    return;
                }
                AbstractC6191gj m1801a = m1801a();
                if (m1801a != null && m1801a.m2757a(SystemClock.elapsedRealtime() - 15000)) {
                    return;
                }
                c6333q = new C6334r();
                m1745c(c6333q);
                return;
            } else {
                AbstractC6211ha m1784a2 = m1784a(new C6213hc(intent.getBundleExtra("ext_packet")), intent.getStringExtra(AbstractC6391bh.f23062C), intent.getStringExtra(AbstractC6391bh.f23066G));
                if (m1784a2 == null) {
                    return;
                }
                c6402bq = new C6402bq(this, C6173fy.m2836a(m1784a2, m1509a.m1498a(m1784a2.m2654k(), m1784a2.m2650m()).f23043h));
            }
            m1745c(c6402bq);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m1737e() {
        if (!m1797a()) {
            C6152fh.m2935a();
        } else if (C6152fh.m2934a()) {
        } else {
            C6152fh.m2930a(true);
        }
    }

    /* renamed from: e */
    private void m1735e(Intent intent) {
        int i;
        try {
            C6117ec.m3120a(getApplicationContext()).m3114a(new C6395bj());
            String stringExtra = intent.getStringExtra("mipush_app_package");
            byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
            if (byteArrayExtra == null) {
                return;
            }
            C6263iu c6263iu = new C6263iu();
            C6278jf.m1932a(c6263iu, byteArrayExtra);
            String m2182b = c6263iu.m2182b();
            Map<String, String> m2195a = c6263iu.m2195a();
            if (m2195a != null) {
                String str = m2195a.get("extra_help_aw_info");
                String str2 = m2195a.get("extra_aw_app_online_cmd");
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                try {
                    i = Integer.parseInt(str2);
                } catch (NumberFormatException unused) {
                    i = 0;
                }
                if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(m2182b) || TextUtils.isEmpty(str)) {
                    return;
                }
                C6117ec.m3120a(getApplicationContext()).m3118a(this, str, i, stringExtra, m2182b);
            }
        } catch (C6285jl e) {
            AbstractC5876b.m4138d("aw_logic: translate fail. " + e.getMessage());
        }
    }

    /* renamed from: e */
    public static boolean m1736e() {
        return f22868b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m1734f() {
        String str;
        AbstractC6191gj abstractC6191gj = this.f22874a;
        if (abstractC6191gj == null || !abstractC6191gj.m2748b()) {
            AbstractC6191gj abstractC6191gj2 = this.f22874a;
            if (abstractC6191gj2 == null || !abstractC6191gj2.m2743c()) {
                this.f22875a.m2731b(C6013bi.m3675a((Context) this));
                m1732g();
                if (this.f22874a == null) {
                    C6381bd.m1509a().m1506a(this);
                    m1742c(false);
                    return;
                }
                return;
            }
            str = "try to connect while is connected.";
        } else {
            str = "try to connect while connecting.";
        }
        AbstractC5876b.m4138d(str);
    }

    /* renamed from: f */
    private boolean m1733f() {
        if (SystemClock.elapsedRealtime() - this.f22870a < 30000) {
            return false;
        }
        return C6013bi.m3660d(this);
    }

    /* renamed from: g */
    private void m1732g() {
        try {
            this.f22873a.m2755a(this.f22876a, new C6424cj(this));
            this.f22873a.m2706f();
            this.f22874a = this.f22873a;
        } catch (C6203gu e) {
            AbstractC5876b.m4144a("fail to create Slim connection", e);
            this.f22873a.mo2710b(3, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public boolean m1731g() {
        return "com.xiaomi.xmsf".equals(getPackageName()) && Settings.Secure.getInt(getContentResolver(), "EXTREME_POWER_MODE_ENABLE", 0) == 1;
    }

    /* renamed from: h */
    private void m1730h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public boolean m1729h() {
        return "com.xiaomi.xmsf".equals(getPackageName()) && Settings.System.getInt(getContentResolver(), "power_supersave_mode_open", 0) == 1;
    }

    /* renamed from: i */
    private void m1728i() {
        synchronized (this.f22890a) {
            this.f22890a.clear();
        }
    }

    /* renamed from: i */
    private boolean m1727i() {
        return "com.xiaomi.xmsf".equals(getPackageName()) || !C6461t.m1285a(this).m1281b(getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m1726j() {
        m1783a(new C6426cl(this, 17));
    }

    /* renamed from: j */
    private boolean m1725j() {
        return getApplicationContext().getPackageName().equals("com.xiaomi.xmsf") && m1724k() && !C6242i.m2502b((Context) this) && !C6242i.m2510a(getApplicationContext());
    }

    /* renamed from: k */
    private boolean m1724k() {
        int intValue = Integer.valueOf(String.format("%tH", new Date())).intValue();
        int i = this.f22869a;
        int i2 = this.f22893b;
        if (i > i2) {
            if (intValue >= i || intValue < i2) {
                return true;
            }
        } else if (i < i2 && intValue >= i && intValue < i2) {
            return true;
        }
        return false;
    }

    /* renamed from: l */
    private boolean m1723l() {
        if (TextUtils.equals(getPackageName(), "com.xiaomi.xmsf")) {
            return false;
        }
        return C6372ax.m1530a(this).m1531a(EnumC6243ia.ForegroundServiceSwitch.m2484a(), false);
    }

    /* renamed from: a */
    public AbstractC6191gj m1801a() {
        return this.f22874a;
    }

    /* renamed from: a */
    public C6444j m1800a() {
        return new C6444j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1798a() {
        if (SystemClock.elapsedRealtime() - this.f22870a >= C6198gp.m2727a() && C6013bi.m3660d(this)) {
            m1749b(true);
        }
    }

    /* renamed from: a */
    public void m1795a(int i) {
        this.f22886a.m1339a(i);
    }

    /* renamed from: a */
    public void m1793a(int i, Exception exc) {
        StringBuilder sb = new StringBuilder();
        sb.append("disconnect ");
        sb.append(hashCode());
        sb.append(", ");
        AbstractC6191gj abstractC6191gj = this.f22874a;
        sb.append(abstractC6191gj == null ? null : Integer.valueOf(abstractC6191gj.hashCode()));
        AbstractC5876b.m4147a(sb.toString());
        AbstractC6191gj abstractC6191gj2 = this.f22874a;
        if (abstractC6191gj2 != null) {
            abstractC6191gj2.mo2710b(i, exc);
            this.f22874a = null;
        }
        m1795a(7);
        m1795a(4);
        C6381bd.m1509a().m1505a(this, i);
    }

    /* renamed from: a */
    public void m1788a(C6173fy c6173fy) {
        AbstractC6191gj abstractC6191gj = this.f22874a;
        if (abstractC6191gj == null) {
            throw new C6203gu("try send msg while connection is null.");
        }
        abstractC6191gj.mo2747b(c6173fy);
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: a */
    public void mo1787a(AbstractC6191gj abstractC6191gj) {
        AbstractC5876b.m4139c("begin to connect...");
        C6167fu.m2866a().mo1787a(abstractC6191gj);
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: a */
    public void mo1786a(AbstractC6191gj abstractC6191gj, int i, Exception exc) {
        C6167fu.m2866a().mo1786a(abstractC6191gj, i, exc);
        if (m1725j()) {
            return;
        }
        m1761a(false);
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: a */
    public void mo1785a(AbstractC6191gj abstractC6191gj, Exception exc) {
        C6167fu.m2866a().mo1785a(abstractC6191gj, exc);
        m1742c(false);
        if (m1725j()) {
            return;
        }
        m1761a(false);
    }

    /* renamed from: a */
    public void m1783a(AbstractC6326j abstractC6326j) {
        m1782a(abstractC6326j, 0L);
    }

    /* renamed from: a */
    public void m1782a(AbstractC6326j abstractC6326j, long j) {
        try {
            this.f22886a.m1335a(abstractC6326j, j);
        } catch (IllegalStateException e) {
            AbstractC5876b.m4147a("can't execute job err = " + e.getMessage());
        }
    }

    /* renamed from: a */
    public void m1781a(InterfaceC6331o interfaceC6331o) {
        synchronized (this.f22890a) {
            this.f22890a.add(interfaceC6331o);
        }
    }

    /* renamed from: a */
    public void m1768a(C6381bd.C6383b c6383b) {
        if (c6383b != null) {
            long m1495a = c6383b.m1495a();
            AbstractC5876b.m4147a("schedule rebind job in " + (m1495a / 1000));
            m1782a(new C6318b(c6383b), m1495a);
        }
    }

    /* renamed from: a */
    public void m1763a(String str, String str2, int i, String str3, String str4) {
        C6381bd.C6383b m1498a = C6381bd.m1509a().m1498a(str, str2);
        if (m1498a != null) {
            m1783a(new C6336t(m1498a, i, str4, str3));
        }
        C6381bd.m1509a().m1497a(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1762a(String str, byte[] bArr, boolean z) {
        Collection<C6381bd.C6383b> m1501a = C6381bd.m1509a().m1501a("5");
        if (m1501a.isEmpty()) {
            if (!z) {
                return;
            }
        } else if (m1501a.iterator().next().f23030a == C6381bd.EnumC6387c.binded) {
            m1783a(new C6422ch(this, 4, str, bArr));
            return;
        } else if (!z) {
            return;
        }
        C6463v.m1270b(str, bArr);
    }

    /* renamed from: a */
    public void m1761a(boolean z) {
        this.f22884a.m1453a(z);
    }

    /* renamed from: a */
    public void m1760a(byte[] bArr, String str) {
        if (bArr == null) {
            C6463v.m1274a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, "null payload");
            AbstractC5876b.m4147a("register request without payload");
            return;
        }
        C6260ir c6260ir = new C6260ir();
        try {
            C6278jf.m1932a(c6260ir, bArr);
            if (c6260ir.f22464a == EnumC6237hv.Registration) {
                C6264iv c6264iv = new C6264iv();
                try {
                    C6278jf.m1932a(c6264iv, c6260ir.m2229a());
                    m1783a(new C6462u(this, c6260ir.m2219b(), c6264iv.m2149b(), c6264iv.m2144c(), bArr));
                    C6129en.m3082a(getApplicationContext()).m3076a(c6260ir.m2219b(), "E100003", c6264iv.m2158a(), 6002, null);
                } catch (C6285jl e) {
                    AbstractC5876b.m4138d("app register error. " + e);
                    C6463v.m1274a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, " data action error.");
                }
            } else {
                C6463v.m1274a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, " registration action required.");
                AbstractC5876b.m4147a("register request with invalid payload");
            }
        } catch (C6285jl e2) {
            AbstractC5876b.m4138d("app register fail. " + e2);
            C6463v.m1274a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, " data container error.");
        }
    }

    /* renamed from: a */
    public void m1759a(C6173fy[] c6173fyArr) {
        AbstractC6191gj abstractC6191gj = this.f22874a;
        if (abstractC6191gj == null) {
            throw new C6203gu("try send msg while connection is null.");
        }
        abstractC6191gj.mo2711a(c6173fyArr);
    }

    /* renamed from: a */
    public boolean m1797a() {
        boolean m3662b = C6013bi.m3662b(this);
        boolean z = C6381bd.m1509a().m1510a() > 0;
        boolean z2 = !m1755b();
        boolean m1727i = m1727i();
        boolean z3 = !m1729h();
        boolean z4 = !m1731g();
        boolean z5 = m3662b && z && z2 && m1727i && z3 && z4;
        if (!z5) {
            AbstractC5876b.m4137e(String.format("not conn, net=%s;cnt=%s;!dis=%s;enb=%s;!spm=%s;!eps=%s", Boolean.valueOf(m3662b), Boolean.valueOf(z), Boolean.valueOf(z2), Boolean.valueOf(m1727i), Boolean.valueOf(z3), Boolean.valueOf(z4)));
        }
        return z5;
    }

    /* renamed from: a */
    public boolean m1794a(int i) {
        return this.f22886a.m1338a(i);
    }

    /* renamed from: b */
    public C6444j m1758b() {
        return this.f22885a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m1756b() {
        C6135et.m3055a(getApplicationContext()).m3051c();
        Iterator it2 = new ArrayList(this.f22890a).iterator();
        while (it2.hasNext()) {
            ((InterfaceC6331o) it2.next()).mo1393a();
        }
    }

    @Override // com.xiaomi.push.InterfaceC6195gm
    /* renamed from: b */
    public void mo1753b(AbstractC6191gj abstractC6191gj) {
        C6167fu.m2866a().mo1753b(abstractC6191gj);
        m1742c(true);
        this.f22884a.m1454a();
        if (!C6152fh.m2934a() && !m1725j()) {
            AbstractC5876b.m4147a("reconnection successful, reactivate alarm.");
            C6152fh.m2930a(true);
        }
        Iterator<C6381bd.C6383b> it2 = C6381bd.m1509a().m1508a().iterator();
        while (it2.hasNext()) {
            m1783a(new C6318b(it2.next()));
        }
        if (this.f22892a || !C6306l.m1851a(getApplicationContext())) {
            return;
        }
        C5978ak.m3784a(getApplicationContext()).m3775a(new RunnableC6425ck(this));
    }

    /* renamed from: b */
    public void m1752b(AbstractC6326j abstractC6326j) {
        this.f22886a.m1337a(abstractC6326j.f23197a, abstractC6326j);
    }

    /* renamed from: b */
    public boolean m1755b() {
        try {
            Class<?> m1234a = C6469u.m1234a(this, "miui.os.Build");
            Field field = m1234a.getField("IS_CM_CUSTOMIZATION_TEST");
            Field field2 = m1234a.getField("IS_CU_CUSTOMIZATION_TEST");
            Field field3 = m1234a.getField("IS_CT_CUSTOMIZATION_TEST");
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

    /* renamed from: c */
    public boolean m1747c() {
        AbstractC6191gj abstractC6191gj = this.f22874a;
        return abstractC6191gj != null && abstractC6191gj.m2743c();
    }

    /* renamed from: d */
    public boolean m1740d() {
        AbstractC6191gj abstractC6191gj = this.f22874a;
        return abstractC6191gj != null && abstractC6191gj.m2748b();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f22872a.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        String[] split;
        super.onCreate();
        AbstractC5876b.m4152a(getApplicationContext());
        C6469u.m1236a((Context) this);
        C6457r m1294a = C6459s.m1294a((Context) this);
        if (m1294a != null) {
            C5971ad.m3795a(m1294a.f23219a);
        }
        if (C6306l.m1851a(getApplicationContext())) {
            HandlerThread handlerThread = new HandlerThread("hb-alarm");
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper());
            this.f22877a = new C6317a(this, null);
            registerReceiver(this.f22877a, new IntentFilter(AbstractC6391bh.f23091q), null, handler);
            f22868b = true;
            handler.post(new RunnableC6427cm(this));
        }
        this.f22872a = new Messenger(new HandlerC6428cn(this));
        C6392bi.m1475a(this);
        C6429co c6429co = new C6429co(this, null, 5222, "xiaomi.com", null);
        this.f22875a = c6429co;
        c6429co.m2733a(true);
        this.f22873a = new C6186gf(this, this.f22875a);
        this.f22885a = m1800a();
        C6152fh.m2932a(this);
        this.f22873a.m2756a(this);
        this.f22883a = new C6378bb(this);
        this.f22884a = new C6399bn(this);
        new C6445k().m1356a();
        C6167fu.m2865a().m2858a(this);
        this.f22886a = new C6448n("Connection Controller Thread");
        C6381bd m1509a = C6381bd.m1509a();
        m1509a.m1496b();
        m1509a.m1504a(new C6430cp(this));
        if (m1723l()) {
            m1730h();
        }
        C6235ht.m2571a(this).m2570a(new C6455p(this), "UPLOADER_PUSH_CHANNEL");
        m1781a(new C6231hq(this));
        m1781a(new C6418cd(this));
        if (C6306l.m1851a((Context) this)) {
            m1781a(new C6379bc());
        }
        m1783a(new C6324h());
        this.f22891a.add(C6407bu.m1427a(this));
        if (m1727i()) {
            this.f22878a = new C6322f();
            registerReceiver(this.f22878a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        if (C6306l.m1851a(getApplicationContext())) {
            this.f22882a = new C6337u();
            registerReceiver(this.f22882a, new IntentFilter("miui.net.wifi.DIGEST_INFORMATION_CHANGED"), "miui.net.wifi.permission.ACCESS_WIFI_DIGEST_INFO", null);
            C6327k c6327k = new C6327k();
            this.f22879a = c6327k;
            registerReceiver(c6327k, new IntentFilter("com.xiaomi.xmsf.USE_INTELLIGENT_HB"), "com.xiaomi.xmsf.permission.INTELLIGENT_HB", null);
            HandlerThread handlerThread2 = new HandlerThread("battery_thread");
            handlerThread2.start();
            Handler handler2 = new Handler(handlerThread2.getLooper());
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
            registerReceiver(this.f22887a, intentFilter, null, handler2);
            HandlerThread handlerThread3 = new HandlerThread("guardian_thread");
            handlerThread3.start();
            Handler handler3 = new Handler(handlerThread3.getLooper());
            this.f22880a = new C6330n(this, null);
            registerReceiver(this.f22880a, new IntentFilter(AbstractC6391bh.f23090p), "com.miui.greenguard.permission.RECV_PARENTS_GUARDIAN", handler3);
            m1726j();
        }
        C6135et.m3055a(getApplicationContext()).m3057a();
        if ("com.xiaomi.xmsf".equals(getPackageName())) {
            Uri uriFor = Settings.Secure.getUriFor("EXTREME_POWER_MODE_ENABLE");
            if (uriFor != null) {
                this.f22871a = new C6431cq(this, new Handler(Looper.getMainLooper()));
                try {
                    getContentResolver().registerContentObserver(uriFor, false, this.f22871a);
                } catch (Throwable th) {
                    AbstractC5876b.m4147a("register observer err:" + th.getMessage());
                }
            }
            Uri uriFor2 = Settings.System.getUriFor("power_supersave_mode_open");
            if (uriFor2 != null) {
                this.f22894b = new C6432cr(this, new Handler(Looper.getMainLooper()));
                try {
                    getContentResolver().registerContentObserver(uriFor2, false, this.f22894b);
                } catch (Throwable th2) {
                    AbstractC5876b.m4138d("register super-power-mode observer err:" + th2.getMessage());
                }
            }
            int[] m1796a = m1796a();
            if (m1796a != null) {
                this.f22881a = new C6335s();
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.SCREEN_ON");
                intentFilter2.addAction("android.intent.action.SCREEN_OFF");
                registerReceiver(this.f22881a, intentFilter2);
                this.f22869a = m1796a[0];
                this.f22893b = m1796a[1];
                AbstractC5876b.m4147a("falldown initialized: " + this.f22869a + Constants.ACCEPT_TIME_SEPARATOR_SP + this.f22893b);
            }
        }
        String str = "";
        if (m1294a != null) {
            try {
                if (!TextUtils.isEmpty(m1294a.f23220a) && (split = m1294a.f23220a.split("@")) != null && split.length > 0) {
                    str = split[0];
                }
            } catch (Exception unused) {
            }
        }
        C6074dc.m3399a(this);
        AbstractC5876b.m4137e("XMPushService created. pid=" + Process.myPid() + ", uid=" + Process.myUid() + ", vc=" + C6175g.m2814a(getApplicationContext(), getPackageName()) + ", uuid=" + str);
    }

    @Override // android.app.Service
    public void onDestroy() {
        C6322f c6322f = this.f22878a;
        if (c6322f != null) {
            m1792a(c6322f);
            this.f22878a = null;
        }
        C6337u c6337u = this.f22882a;
        if (c6337u != null) {
            m1792a(c6337u);
            this.f22882a = null;
        }
        C6327k c6327k = this.f22879a;
        if (c6327k != null) {
            m1792a(c6327k);
            this.f22879a = null;
        }
        C6330n c6330n = this.f22880a;
        if (c6330n != null) {
            m1792a(c6330n);
            this.f22880a = null;
        }
        C6335s c6335s = this.f22881a;
        if (c6335s != null) {
            m1792a(c6335s);
            this.f22881a = null;
        }
        BatteryReceiver batteryReceiver = this.f22887a;
        if (batteryReceiver != null) {
            m1792a(batteryReceiver);
            this.f22887a = null;
        }
        C6317a c6317a = this.f22877a;
        if (c6317a != null) {
            m1792a(c6317a);
            this.f22877a = null;
        }
        if ("com.xiaomi.xmsf".equals(getPackageName()) && this.f22871a != null) {
            try {
                getContentResolver().unregisterContentObserver(this.f22871a);
            } catch (Throwable th) {
                AbstractC5876b.m4147a("unregister observer err:" + th.getMessage());
            }
        }
        if ("com.xiaomi.xmsf".equals(getPackageName()) && this.f22894b != null) {
            try {
                getContentResolver().unregisterContentObserver(this.f22894b);
            } catch (Throwable th2) {
                AbstractC5876b.m4138d("unregister super-power-mode err:" + th2.getMessage());
            }
        }
        this.f22891a.clear();
        this.f22886a.m1333b();
        m1783a(new C6423ci(this, 2));
        m1783a(new C6328l());
        C6381bd.m1509a().m1496b();
        C6381bd.m1509a().m1505a(this, 15);
        C6381bd.m1509a().m1507a();
        this.f22873a.m2746b(this);
        C6404bs.m1447a().m1445a();
        C6152fh.m2935a();
        m1728i();
        super.onDestroy();
        AbstractC5876b.m4147a("Service destroyed");
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        C6325i c6325i;
        long currentTimeMillis = System.currentTimeMillis();
        if (intent == null) {
            AbstractC5876b.m4138d("onStart() with intent NULL");
        } else {
            AbstractC5876b.m4147a(String.format("onStart() with intent.Action = %s, chid = %s, pkg = %s|%s", intent.getAction(), intent.getStringExtra(AbstractC6391bh.f23095u), intent.getStringExtra(AbstractC6391bh.f23062C), intent.getStringExtra("mipush_app_package")));
        }
        if (intent != null && intent.getAction() != null) {
            if ("com.xiaomi.push.timer".equalsIgnoreCase(intent.getAction()) || "com.xiaomi.push.check_alive".equalsIgnoreCase(intent.getAction())) {
                if (this.f22886a.m1340a()) {
                    AbstractC5876b.m4138d("ERROR, the job controller is blocked.");
                    C6381bd.m1509a().m1505a(this, 14);
                    stopSelf();
                } else {
                    c6325i = new C6325i(intent);
                    m1783a(c6325i);
                }
            } else if (!"com.xiaomi.push.network_status_changed".equalsIgnoreCase(intent.getAction())) {
                c6325i = new C6325i(intent);
                m1783a(c6325i);
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (currentTimeMillis2 > 50) {
            AbstractC5876b.m4139c("[Prefs] spend " + currentTimeMillis2 + " ms, too more times.");
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        onStart(intent, i2);
        return 1;
    }
}
