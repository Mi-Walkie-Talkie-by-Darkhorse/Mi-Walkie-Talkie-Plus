package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.hv;
import com.xiaomi.push.hz;
import com.xiaomi.push.ii;
import com.xiaomi.push.iu;
import com.xiaomi.push.service.bw;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class MiTinyDataClient {
    public static final String PENDING_REASON_APPID = "com.xiaomi.xmpushsdk.tinydataPending.appId";
    public static final String PENDING_REASON_CHANNEL = "com.xiaomi.xmpushsdk.tinydataPending.channel";
    public static final String PENDING_REASON_INIT = "com.xiaomi.xmpushsdk.tinydataPending.init";

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static volatile a f8670a;

        /* renamed from: a  reason: collision with other field name */
        private Context f26a;

        /* renamed from: a  reason: collision with other field name */
        private Boolean f28a;

        /* renamed from: a  reason: collision with other field name */
        private String f29a;

        /* renamed from: a  reason: collision with other field name */
        private C0234a f27a = new C0234a();

        /* renamed from: a  reason: collision with other field name */
        private final ArrayList<hz> f30a = new ArrayList<>();

        /* renamed from: com.xiaomi.mipush.sdk.MiTinyDataClient$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0234a {

            /* renamed from: a  reason: collision with other field name */
            private ScheduledFuture<?> f33a;

            /* renamed from: a  reason: collision with other field name */
            private ScheduledThreadPoolExecutor f34a = new ScheduledThreadPoolExecutor(1);

            /* renamed from: a  reason: collision with other field name */
            public final ArrayList<hz> f32a = new ArrayList<>();

            /* renamed from: a  reason: collision with other field name */
            private final Runnable f31a = new ab(this);

            public C0234a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void a() {
                if (this.f33a == null) {
                    this.f33a = this.f34a.scheduleAtFixedRate(this.f31a, 1000L, 1000L, TimeUnit.MILLISECONDS);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void b() {
                hz remove = this.f32a.remove(0);
                for (iu iuVar : bw.a(Arrays.asList(remove), a.this.f26a.getPackageName(), b.m36a(a.this.f26a).m37a(), 30720)) {
                    b.c("MiTinyDataClient Send item by PushServiceClient.sendMessage(XmActionNotification)." + remove.d());
                    ao.a(a.this.f26a).a((ao) iuVar, hv.Notification, true, (ii) null);
                }
            }

            public void a(hz hzVar) {
                this.f34a.execute(new aa(this, hzVar));
            }
        }

        public static a a() {
            if (f8670a == null) {
                synchronized (a.class) {
                    if (f8670a == null) {
                        f8670a = new a();
                    }
                }
            }
            return f8670a;
        }

        private void a(hz hzVar) {
            synchronized (this.f30a) {
                if (!this.f30a.contains(hzVar)) {
                    this.f30a.add(hzVar);
                    if (this.f30a.size() > 100) {
                        this.f30a.remove(0);
                    }
                }
            }
        }

        private boolean a(Context context) {
            if (!ao.a(context).m29a()) {
                return true;
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
                if (packageInfo == null) {
                    return false;
                }
                return packageInfo.versionCode >= 108;
            } catch (Exception unused) {
                return false;
            }
        }

        private boolean b(Context context) {
            return b.m36a(context).m37a() == null && !a(this.f26a);
        }

        private boolean b(hz hzVar) {
            if (bw.a(hzVar, false)) {
                return false;
            }
            if (this.f28a.booleanValue()) {
                b.c("MiTinyDataClient Send item by PushServiceClient.sendTinyData(ClientUploadDataItem)." + hzVar.d());
                ao.a(this.f26a).a(hzVar);
                return true;
            }
            this.f27a.a(hzVar);
            return true;
        }

        /* renamed from: a  reason: collision with other method in class */
        public void m13a(Context context) {
            if (context == null) {
                b.m1a("context is null, MiTinyDataClientImp.init() failed.");
                return;
            }
            this.f26a = context;
            this.f28a = Boolean.valueOf(a(context));
            b(MiTinyDataClient.PENDING_REASON_INIT);
        }

        public synchronized void a(String str) {
            if (TextUtils.isEmpty(str)) {
                b.m1a("channel is null, MiTinyDataClientImp.setChannel(String) failed.");
                return;
            }
            this.f29a = str;
            b(MiTinyDataClient.PENDING_REASON_CHANNEL);
        }

        /* renamed from: a  reason: collision with other method in class */
        public boolean m14a() {
            return this.f26a != null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:47:0x00a5, code lost:
            r0 = "MiTinyDataClient Pending " + r6.b() + " reason is " + com.xiaomi.mipush.sdk.MiTinyDataClient.PENDING_REASON_CHANNEL;
         */
        /* renamed from: a  reason: collision with other method in class */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public synchronized boolean m15a(com.xiaomi.push.hz r6) {
            /*
                Method dump skipped, instructions count: 276
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.MiTinyDataClient.a.m15a(com.xiaomi.push.hz):boolean");
        }

        public void b(String str) {
            b.c("MiTinyDataClient.processPendingList(" + str + ")");
            ArrayList arrayList = new ArrayList();
            synchronized (this.f30a) {
                arrayList.addAll(this.f30a);
                this.f30a.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                m15a((hz) it.next());
            }
        }
    }

    public static void init(Context context, String str) {
        if (context == null) {
            b.m1a("context is null, MiTinyDataClient.init(Context, String) failed.");
            return;
        }
        a.a().m13a(context);
        if (TextUtils.isEmpty(str)) {
            b.m1a("channel is null or empty, MiTinyDataClient.init(Context, String) failed.");
        } else {
            a.a().a(str);
        }
    }

    public static boolean upload(Context context, hz hzVar) {
        b.c("MiTinyDataClient.upload " + hzVar.d());
        if (!a.a().m14a()) {
            a.a().m13a(context);
        }
        return a.a().m15a(hzVar);
    }

    public static boolean upload(Context context, String str, String str2, long j, String str3) {
        hz hzVar = new hz();
        hzVar.d(str);
        hzVar.c(str2);
        hzVar.a(j);
        hzVar.b(str3);
        hzVar.a(true);
        hzVar.a("push_sdk_channel");
        return upload(context, hzVar);
    }

    public static boolean upload(String str, String str2, long j, String str3) {
        hz hzVar = new hz();
        hzVar.d(str);
        hzVar.c(str2);
        hzVar.a(j);
        hzVar.b(str3);
        return a.a().m15a(hzVar);
    }
}
