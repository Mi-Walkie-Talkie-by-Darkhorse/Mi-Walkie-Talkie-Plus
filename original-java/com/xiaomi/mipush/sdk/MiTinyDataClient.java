package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6241hz;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.service.C6377ba;
import com.xiaomi.push.service.C6410bw;
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

    /* renamed from: com.xiaomi.mipush.sdk.MiTinyDataClient$a */
    /* loaded from: classes2.dex */
    public static class C5910a {

        /* renamed from: a */
        private static volatile C5910a f20859a;

        /* renamed from: a */
        private Context f20860a;

        /* renamed from: a */
        private Boolean f20862a;

        /* renamed from: a */
        private String f20863a;

        /* renamed from: a */
        private C5911a f20861a = new C5911a();

        /* renamed from: a */
        private final ArrayList<C6241hz> f20864a = new ArrayList<>();

        /* renamed from: com.xiaomi.mipush.sdk.MiTinyDataClient$a$a */
        /* loaded from: classes2.dex */
        public class C5911a {

            /* renamed from: a */
            private ScheduledFuture<?> f20868a;

            /* renamed from: a */
            private ScheduledThreadPoolExecutor f20869a = new ScheduledThreadPoolExecutor(1);

            /* renamed from: a */
            public final ArrayList<C6241hz> f20867a = new ArrayList<>();

            /* renamed from: a */
            private final Runnable f20866a = new RunnableC5915ab(this);

            public C5911a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: a */
            public void m4058a() {
                if (this.f20868a == null) {
                    this.f20868a = this.f20869a.scheduleAtFixedRate(this.f20866a, 1000L, 1000L, TimeUnit.MILLISECONDS);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: b */
            public void m4053b() {
                C6241hz remove = this.f20867a.remove(0);
                for (C6263iu c6263iu : C6410bw.m1414a(Arrays.asList(remove), C5910a.this.f20860a.getPackageName(), C5938b.m3923a(C5910a.this.f20860a).m3928a(), 30720)) {
                    AbstractC5876b.m4139c("MiTinyDataClient Send item by PushServiceClient.sendMessage(XmActionNotification)." + remove.m2530d());
                    C5928ao.m3984a(C5910a.this.f20860a).m3968a((C5928ao) c6263iu, EnumC6237hv.Notification, true, (C6251ii) null);
                }
            }

            /* renamed from: a */
            public void m4054a(C6241hz c6241hz) {
                this.f20869a.execute(new RunnableC5914aa(this, c6241hz));
            }
        }

        /* renamed from: a */
        public static C5910a m4069a() {
            if (f20859a == null) {
                synchronized (C5910a.class) {
                    if (f20859a == null) {
                        f20859a = new C5910a();
                    }
                }
            }
            return f20859a;
        }

        /* renamed from: a */
        private void m4064a(C6241hz c6241hz) {
            synchronized (this.f20864a) {
                if (!this.f20864a.contains(c6241hz)) {
                    this.f20864a.add(c6241hz);
                    if (this.f20864a.size() > 100) {
                        this.f20864a.remove(0);
                    }
                }
            }
        }

        /* renamed from: a */
        private boolean m4066a(Context context) {
            if (C5928ao.m3984a(context).m3989a()) {
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
            return true;
        }

        /* renamed from: b */
        private boolean m4061b(Context context) {
            return C5938b.m3923a(context).m3928a() == null && !m4066a(this.f20860a);
        }

        /* renamed from: b */
        private boolean m4060b(C6241hz c6241hz) {
            if (C6410bw.m1417a(c6241hz, false)) {
                return false;
            }
            if (!this.f20862a.booleanValue()) {
                this.f20861a.m4054a(c6241hz);
                return true;
            }
            AbstractC5876b.m4139c("MiTinyDataClient Send item by PushServiceClient.sendTinyData(ClientUploadDataItem)." + c6241hz.m2530d());
            C5928ao.m3984a(this.f20860a).m3973a(c6241hz);
            return true;
        }

        /* renamed from: a */
        public void m4067a(Context context) {
            if (context == null) {
                AbstractC5876b.m4147a("context is null, MiTinyDataClientImp.init() failed.");
                return;
            }
            this.f20860a = context;
            this.f20862a = Boolean.valueOf(m4066a(context));
            m4059b(MiTinyDataClient.PENDING_REASON_INIT);
        }

        /* renamed from: a */
        public synchronized void m4062a(String str) {
            if (TextUtils.isEmpty(str)) {
                AbstractC5876b.m4147a("channel is null, MiTinyDataClientImp.setChannel(String) failed.");
                return;
            }
            this.f20863a = str;
            m4059b(MiTinyDataClient.PENDING_REASON_CHANNEL);
        }

        /* renamed from: a */
        public boolean m4068a() {
            return this.f20860a != null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:47:0x00a3, code lost:
            r0 = "MiTinyDataClient Pending " + r6.m2539b() + " reason is " + com.xiaomi.mipush.sdk.MiTinyDataClient.PENDING_REASON_CHANNEL;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public synchronized boolean m4063a(C6241hz c6241hz) {
            String str;
            boolean z = false;
            if (c6241hz == null) {
                return false;
            }
            if (C6410bw.m1417a(c6241hz, true)) {
                return false;
            }
            boolean z2 = TextUtils.isEmpty(c6241hz.m2551a()) && TextUtils.isEmpty(this.f20863a);
            boolean z3 = !m4068a();
            Context context = this.f20860a;
            z = (context == null || m4061b(context)) ? true : true;
            if (!z3 && !z2 && !z) {
                AbstractC5876b.m4139c("MiTinyDataClient Send item immediately." + c6241hz.m2530d());
                if (TextUtils.isEmpty(c6241hz.m2530d())) {
                    c6241hz.m2523f(C6377ba.m1518a());
                }
                if (TextUtils.isEmpty(c6241hz.m2551a())) {
                    c6241hz.m2544a(this.f20863a);
                }
                if (TextUtils.isEmpty(c6241hz.m2534c())) {
                    c6241hz.m2525e(this.f20860a.getPackageName());
                }
                if (c6241hz.m2552a() <= 0) {
                    c6241hz.m2537b(System.currentTimeMillis());
                }
                return m4060b(c6241hz);
            }
            if (!z3) {
                if (z) {
                    str = "MiTinyDataClient Pending " + c6241hz.m2539b() + " reason is " + MiTinyDataClient.PENDING_REASON_APPID;
                }
                m4064a(c6241hz);
                return true;
            }
            str = "MiTinyDataClient Pending " + c6241hz.m2539b() + " reason is " + MiTinyDataClient.PENDING_REASON_INIT;
            AbstractC5876b.m4139c(str);
            m4064a(c6241hz);
            return true;
        }

        /* renamed from: b */
        public void m4059b(String str) {
            AbstractC5876b.m4139c("MiTinyDataClient.processPendingList(" + str + ")");
            ArrayList arrayList = new ArrayList();
            synchronized (this.f20864a) {
                arrayList.addAll(this.f20864a);
                this.f20864a.clear();
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m4063a((C6241hz) it2.next());
            }
        }
    }

    public static void init(Context context, String str) {
        if (context == null) {
            AbstractC5876b.m4147a("context is null, MiTinyDataClient.init(Context, String) failed.");
            return;
        }
        C5910a.m4069a().m4067a(context);
        if (TextUtils.isEmpty(str)) {
            AbstractC5876b.m4147a("channel is null or empty, MiTinyDataClient.init(Context, String) failed.");
        } else {
            C5910a.m4069a().m4062a(str);
        }
    }

    public static boolean upload(Context context, C6241hz c6241hz) {
        AbstractC5876b.m4139c("MiTinyDataClient.upload " + c6241hz.m2530d());
        if (!C5910a.m4069a().m4068a()) {
            C5910a.m4069a().m4067a(context);
        }
        return C5910a.m4069a().m4063a(c6241hz);
    }

    public static boolean upload(Context context, String str, String str2, long j, String str3) {
        C6241hz c6241hz = new C6241hz();
        c6241hz.m2528d(str);
        c6241hz.m2532c(str2);
        c6241hz.m2547a(j);
        c6241hz.m2536b(str3);
        c6241hz.m2541a(true);
        c6241hz.m2544a("push_sdk_channel");
        return upload(context, c6241hz);
    }

    public static boolean upload(String str, String str2, long j, String str3) {
        C6241hz c6241hz = new C6241hz();
        c6241hz.m2528d(str);
        c6241hz.m2532c(str2);
        c6241hz.m2547a(j);
        c6241hz.m2536b(str3);
        return C5910a.m4069a().m4063a(c6241hz);
    }
}
