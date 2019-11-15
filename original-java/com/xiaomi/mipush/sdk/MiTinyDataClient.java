package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.ay;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class MiTinyDataClient {
    public static final String PENDING_REASON_APPID = "com.xiaomi.xmpushsdk.tinydataPending.appId";
    public static final String PENDING_REASON_CHANNEL = "com.xiaomi.xmpushsdk.tinydataPending.channel";
    public static final String PENDING_REASON_INIT = "com.xiaomi.xmpushsdk.tinydataPending.init";

    public static class a {
        private static a a;
        /* access modifiers changed from: private */
        public Context b;
        private String c;
        private Boolean d;
        private C0064a e = new C0064a();
        private final ArrayList<e> f = new ArrayList<>();

        /* renamed from: com.xiaomi.mipush.sdk.MiTinyDataClient$a$a reason: collision with other inner class name */
        public class C0064a {
            public final ArrayList<e> a = new ArrayList<>();
            private ScheduledThreadPoolExecutor c = new ScheduledThreadPoolExecutor(1);
            /* access modifiers changed from: private */
            public ScheduledFuture<?> d;
            private final Runnable e = new s(this);

            public C0064a() {
            }

            /* access modifiers changed from: private */
            public void a() {
                if (this.d == null) {
                    this.d = this.c.scheduleAtFixedRate(this.e, 1000, 1000, TimeUnit.MILLISECONDS);
                }
            }

            /* access modifiers changed from: private */
            public void b() {
                e eVar = (e) this.a.remove(0);
                for (af afVar : ay.a(Arrays.asList(new e[]{eVar}), a.this.b.getPackageName(), c.a(a.this.b).c(), 30720)) {
                    b.c("MiTinyDataClient Send item by PushServiceClient.sendMessage(XmActionNotification)." + eVar.toString());
                    z.a(a.this.b).a(afVar, com.xiaomi.xmpush.thrift.a.Notification, true, null);
                }
            }

            public void a(e eVar) {
                this.c.execute(new r(this, eVar));
            }
        }

        public static a a() {
            if (a == null) {
                synchronized (a.class) {
                    if (a == null) {
                        a = new a();
                    }
                }
            }
            return a;
        }

        private void b(e eVar) {
            synchronized (this.f) {
                if (!this.f.contains(eVar)) {
                    this.f.add(eVar);
                    if (this.f.size() > 100) {
                        this.f.remove(0);
                    }
                }
            }
        }

        private boolean b(Context context) {
            if (!z.a(context).c()) {
                return true;
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
                if (packageInfo == null) {
                    return false;
                }
                return packageInfo.versionCode >= 108;
            } catch (Exception e2) {
                return false;
            }
        }

        private boolean c(Context context) {
            return c.a(context).c() == null && !b(this.b);
        }

        private boolean c(e eVar) {
            if (ay.a(eVar, false)) {
                return false;
            }
            if (this.d.booleanValue()) {
                b.c("MiTinyDataClient Send item by PushServiceClient.sendTinyData(ClientUploadDataItem)." + eVar.toString());
                z.a(this.b).a(eVar);
            } else {
                this.e.a(eVar);
            }
            return true;
        }

        public void a(Context context) {
            if (context == null) {
                b.a("context is null, MiTinyDataClientImp.init() failed.");
                return;
            }
            this.b = context;
            this.d = Boolean.valueOf(b(context));
            b(MiTinyDataClient.PENDING_REASON_INIT);
        }

        public synchronized void a(String str) {
            if (TextUtils.isEmpty(str)) {
                b.a("channel is null, MiTinyDataClientImp.setChannel(String) failed.");
            } else {
                this.c = str;
                b(MiTinyDataClient.PENDING_REASON_CHANNEL);
            }
        }

        public synchronized boolean a(e eVar) {
            boolean z = false;
            synchronized (this) {
                if (eVar != null) {
                    if (!ay.a(eVar, true)) {
                        boolean z2 = TextUtils.isEmpty(eVar.a()) && TextUtils.isEmpty(this.c);
                        boolean z3 = !b();
                        if (this.b == null || c(this.b)) {
                            z = true;
                        }
                        if (z3 || z2 || z) {
                            if (z2) {
                                b.c("MiTinyDataClient Pending " + eVar + " reason is " + MiTinyDataClient.PENDING_REASON_CHANNEL);
                            } else if (z3) {
                                b.c("MiTinyDataClient Pending " + eVar + " reason is " + MiTinyDataClient.PENDING_REASON_INIT);
                            } else if (z) {
                                b.c("MiTinyDataClient Pending " + eVar + " reason is " + MiTinyDataClient.PENDING_REASON_APPID);
                            }
                            b(eVar);
                            z = true;
                        } else {
                            b.c("MiTinyDataClient Send item immediately." + eVar.toString());
                            if (TextUtils.isEmpty(eVar.l())) {
                                eVar.f(MiPushClient.generatePacketID());
                            }
                            if (TextUtils.isEmpty(eVar.a())) {
                                eVar.a(this.c);
                            }
                            if (TextUtils.isEmpty(eVar.j())) {
                                eVar.e(this.b.getPackageName());
                            }
                            if (eVar.f() <= 0) {
                                eVar.b(System.currentTimeMillis());
                            }
                            z = c(eVar);
                        }
                    }
                }
            }
            return z;
        }

        public void b(String str) {
            b.c("MiTinyDataClient.processPendingList(" + str + ")");
            ArrayList arrayList = new ArrayList();
            synchronized (this.f) {
                arrayList.addAll(this.f);
                this.f.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a((e) it.next());
            }
        }

        public boolean b() {
            return this.b != null;
        }
    }

    public static void init(Context context, String str) {
        if (context == null) {
            b.a("context is null, MiTinyDataClient.init(Context, String) failed.");
            return;
        }
        a.a().a(context);
        if (TextUtils.isEmpty(str)) {
            b.a("channel is null or empty, MiTinyDataClient.init(Context, String) failed.");
        } else {
            a.a().a(str);
        }
    }

    public static boolean upload(Context context, e eVar) {
        b.c("MiTinyDataClient.upload " + eVar.toString());
        if (!a.a().b()) {
            a.a().a(context);
        }
        return a.a().a(eVar);
    }

    public static boolean upload(Context context, String str, String str2, long j, String str3) {
        e eVar = new e();
        eVar.d(str);
        eVar.c(str2);
        eVar.a(j);
        eVar.b(str3);
        eVar.c(true);
        eVar.a("push_sdk_channel");
        return upload(context, eVar);
    }

    public static boolean upload(String str, String str2, long j, String str3) {
        e eVar = new e();
        eVar.d(str);
        eVar.c(str2);
        eVar.a(j);
        eVar.b(str3);
        return a.a().a(eVar);
    }
}
