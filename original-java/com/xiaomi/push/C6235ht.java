package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6410bw;
import com.xiaomi.push.service.C6411bx;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.ht */
/* loaded from: classes2.dex */
public class C6235ht {

    /* renamed from: a */
    private static volatile C6235ht f21912a;

    /* renamed from: a */
    private final Context f21913a;

    /* renamed from: a */
    private Map<String, InterfaceC6236hu> f21914a = new HashMap();

    private C6235ht(Context context) {
        this.f21913a = context;
    }

    /* renamed from: a */
    public static C6235ht m2571a(Context context) {
        if (context == null) {
            AbstractC5876b.m4138d("[TinyDataManager]:mContext is null, TinyDataManager.getInstance(Context) failed.");
            return null;
        }
        if (f21912a == null) {
            synchronized (C6235ht.class) {
                if (f21912a == null) {
                    f21912a = new C6235ht(context);
                }
            }
        }
        return f21912a;
    }

    /* renamed from: a */
    private boolean m2567a(String str, String str2, String str3, String str4, long j, String str5) {
        C6241hz c6241hz = new C6241hz();
        c6241hz.m2528d(str3);
        c6241hz.m2532c(str4);
        c6241hz.m2547a(j);
        c6241hz.m2536b(str5);
        c6241hz.m2541a(true);
        c6241hz.m2544a("push_sdk_channel");
        c6241hz.m2525e(str2);
        return m2569a(c6241hz, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public InterfaceC6236hu m2573a() {
        InterfaceC6236hu interfaceC6236hu = this.f21914a.get("UPLOADER_PUSH_CHANNEL");
        if (interfaceC6236hu != null) {
            return interfaceC6236hu;
        }
        InterfaceC6236hu interfaceC6236hu2 = this.f21914a.get("UPLOADER_HTTP");
        if (interfaceC6236hu2 != null) {
            return interfaceC6236hu2;
        }
        return null;
    }

    /* renamed from: a */
    Map<String, InterfaceC6236hu> m2572a() {
        return this.f21914a;
    }

    /* renamed from: a */
    public void m2570a(InterfaceC6236hu interfaceC6236hu, String str) {
        if (interfaceC6236hu == null) {
            AbstractC5876b.m4138d("[TinyDataManager]: please do not add null mUploader to TinyDataManager.");
        } else if (TextUtils.isEmpty(str)) {
            AbstractC5876b.m4138d("[TinyDataManager]: can not add a provider from unkown resource.");
        } else {
            m2572a().put(str, interfaceC6236hu);
        }
    }

    /* renamed from: a */
    public boolean m2569a(C6241hz c6241hz, String str) {
        if (TextUtils.isEmpty(str)) {
            AbstractC5876b.m4147a("pkgName is null or empty, upload ClientUploadDataItem failed.");
            return false;
        } else if (C6410bw.m1417a(c6241hz, false)) {
            return false;
        } else {
            if (TextUtils.isEmpty(c6241hz.m2530d())) {
                c6241hz.m2523f(C6410bw.m1419a());
            }
            c6241hz.m2521g(str);
            C6411bx.m1412a(this.f21913a, c6241hz);
            return true;
        }
    }

    /* renamed from: a */
    public boolean m2568a(String str, String str2, long j, String str3) {
        return m2567a(this.f21913a.getPackageName(), this.f21913a.getPackageName(), str, str2, j, str3);
    }
}
