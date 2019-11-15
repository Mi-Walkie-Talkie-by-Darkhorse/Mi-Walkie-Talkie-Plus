package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.network.HostManager;
import com.xiaomi.xmpush.thrift.ac;
import com.xiaomi.xmpush.thrift.ag;
import com.xiaomi.xmpush.thrift.ar;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class XMPushService extends Service implements com.xiaomi.smack.d {
    public static int c = 1;
    /* access modifiers changed from: private */
    public static final int h = Process.myPid();
    Messenger a = null;
    final BroadcastReceiver b = new bi(this);
    /* access modifiers changed from: private */
    public com.xiaomi.smack.b d;
    private at e;
    private e f;
    private long g = 0;
    private com.xiaomi.slim.f i;
    /* access modifiers changed from: private */
    public com.xiaomi.smack.a j;
    private b k;
    /* access modifiers changed from: private */
    public PacketSync l = null;
    /* access modifiers changed from: private */
    public i m = null;
    private com.xiaomi.smack.f n = new ba(this);

    class a extends h {
        com.xiaomi.push.service.am.b b = null;

        public a(com.xiaomi.push.service.am.b bVar) {
            super(9);
            this.b = bVar;
        }

        public void a() {
            try {
                if (!XMPushService.this.f()) {
                    com.xiaomi.channel.commonutils.logger.b.d("trying bind while the connection is not created, quit!");
                    return;
                }
                com.xiaomi.push.service.am.b b2 = am.a().b(this.b.h, this.b.b);
                if (b2 == null) {
                    com.xiaomi.channel.commonutils.logger.b.a("ignore bind because the channel " + this.b.h + " is removed ");
                } else if (b2.m == com.xiaomi.push.service.am.c.unbind) {
                    b2.a(com.xiaomi.push.service.am.c.binding, 0, 0, null, null);
                    XMPushService.this.j.a(b2);
                    com.xiaomi.stats.h.a(XMPushService.this, b2);
                } else {
                    com.xiaomi.channel.commonutils.logger.b.a("trying duplicate bind, ingore! " + b2.m);
                }
            } catch (Exception e) {
                com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
                XMPushService.this.a(10, e);
            } catch (Throwable th) {
                com.xiaomi.channel.commonutils.logger.b.a(th);
            }
        }

        public String b() {
            return "bind the client. " + this.b.h;
        }
    }

    static class b extends h {
        private final com.xiaomi.push.service.am.b b;

        public b(com.xiaomi.push.service.am.b bVar) {
            super(12);
            this.b = bVar;
        }

        public void a() {
            this.b.a(com.xiaomi.push.service.am.c.unbind, 1, 21, null, null);
        }

        public String b() {
            return "bind time out. chid=" + this.b.h;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            return TextUtils.equals(((b) obj).b.h, this.b.h);
        }

        public int hashCode() {
            return this.b.h.hashCode();
        }
    }

    class c extends h {
        private com.xiaomi.slim.b c = null;

        public c(com.xiaomi.slim.b bVar) {
            super(8);
            this.c = bVar;
        }

        public void a() {
            XMPushService.this.l.a(this.c);
        }

        public String b() {
            return "receive a message.";
        }
    }

    public class d extends h {
        d() {
            super(1);
        }

        public void a() {
            if (XMPushService.this.b()) {
                XMPushService.this.n();
            } else {
                com.xiaomi.channel.commonutils.logger.b.a("should not connect. quit the job.");
            }
        }

        public String b() {
            return "do reconnect..";
        }
    }

    class e extends BroadcastReceiver {
        e() {
        }

        public void onReceive(Context context, Intent intent) {
            XMPushService.this.onStart(intent, XMPushService.c);
        }
    }

    public class f extends h {
        public int b;
        public Exception c;

        f(int i, Exception exc) {
            super(2);
            this.b = i;
            this.c = exc;
        }

        public void a() {
            XMPushService.this.a(this.b, this.c);
        }

        public String b() {
            return "disconnect the connection.";
        }
    }

    class g extends h {
        private Intent c = null;

        public g(Intent intent) {
            super(15);
            this.c = intent;
        }

        public void a() {
            XMPushService.this.c(this.c);
        }

        public String b() {
            return "Handle intent action = " + this.c.getAction();
        }
    }

    public static abstract class h extends com.xiaomi.push.service.i.b {
        public h(int i) {
            super(i);
        }

        public abstract void a();

        public abstract String b();

        public void run() {
            if (!(this.a == 4 || this.a == 8)) {
                com.xiaomi.channel.commonutils.logger.b.a("JOB: " + b());
            }
            a();
        }
    }

    class i extends h {
        public i() {
            super(5);
        }

        public void a() {
            XMPushService.this.m.b();
        }

        public String b() {
            return "ask the job queue to quit";
        }
    }

    class j extends h {
        private com.xiaomi.smack.packet.d c = null;

        public j(com.xiaomi.smack.packet.d dVar) {
            super(8);
            this.c = dVar;
        }

        public void a() {
            XMPushService.this.l.a(this.c);
        }

        public String b() {
            return "receive a message.";
        }
    }

    class k extends h {
        boolean b;

        public k(boolean z) {
            super(4);
            this.b = z;
        }

        public void a() {
            if (XMPushService.this.f()) {
                try {
                    if (!this.b) {
                        com.xiaomi.stats.h.a();
                    }
                    XMPushService.this.j.b(this.b);
                } catch (com.xiaomi.smack.l e) {
                    com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
                    XMPushService.this.a(10, (Exception) e);
                }
            }
        }

        public String b() {
            return "send ping..";
        }
    }

    class l extends h {
        com.xiaomi.push.service.am.b b = null;

        public l(com.xiaomi.push.service.am.b bVar) {
            super(4);
            this.b = bVar;
        }

        public void a() {
            try {
                this.b.a(com.xiaomi.push.service.am.c.unbind, 1, 16, null, null);
                XMPushService.this.j.a(this.b.h, this.b.b);
                this.b.a(com.xiaomi.push.service.am.c.binding, 1, 16, null, null);
                XMPushService.this.j.a(this.b);
            } catch (com.xiaomi.smack.l e) {
                com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
                XMPushService.this.a(10, (Exception) e);
            }
        }

        public String b() {
            return "rebind the client. " + this.b.h;
        }
    }

    class m extends h {
        m() {
            super(3);
        }

        public void a() {
            XMPushService.this.a(11, (Exception) null);
            if (XMPushService.this.b()) {
                XMPushService.this.n();
            }
        }

        public String b() {
            return "reset the connection.";
        }
    }

    class n extends h {
        com.xiaomi.push.service.am.b b = null;
        int c;
        String d;
        String e;

        public n(com.xiaomi.push.service.am.b bVar, int i, String str, String str2) {
            super(9);
            this.b = bVar;
            this.c = i;
            this.d = str;
            this.e = str2;
        }

        public void a() {
            if (!(this.b.m == com.xiaomi.push.service.am.c.unbind || XMPushService.this.j == null)) {
                try {
                    XMPushService.this.j.a(this.b.h, this.b.b);
                } catch (com.xiaomi.smack.l e2) {
                    com.xiaomi.channel.commonutils.logger.b.a((Throwable) e2);
                    XMPushService.this.a(10, (Exception) e2);
                }
            }
            this.b.a(com.xiaomi.push.service.am.c.unbind, this.c, 0, this.e, this.d);
        }

        public String b() {
            return "unbind the channel. " + this.b.h;
        }
    }

    static {
        HostManager.addReservedHost("app.chat.xiaomi.net", "app.chat.xiaomi.net");
        HostManager.addReservedHost("app.chat.xiaomi.net", "42.62.94.2:443");
        HostManager.addReservedHost("app.chat.xiaomi.net", "114.54.23.2");
        HostManager.addReservedHost("app.chat.xiaomi.net", "111.13.142.2");
        HostManager.addReservedHost("app.chat.xiaomi.net", "111.206.200.2");
    }

    @TargetApi(11)
    public static Notification a(Context context) {
        Intent intent = new Intent(context, XMPushService.class);
        if (VERSION.SDK_INT >= 11) {
            Builder builder = new Builder(context);
            builder.setSmallIcon(context.getApplicationInfo().icon);
            builder.setContentTitle("Push Service");
            builder.setContentText("Push Service");
            builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 0));
            return builder.getNotification();
        }
        Notification notification = new Notification();
        notification.setLatestEventInfo(context, "Push Service", "Push Service", PendingIntent.getService(context, 0, intent, 0));
        return notification;
    }

    private com.xiaomi.smack.packet.c a(com.xiaomi.smack.packet.c cVar, String str) {
        byte[] a2 = as.a(str, cVar.k());
        com.xiaomi.smack.packet.c cVar2 = new com.xiaomi.smack.packet.c();
        cVar2.n(cVar.n());
        cVar2.m(cVar.m());
        cVar2.k(cVar.k());
        cVar2.l(cVar.l());
        cVar2.b(true);
        String a3 = as.a(a2, com.xiaomi.smack.util.d.c(cVar.c()));
        com.xiaomi.smack.packet.a aVar = new com.xiaomi.smack.packet.a("s", null, null, null);
        aVar.b(a3);
        cVar2.a(aVar);
        return cVar2;
    }

    private com.xiaomi.smack.packet.d a(com.xiaomi.smack.packet.d dVar, String str, String str2, boolean z) {
        am a2 = am.a();
        List b2 = a2.b(str);
        if (b2.isEmpty()) {
            com.xiaomi.channel.commonutils.logger.b.a("open channel should be called first before sending a packet, pkg=" + str);
        } else {
            dVar.o(str);
            String l2 = dVar.l();
            if (TextUtils.isEmpty(l2)) {
                l2 = (String) b2.get(0);
                dVar.l(l2);
            }
            com.xiaomi.push.service.am.b b3 = a2.b(l2, dVar.n());
            if (!f()) {
                com.xiaomi.channel.commonutils.logger.b.a("drop a packet as the channel is not connected, chid=" + l2);
            } else if (b3 == null || b3.m != com.xiaomi.push.service.am.c.binded) {
                com.xiaomi.channel.commonutils.logger.b.a("drop a packet as the channel is not opened, chid=" + l2);
            } else if (TextUtils.equals(str2, b3.j)) {
                return (!(dVar instanceof com.xiaomi.smack.packet.c) || !z) ? dVar : a((com.xiaomi.smack.packet.c) dVar, b3.i);
            } else {
                com.xiaomi.channel.commonutils.logger.b.a("invalid session. " + str2);
            }
        }
        return null;
    }

    private void a(Intent intent) {
        String stringExtra = intent.getStringExtra(ao.y);
        String stringExtra2 = intent.getStringExtra(ao.B);
        Bundle bundleExtra = intent.getBundleExtra("ext_packet");
        boolean booleanExtra = intent.getBooleanExtra("ext_encrypt", true);
        com.xiaomi.smack.packet.c cVar = (com.xiaomi.smack.packet.c) a((com.xiaomi.smack.packet.d) new com.xiaomi.smack.packet.c(bundleExtra), stringExtra, stringExtra2, false);
        if (cVar != null) {
            com.xiaomi.push.service.am.b b2 = am.a().b(cVar.l(), cVar.n());
            if (booleanExtra && "3".equals(cVar.l())) {
                com.xiaomi.smack.a h2 = h();
                if (h2 != null && h2.a()) {
                    c((h) new au(this, com.xiaomi.slim.b.a((com.xiaomi.smack.packet.d) cVar, b2.i)));
                    return;
                }
            }
            if (booleanExtra) {
                cVar = a(cVar, b2.i);
            }
            if (cVar != null) {
                c((h) new au(this, (com.xiaomi.smack.packet.d) cVar));
            }
        }
    }

    private void a(String str, int i2) {
        Collection<com.xiaomi.push.service.am.b> c2 = am.a().c(str);
        if (c2 != null) {
            for (com.xiaomi.push.service.am.b bVar : c2) {
                if (bVar != null) {
                    a((h) new n(bVar, i2, null, null));
                }
            }
        }
        am.a().a(str);
    }

    public static boolean a(int i2, String str) {
        if (!TextUtils.equals(str, "Enter") || i2 != 1) {
            return TextUtils.equals(str, "Leave") && i2 == 2;
        }
        return true;
    }

    private boolean a(String str, Intent intent) {
        com.xiaomi.push.service.am.b b2 = am.a().b(str, intent.getStringExtra(ao.p));
        boolean z = false;
        if (b2 == null || str == null) {
            return false;
        }
        String stringExtra = intent.getStringExtra(ao.B);
        String stringExtra2 = intent.getStringExtra(ao.u);
        if (!TextUtils.isEmpty(b2.j) && !TextUtils.equals(stringExtra, b2.j)) {
            com.xiaomi.channel.commonutils.logger.b.a("session changed. old session=" + b2.j + ", new session=" + stringExtra + " chid = " + str);
            z = true;
        }
        if (stringExtra2.equals(b2.i)) {
            return z;
        }
        com.xiaomi.channel.commonutils.logger.b.a("security changed. chid = " + str + " sechash = " + com.xiaomi.channel.commonutils.string.c.a(stringExtra2));
        return true;
    }

    /* access modifiers changed from: private */
    public boolean a(String str, String str2, Context context) {
        if (TextUtils.equals("Leave", str) && !TextUtils.equals("Enter", e.a(context).c(str2))) {
            return false;
        }
        if (e.a(context).a(str2, str) != 0) {
            return true;
        }
        com.xiaomi.channel.commonutils.logger.b.a("update geofence statue failed geo_id:" + str2);
        return false;
    }

    private com.xiaomi.push.service.am.b b(String str, Intent intent) {
        com.xiaomi.push.service.am.b b2 = am.a().b(str, intent.getStringExtra(ao.p));
        if (b2 == null) {
            b2 = new com.xiaomi.push.service.am.b(this);
        }
        b2.h = intent.getStringExtra(ao.q);
        b2.b = intent.getStringExtra(ao.p);
        b2.c = intent.getStringExtra(ao.s);
        b2.a = intent.getStringExtra(ao.y);
        b2.f = intent.getStringExtra(ao.w);
        b2.g = intent.getStringExtra(ao.x);
        b2.e = intent.getBooleanExtra(ao.v, false);
        b2.i = intent.getStringExtra(ao.u);
        b2.j = intent.getStringExtra(ao.B);
        b2.d = intent.getStringExtra(ao.t);
        b2.k = this.k;
        b2.l = getApplicationContext();
        am.a().a(b2);
        return b2;
    }

    private void b(Intent intent) {
        int i2 = 0;
        String stringExtra = intent.getStringExtra(ao.y);
        String stringExtra2 = intent.getStringExtra(ao.B);
        Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra("ext_packets");
        com.xiaomi.smack.packet.c[] cVarArr = new com.xiaomi.smack.packet.c[parcelableArrayExtra.length];
        boolean booleanExtra = intent.getBooleanExtra("ext_encrypt", true);
        int i3 = 0;
        while (i3 < parcelableArrayExtra.length) {
            cVarArr[i3] = new com.xiaomi.smack.packet.c((Bundle) parcelableArrayExtra[i3]);
            cVarArr[i3] = (com.xiaomi.smack.packet.c) a((com.xiaomi.smack.packet.d) cVarArr[i3], stringExtra, stringExtra2, false);
            if (cVarArr[i3] != null) {
                i3++;
            } else {
                return;
            }
        }
        am a2 = am.a();
        if (booleanExtra && "3".equals(cVarArr[0].l())) {
            com.xiaomi.smack.a h2 = h();
            if (h2 != null && h2.a()) {
                com.xiaomi.slim.b[] bVarArr = new com.xiaomi.slim.b[cVarArr.length];
                while (i2 < cVarArr.length) {
                    com.xiaomi.smack.packet.c cVar = cVarArr[i2];
                    bVarArr[i2] = com.xiaomi.slim.b.a((com.xiaomi.smack.packet.d) cVar, a2.b(cVar.l(), cVar.n()).i);
                    i2++;
                }
                c((h) new a(this, bVarArr));
                return;
            }
        }
        while (i2 < cVarArr.length) {
            cVarArr[i2] = booleanExtra ? a(cVarArr[i2], a2.b(cVarArr[i2].l(), cVarArr[i2].n()).i) : cVarArr[i2];
            i2++;
        }
        c((h) new a(this, cVarArr));
    }

    private void b(boolean z) {
        this.g = System.currentTimeMillis();
        if (!f()) {
            a(true);
        } else if (this.j.o() || this.j.p() || com.xiaomi.channel.commonutils.network.d.f(this)) {
            c((h) new k(z));
        } else {
            c((h) new f(17, null));
            a(true);
        }
    }

    /* access modifiers changed from: private */
    public void c(Intent intent) {
        String b2;
        int i2;
        com.xiaomi.push.service.am.b bVar = null;
        boolean z = true;
        boolean z2 = false;
        am a2 = am.a();
        if (ao.d.equalsIgnoreCase(intent.getAction()) || ao.j.equalsIgnoreCase(intent.getAction())) {
            String stringExtra = intent.getStringExtra(ao.q);
            if (TextUtils.isEmpty(intent.getStringExtra(ao.u))) {
                com.xiaomi.channel.commonutils.logger.b.a("security is empty. ignore.");
            } else if (stringExtra != null) {
                boolean a3 = a(stringExtra, intent);
                com.xiaomi.push.service.am.b b3 = b(stringExtra, intent);
                if (!com.xiaomi.channel.commonutils.network.d.d(this)) {
                    this.k.a(this, b3, false, 2, null);
                } else if (!f()) {
                    a(true);
                } else if (b3.m == com.xiaomi.push.service.am.c.unbind) {
                    c((h) new a(b3));
                } else if (a3) {
                    c((h) new l(b3));
                } else if (b3.m == com.xiaomi.push.service.am.c.binding) {
                    com.xiaomi.channel.commonutils.logger.b.a(String.format("the client is binding. %1$s %2$s.", new Object[]{b3.h, b3.b}));
                } else if (b3.m == com.xiaomi.push.service.am.c.binded) {
                    this.k.a(this, b3, true, 0, null);
                }
            } else {
                com.xiaomi.channel.commonutils.logger.b.d("channel id is empty, do nothing!");
            }
        } else if (ao.i.equalsIgnoreCase(intent.getAction())) {
            String stringExtra2 = intent.getStringExtra(ao.y);
            String stringExtra3 = intent.getStringExtra(ao.q);
            String stringExtra4 = intent.getStringExtra(ao.p);
            com.xiaomi.channel.commonutils.logger.b.a("Service called closechannel chid = " + stringExtra3 + " userId = " + stringExtra4);
            if (TextUtils.isEmpty(stringExtra3)) {
                for (String a4 : a2.b(stringExtra2)) {
                    a(a4, 2);
                }
            } else if (TextUtils.isEmpty(stringExtra4)) {
                a(stringExtra3, 2);
            } else {
                a(stringExtra3, stringExtra4, 2, null, null);
            }
        } else if (ao.e.equalsIgnoreCase(intent.getAction())) {
            a(intent);
        } else if (ao.g.equalsIgnoreCase(intent.getAction())) {
            b(intent);
        } else if (ao.f.equalsIgnoreCase(intent.getAction())) {
            String stringExtra5 = intent.getStringExtra(ao.y);
            String stringExtra6 = intent.getStringExtra(ao.B);
            com.xiaomi.smack.packet.b bVar2 = new com.xiaomi.smack.packet.b(intent.getBundleExtra("ext_packet"));
            if (a((com.xiaomi.smack.packet.d) bVar2, stringExtra5, stringExtra6, false) != null) {
                c((h) new au(this, (com.xiaomi.smack.packet.d) bVar2));
            }
        } else if (ao.h.equalsIgnoreCase(intent.getAction())) {
            String stringExtra7 = intent.getStringExtra(ao.y);
            String stringExtra8 = intent.getStringExtra(ao.B);
            com.xiaomi.smack.packet.f fVar = new com.xiaomi.smack.packet.f(intent.getBundleExtra("ext_packet"));
            if (a((com.xiaomi.smack.packet.d) fVar, stringExtra7, stringExtra8, false) != null) {
                c((h) new au(this, (com.xiaomi.smack.packet.d) fVar));
            }
        } else if (ao.k.equals(intent.getAction())) {
            String stringExtra9 = intent.getStringExtra(ao.q);
            String stringExtra10 = intent.getStringExtra(ao.p);
            if (stringExtra9 != null) {
                com.xiaomi.channel.commonutils.logger.b.a("request reset connection from chid = " + stringExtra9);
                com.xiaomi.push.service.am.b b4 = am.a().b(stringExtra9, stringExtra10);
                if (b4 != null && b4.i.equals(intent.getStringExtra(ao.u)) && b4.m == com.xiaomi.push.service.am.c.binded) {
                    com.xiaomi.smack.a h2 = h();
                    if (h2 == null || !h2.a(System.currentTimeMillis() - IPC.LogoutAsyncTimeout)) {
                        c((h) new m());
                    }
                }
            }
        } else if (ao.l.equals(intent.getAction())) {
            String stringExtra11 = intent.getStringExtra(ao.y);
            List b5 = a2.b(stringExtra11);
            if (b5.isEmpty()) {
                com.xiaomi.channel.commonutils.logger.b.a("open channel should be called first before update info, pkg=" + stringExtra11);
                return;
            }
            String stringExtra12 = intent.getStringExtra(ao.q);
            String stringExtra13 = intent.getStringExtra(ao.p);
            if (TextUtils.isEmpty(stringExtra12)) {
                stringExtra12 = (String) b5.get(0);
            }
            if (TextUtils.isEmpty(stringExtra13)) {
                Collection c2 = a2.c(stringExtra12);
                if (c2 != null && !c2.isEmpty()) {
                    bVar = (com.xiaomi.push.service.am.b) c2.iterator().next();
                }
            } else {
                bVar = a2.b(stringExtra12, stringExtra13);
            }
            if (bVar != null) {
                if (intent.hasExtra(ao.w)) {
                    bVar.f = intent.getStringExtra(ao.w);
                }
                if (intent.hasExtra(ao.x)) {
                    bVar.g = intent.getStringExtra(ao.x);
                }
            }
        } else if ("com.xiaomi.mipush.REGISTER_APP".equals(intent.getAction())) {
            if (!aq.a(getApplicationContext()).a() || aq.a(getApplicationContext()).b() != 0) {
                byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
                String stringExtra14 = intent.getStringExtra("mipush_app_package");
                boolean booleanExtra = intent.getBooleanExtra("mipush_env_chanage", false);
                int intExtra = intent.getIntExtra("mipush_env_type", 1);
                r.a((Context) this).g(stringExtra14);
                if (!booleanExtra || "com.xiaomi.xmsf".equals(getPackageName())) {
                    a(byteArrayExtra, stringExtra14);
                } else {
                    c((h) new bk(this, 14, intExtra, byteArrayExtra, stringExtra14));
                }
            } else {
                com.xiaomi.channel.commonutils.logger.b.a("register without being provisioned. " + intent.getStringExtra("mipush_app_package"));
            }
        } else if ("com.xiaomi.mipush.SEND_MESSAGE".equals(intent.getAction()) || "com.xiaomi.mipush.UNREGISTER_APP".equals(intent.getAction())) {
            String stringExtra15 = intent.getStringExtra("mipush_app_package");
            byte[] byteArrayExtra2 = intent.getByteArrayExtra("mipush_payload");
            boolean booleanExtra2 = intent.getBooleanExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
            if ("com.xiaomi.mipush.UNREGISTER_APP".equals(intent.getAction())) {
                r.a((Context) this).d(stringExtra15);
            }
            a(stringExtra15, byteArrayExtra2, booleanExtra2);
        } else if (ar.a.equals(intent.getAction())) {
            String stringExtra16 = intent.getStringExtra("uninstall_pkg_name");
            if (stringExtra16 != null && !TextUtils.isEmpty(stringExtra16.trim())) {
                try {
                    getPackageManager().getPackageInfo(stringExtra16, 0);
                    z = false;
                } catch (NameNotFoundException e2) {
                }
                if (!"com.xiaomi.channel".equals(stringExtra16) || am.a().c("1").isEmpty() || !z) {
                    SharedPreferences sharedPreferences = getSharedPreferences("pref_registered_pkg_names", 0);
                    String string = sharedPreferences.getString(stringExtra16, null);
                    if (!TextUtils.isEmpty(string) && z) {
                        Editor edit = sharedPreferences.edit();
                        edit.remove(stringExtra16);
                        edit.commit();
                        if (ae.e(this, stringExtra16)) {
                            ae.d(this, stringExtra16);
                        }
                        ae.b(this, stringExtra16);
                        if (f() && string != null) {
                            try {
                                ac.a(this, ac.a(stringExtra16, string));
                                com.xiaomi.channel.commonutils.logger.b.a("uninstall " + stringExtra16 + " msg sent");
                            } catch (com.xiaomi.smack.l e3) {
                                com.xiaomi.channel.commonutils.logger.b.d("Fail to send Message: " + e3.getMessage());
                                a(10, (Exception) e3);
                            }
                        }
                    }
                } else {
                    a("1", 0);
                    com.xiaomi.channel.commonutils.logger.b.a("close the miliao channel as the app is uninstalled.");
                }
            }
        } else if ("com.xiaomi.mipush.CLEAR_NOTIFICATION".equals(intent.getAction())) {
            String stringExtra17 = intent.getStringExtra(ao.y);
            int intExtra2 = intent.getIntExtra(ao.z, -2);
            if (TextUtils.isEmpty(stringExtra17)) {
                return;
            }
            if (intExtra2 >= -1) {
                ae.a((Context) this, stringExtra17, intExtra2);
            } else {
                ae.a((Context) this, stringExtra17, intent.getStringExtra(ao.D), intent.getStringExtra(ao.E));
            }
        } else if ("com.xiaomi.mipush.SET_NOTIFICATION_TYPE".equals(intent.getAction())) {
            String stringExtra18 = intent.getStringExtra(ao.y);
            String stringExtra19 = intent.getStringExtra(ao.C);
            if (intent.hasExtra(ao.A)) {
                i2 = intent.getIntExtra(ao.A, 0);
                b2 = com.xiaomi.channel.commonutils.string.c.b(stringExtra18 + i2);
            } else {
                b2 = com.xiaomi.channel.commonutils.string.c.b(stringExtra18);
                i2 = 0;
                z2 = true;
            }
            if (TextUtils.isEmpty(stringExtra18) || !TextUtils.equals(stringExtra19, b2)) {
                com.xiaomi.channel.commonutils.logger.b.d("invalid notification for " + stringExtra18);
            } else if (z2) {
                ae.d(this, stringExtra18);
            } else {
                ae.b((Context) this, stringExtra18, i2);
            }
        } else if ("com.xiaomi.mipush.DISABLE_PUSH".equals(intent.getAction())) {
            String stringExtra20 = intent.getStringExtra("mipush_app_package");
            if (!TextUtils.isEmpty(stringExtra20)) {
                r.a((Context) this).e(stringExtra20);
            }
            if (!"com.xiaomi.xmsf".equals(getPackageName())) {
                if (this.f != null) {
                    unregisterReceiver(this.f);
                    this.f = null;
                }
                this.m.c();
                a((h) new bl(this, 2));
                am.a().e();
                am.a().a((Context) this, 0);
                am.a().d();
                av.a().b();
                com.xiaomi.push.service.timers.a.a();
            }
        } else if ("com.xiaomi.mipush.DISABLE_PUSH_MESSAGE".equals(intent.getAction()) || "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE".equals(intent.getAction())) {
            String stringExtra21 = intent.getStringExtra("mipush_app_package");
            byte[] byteArrayExtra3 = intent.getByteArrayExtra("mipush_payload");
            String stringExtra22 = intent.getStringExtra("mipush_app_id");
            String stringExtra23 = intent.getStringExtra("mipush_app_token");
            if ("com.xiaomi.mipush.DISABLE_PUSH_MESSAGE".equals(intent.getAction())) {
                r.a((Context) this).f(stringExtra21);
            }
            if ("com.xiaomi.mipush.ENABLE_PUSH_MESSAGE".equals(intent.getAction())) {
                r.a((Context) this).h(stringExtra21);
                r.a((Context) this).i(stringExtra21);
            }
            if (byteArrayExtra3 == null) {
                t.a(this, stringExtra21, byteArrayExtra3, ErrorCode.ERROR_INVALID_PAYLOAD, "null payload");
                return;
            }
            t.b(stringExtra21, byteArrayExtra3);
            a((h) new s(this, stringExtra21, stringExtra22, stringExtra23, byteArrayExtra3));
            if ("com.xiaomi.mipush.ENABLE_PUSH_MESSAGE".equals(intent.getAction()) && this.f == null) {
                this.f = new e();
                registerReceiver(this.f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            }
        } else if ("com.xiaomi.mipush.SEND_TINYDATA".equals(intent.getAction())) {
            String stringExtra24 = intent.getStringExtra("mipush_app_package");
            byte[] byteArrayExtra4 = intent.getByteArrayExtra("mipush_payload");
            com.xiaomi.xmpush.thrift.e eVar = new com.xiaomi.xmpush.thrift.e();
            try {
                ar.a(eVar, byteArrayExtra4);
                com.xiaomi.tinyData.d.a((Context) this).b(eVar, stringExtra24);
            } catch (org.apache.thrift.f e4) {
                com.xiaomi.channel.commonutils.logger.b.a((Throwable) e4);
            }
        } else if ("com.xiaomi.push.timer".equalsIgnoreCase(intent.getAction())) {
            com.xiaomi.channel.commonutils.logger.b.a("Service called on timer");
            if (k()) {
                b(false);
            }
        } else if ("com.xiaomi.push.check_alive".equalsIgnoreCase(intent.getAction())) {
            com.xiaomi.channel.commonutils.logger.b.a("Service called on check alive.");
            if (k()) {
                b(false);
            }
        } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            j();
        }
    }

    private void c(h hVar) {
        this.m.a((com.xiaomi.push.service.i.b) hVar);
    }

    private void c(boolean z) {
        try {
            if (!com.xiaomi.channel.commonutils.android.j.d()) {
                return;
            }
            if (z) {
                sendBroadcast(new Intent("miui.intent.action.NETWORK_CONNECTED"));
            } else {
                sendBroadcast(new Intent("miui.intent.action.NETWORK_BLOCKED"));
            }
        } catch (Exception e2) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e2);
        }
    }

    private void j() {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e2) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e2);
            networkInfo = null;
        }
        if (networkInfo != null) {
            com.xiaomi.channel.commonutils.logger.b.a("network changed, " + networkInfo.toString());
        } else {
            com.xiaomi.channel.commonutils.logger.b.a("network changed, no active network");
        }
        if (com.xiaomi.stats.f.b() != null) {
            com.xiaomi.stats.f.b().b();
        }
        com.xiaomi.smack.util.g.a((Context) this);
        this.i.q();
        if (com.xiaomi.channel.commonutils.network.d.d(this)) {
            if (f() && k()) {
                b(false);
            }
            if (!f() && !g()) {
                this.m.b(1);
                a((h) new d());
            }
            com.xiaomi.push.log.b.a((Context) this).a();
        } else {
            a((h) new f(2, null));
        }
        m();
        com.xiaomi.tinyData.d.a((Context) this).a("NewWork Changed");
    }

    private boolean k() {
        if (System.currentTimeMillis() - this.g < 30000) {
            return false;
        }
        return com.xiaomi.channel.commonutils.network.d.e(this);
    }

    private boolean l() {
        return "com.xiaomi.xmsf".equals(getPackageName()) || !r.a((Context) this).b(getPackageName());
    }

    /* access modifiers changed from: private */
    public void m() {
        if (!b()) {
            com.xiaomi.push.service.timers.a.a();
        } else if (!com.xiaomi.push.service.timers.a.b()) {
            com.xiaomi.push.service.timers.a.a(true);
        }
    }

    /* access modifiers changed from: private */
    public void n() {
        if (this.j != null && this.j.j()) {
            com.xiaomi.channel.commonutils.logger.b.d("try to connect while connecting.");
        } else if (this.j == null || !this.j.k()) {
            this.d.a(com.xiaomi.channel.commonutils.network.d.l(this));
            o();
            if (this.j == null) {
                am.a().a((Context) this);
                c(false);
            }
        } else {
            com.xiaomi.channel.commonutils.logger.b.d("try to connect while is connected.");
        }
    }

    private void o() {
        try {
            this.i.a(this.n, (com.xiaomi.smack.filter.a) new bc(this));
            this.i.s();
            this.j = this.i;
        } catch (com.xiaomi.smack.l e2) {
            com.xiaomi.channel.commonutils.logger.b.a("fail to create Slim connection", (Throwable) e2);
            this.i.b(3, e2);
        }
    }

    private boolean p() {
        if (TextUtils.equals(getPackageName(), "com.xiaomi.xmsf")) {
            return false;
        }
        return aj.a((Context) this).a(com.xiaomi.xmpush.thrift.f.ForegroundServiceSwitch.a(), false);
    }

    private void q() {
        if (VERSION.SDK_INT < 18) {
            startForeground(h, new Notification());
        } else {
            bindService(new Intent(this, XMJobService.class), new bd(this), 1);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        if (System.currentTimeMillis() - this.g >= ((long) com.xiaomi.smack.g.c()) && com.xiaomi.channel.commonutils.network.d.e(this)) {
            b(true);
        }
    }

    public void a(int i2) {
        this.m.b(i2);
    }

    public void a(int i2, Exception exc) {
        com.xiaomi.channel.commonutils.logger.b.a("disconnect " + hashCode() + ", " + (this.j == null ? null : Integer.valueOf(this.j.hashCode())));
        if (this.j != null) {
            this.j.b(i2, exc);
            this.j = null;
        }
        a(7);
        a(4);
        am.a().a((Context) this, i2);
    }

    public void a(BroadcastReceiver broadcastReceiver) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.xiaomi.metoknlp.geofencing.state_change");
        registerReceiver(broadcastReceiver, intentFilter);
    }

    public void a(h hVar) {
        a(hVar, 0);
    }

    public void a(h hVar, long j2) {
        try {
            this.m.a((com.xiaomi.push.service.i.b) hVar, j2);
        } catch (IllegalStateException e2) {
        }
    }

    public void a(com.xiaomi.push.service.am.b bVar) {
        if (bVar != null) {
            long a2 = bVar.a();
            com.xiaomi.channel.commonutils.logger.b.a("schedule rebind job in " + (a2 / 1000));
            a((h) new a(bVar), a2);
        }
    }

    public void a(com.xiaomi.slim.b bVar) {
        if (this.j != null) {
            this.j.b(bVar);
            return;
        }
        throw new com.xiaomi.smack.l("try send msg while connection is null.");
    }

    public void a(com.xiaomi.smack.a aVar) {
        com.xiaomi.stats.f.b().a(aVar);
        c(true);
        this.e.a();
        Iterator it = am.a().b().iterator();
        while (it.hasNext()) {
            a((h) new a((com.xiaomi.push.service.am.b) it.next()));
        }
    }

    public void a(com.xiaomi.smack.a aVar, int i2, Exception exc) {
        com.xiaomi.stats.f.b().a(aVar, i2, exc);
        a(false);
    }

    public void a(com.xiaomi.smack.a aVar, Exception exc) {
        com.xiaomi.stats.f.b().a(aVar, exc);
        c(false);
        a(false);
    }

    public void a(com.xiaomi.smack.packet.d dVar) {
        if (this.j != null) {
            this.j.a(dVar);
            return;
        }
        throw new com.xiaomi.smack.l("try send msg while connection is null.");
    }

    public void a(String str, String str2, int i2, String str3, String str4) {
        com.xiaomi.push.service.am.b b2 = am.a().b(str, str2);
        if (b2 != null) {
            a((h) new n(b2, i2, str4, str3));
        }
        am.a().a(str, str2);
    }

    /* access modifiers changed from: 0000 */
    public void a(String str, byte[] bArr, boolean z) {
        Collection c2 = am.a().c("5");
        if (c2.isEmpty()) {
            if (z) {
                t.b(str, bArr);
            }
        } else if (((com.xiaomi.push.service.am.b) c2.iterator().next()).m == com.xiaomi.push.service.am.c.binded) {
            c((h) new bm(this, 4, str, bArr));
        } else if (z) {
            t.b(str, bArr);
        }
    }

    public void a(boolean z) {
        this.e.a(z);
    }

    public void a(byte[] bArr, String str) {
        if (bArr == null) {
            t.a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, "null payload");
            com.xiaomi.channel.commonutils.logger.b.a("register request without payload");
            return;
        }
        ac acVar = new ac();
        try {
            ar.a(acVar, bArr);
            if (acVar.a == com.xiaomi.xmpush.thrift.a.Registration) {
                ag agVar = new ag();
                try {
                    ar.a(agVar, acVar.f());
                    t.a(acVar.j(), bArr);
                    a((h) new s(this, acVar.j(), agVar.d(), agVar.h(), bArr));
                } catch (org.apache.thrift.f e2) {
                    com.xiaomi.channel.commonutils.logger.b.a((Throwable) e2);
                    t.a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, " data action error.");
                }
            } else {
                t.a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, " registration action required.");
                com.xiaomi.channel.commonutils.logger.b.a("register request with invalid payload");
            }
        } catch (org.apache.thrift.f e3) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e3);
            t.a(this, str, bArr, ErrorCode.ERROR_INVALID_PAYLOAD, " data container error.");
        }
    }

    public void a(com.xiaomi.slim.b[] bVarArr) {
        if (this.j != null) {
            this.j.a(bVarArr);
            return;
        }
        throw new com.xiaomi.smack.l("try send msg while connection is null.");
    }

    public void a(com.xiaomi.smack.packet.d[] dVarArr) {
        if (this.j != null) {
            this.j.a(dVarArr);
            return;
        }
        throw new com.xiaomi.smack.l("try send msg while connection is null.");
    }

    public void b(h hVar) {
        this.m.a(hVar.a, (com.xiaomi.push.service.i.b) hVar);
    }

    public void b(com.xiaomi.smack.a aVar) {
        com.xiaomi.channel.commonutils.logger.b.c("begin to connect...");
        com.xiaomi.stats.f.b().b(aVar);
    }

    public boolean b() {
        return com.xiaomi.channel.commonutils.network.d.d(this) && am.a().c() > 0 && !c() && l();
    }

    public boolean b(int i2) {
        return this.m.a(i2);
    }

    public boolean c() {
        try {
            Class cls = Class.forName("miui.os.Build");
            return cls.getField("IS_CM_CUSTOMIZATION_TEST").getBoolean(null) || cls.getField("IS_CU_CUSTOMIZATION_TEST").getBoolean(null) || cls.getField("IS_CT_CUSTOMIZATION_TEST").getBoolean(null);
        } catch (Throwable th) {
            return false;
        }
    }

    public b d() {
        return new b();
    }

    public b e() {
        return this.k;
    }

    public boolean f() {
        return this.j != null && this.j.k();
    }

    public boolean g() {
        return this.j != null && this.j.j();
    }

    public com.xiaomi.smack.a h() {
        return this.j;
    }

    public IBinder onBind(Intent intent) {
        return this.a.getBinder();
    }

    public void onCreate() {
        super.onCreate();
        com.xiaomi.channel.commonutils.android.j.a(this);
        p a2 = q.a(this);
        if (a2 != null) {
            com.xiaomi.channel.commonutils.misc.a.a(a2.g);
        }
        this.a = new Messenger(new be(this));
        ap.a(this);
        this.d = new bf(this, null, 5222, "xiaomi.com", null);
        this.d.a(true);
        this.i = new com.xiaomi.slim.f(this, this.d);
        this.k = d();
        try {
            if (com.xiaomi.channel.commonutils.android.j.d()) {
                this.k.a((Context) this);
            }
        } catch (Exception e2) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e2);
        }
        com.xiaomi.push.service.timers.a.a((Context) this);
        this.i.a((com.xiaomi.smack.d) this);
        this.l = new PacketSync(this);
        this.e = new at(this);
        new c().a();
        com.xiaomi.stats.f.a().a(this);
        this.m = new i("Connection Controller Thread");
        if (l()) {
            a((h) new bg(this, 11));
        }
        am a3 = am.a();
        a3.e();
        a3.a((com.xiaomi.push.service.am.a) new bh(this));
        if (l()) {
            this.f = new e();
            registerReceiver(this.f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        if (p()) {
            q();
        }
        com.xiaomi.tinyData.d.a((Context) this).a((com.xiaomi.tinyData.e) new k(this), "UPLOADER_PUSH_CHANNEL");
        a(this.b);
        com.xiaomi.channel.commonutils.misc.g.a((Context) this).a((com.xiaomi.channel.commonutils.misc.g.a) new d(this), 86400);
        com.xiaomi.channel.commonutils.logger.b.a("XMPushService created pid = " + h);
    }

    public void onDestroy() {
        if (this.f != null) {
            unregisterReceiver(this.f);
        }
        unregisterReceiver(this.b);
        this.m.c();
        a((h) new bb(this, 2));
        a((h) new i());
        am.a().e();
        am.a().a((Context) this, 15);
        am.a().d();
        this.i.b((com.xiaomi.smack.d) this);
        av.a().b();
        com.xiaomi.push.service.timers.a.a();
        super.onDestroy();
        com.xiaomi.channel.commonutils.logger.b.a("Service destroyed");
    }

    public void onStart(Intent intent, int i2) {
        if (intent == null) {
            com.xiaomi.channel.commonutils.logger.b.d("onStart() with intent NULL");
        } else {
            com.xiaomi.channel.commonutils.logger.b.c(String.format("onStart() with intent.Action = %s, chid = %s", new Object[]{intent.getAction(), intent.getStringExtra(ao.q)}));
        }
        if (intent != null && intent.getAction() != null) {
            if ("com.xiaomi.push.timer".equalsIgnoreCase(intent.getAction()) || "com.xiaomi.push.check_alive".equalsIgnoreCase(intent.getAction())) {
                if (this.m.d()) {
                    com.xiaomi.channel.commonutils.logger.b.d("ERROR, the job controller is blocked.");
                    am.a().a((Context) this, 14);
                    stopSelf();
                    return;
                }
                a((h) new g(intent));
            } else if (!"com.xiaomi.push.network_status_changed".equalsIgnoreCase(intent.getAction())) {
                a((h) new g(intent));
            }
        }
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        onStart(intent, i3);
        return c;
    }
}
