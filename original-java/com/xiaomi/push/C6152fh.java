package com.xiaomi.push;

import android.content.Context;
import android.content.pm.ServiceInfo;
import android.os.Build;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.XMJobService;

/* renamed from: com.xiaomi.push.fh */
/* loaded from: classes2.dex */
public final class C6152fh {

    /* renamed from: a */
    private static InterfaceC6153a f21533a;

    /* renamed from: a */
    private static final String f21534a = XMJobService.class.getCanonicalName();

    /* renamed from: a */
    private static int f21532a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.fh$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC6153a {
        /* renamed from: a */
        void mo2926a();

        /* renamed from: a */
        void mo2924a(long j);

        /* renamed from: a */
        void mo2923a(boolean z);

        /* renamed from: a */
        boolean mo2925a();
    }

    /* renamed from: a */
    public static synchronized void m2935a() {
        synchronized (C6152fh.class) {
            if (f21533a == null) {
                return;
            }
            AbstractC5876b.m4147a("[Alarm] stop alarm.");
            f21533a.mo2926a();
        }
    }

    /* renamed from: a */
    public static void m2933a(long j) {
        InterfaceC6153a interfaceC6153a = f21533a;
        if (interfaceC6153a == null) {
            return;
        }
        interfaceC6153a.mo2924a(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        if (r7.equals(com.xiaomi.push.C6469u.m1234a(r9, r6.name).getSuperclass().getCanonicalName()) != false) goto L19;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m2932a(Context context) {
        C6154fi c6154fi;
        Context applicationContext = context.getApplicationContext();
        if ("com.xiaomi.xmsf".equals(applicationContext.getPackageName())) {
            c6154fi = new C6154fi(applicationContext);
        } else {
            int i = 0;
            try {
                ServiceInfo[] serviceInfoArr = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 4).services;
                if (serviceInfoArr != null) {
                    int length = serviceInfoArr.length;
                    int i2 = 0;
                    while (i < length) {
                        try {
                            ServiceInfo serviceInfo = serviceInfoArr[i];
                            if ("android.permission.BIND_JOB_SERVICE".equals(serviceInfo.permission)) {
                                String str = f21534a;
                                if (!str.equals(serviceInfo.name)) {
                                }
                                i2 = 1;
                                if (i2 == 1) {
                                    break;
                                }
                            }
                            if (f21534a.equals(serviceInfo.name) && "android.permission.BIND_JOB_SERVICE".equals(serviceInfo.permission)) {
                                i = 1;
                                break;
                            }
                            i++;
                        } catch (Exception e) {
                            e = e;
                            i = i2;
                            AbstractC5876b.m4147a("check service err : " + e.getMessage());
                            if (i != 0) {
                            }
                            int i3 = Build.VERSION.SDK_INT;
                            c6154fi = new C6154fi(applicationContext);
                            f21533a = c6154fi;
                        }
                    }
                    i = i2;
                }
            } catch (Exception e2) {
                e = e2;
            }
            if (i != 0 && C6469u.m1235a(applicationContext)) {
                throw new RuntimeException("Should export service: " + f21534a + " with permission android.permission.BIND_JOB_SERVICE in AndroidManifest.xml file");
            }
            int i32 = Build.VERSION.SDK_INT;
            c6154fi = new C6154fi(applicationContext);
        }
        f21533a = c6154fi;
    }

    /* renamed from: a */
    public static synchronized void m2931a(Context context, int i) {
        synchronized (C6152fh.class) {
            int i2 = f21532a;
            if (!"com.xiaomi.xmsf".equals(context.getPackageName())) {
                if (i == 2) {
                    f21532a = 2;
                } else {
                    f21532a = 0;
                }
            }
            int i3 = f21532a;
            if (i2 != i3 && i3 == 2) {
                m2935a();
                f21533a = new C6156fk(context);
            }
        }
    }

    /* renamed from: a */
    public static synchronized void m2930a(boolean z) {
        synchronized (C6152fh.class) {
            if (f21533a == null) {
                AbstractC5876b.m4147a("timer is not initialized");
                return;
            }
            AbstractC5876b.m4147a("[Alarm] register alarm. (" + z + ")");
            f21533a.mo2923a(z);
        }
    }

    /* renamed from: a */
    public static synchronized boolean m2934a() {
        synchronized (C6152fh.class) {
            InterfaceC6153a interfaceC6153a = f21533a;
            if (interfaceC6153a == null) {
                return false;
            }
            return interfaceC6153a.mo2925a();
        }
    }
}
