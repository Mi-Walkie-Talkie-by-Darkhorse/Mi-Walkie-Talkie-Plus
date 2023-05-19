package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6045ci;
import com.xiaomi.push.service.C6372ax;
import com.xiaomi.push.service.C6410bw;

/* renamed from: com.xiaomi.push.bw */
/* loaded from: classes2.dex */
public class C6031bw {

    /* renamed from: a */
    private static volatile C6031bw f21124a;

    /* renamed from: a */
    private Context f21125a;

    /* renamed from: a */
    private InterfaceC6053cl f21127a;

    /* renamed from: a */
    private InterfaceC6054cm f21128a;

    /* renamed from: e */
    private String f21135e;

    /* renamed from: f */
    private String f21136f;

    /* renamed from: a */
    private final String f21129a = "push_stat_sp";

    /* renamed from: b */
    private final String f21131b = "upload_time";

    /* renamed from: c */
    private final String f21133c = "delete_time";

    /* renamed from: d */
    private final String f21134d = "check_time";

    /* renamed from: a */
    private C5978ak.AbstractRunnableC5979a f21126a = new C6032bx(this);

    /* renamed from: b */
    private C5978ak.AbstractRunnableC5979a f21130b = new C6033by(this);

    /* renamed from: c */
    private C5978ak.AbstractRunnableC5979a f21132c = new C6034bz(this);

    private C6031bw(Context context) {
        this.f21125a = context;
    }

    /* renamed from: a */
    public static C6031bw m3588a(Context context) {
        if (f21124a == null) {
            synchronized (C6031bw.class) {
                if (f21124a == null) {
                    f21124a = new C6031bw(context);
                }
            }
        }
        return f21124a;
    }

    /* renamed from: a */
    private boolean m3589a() {
        return C6372ax.m1530a(this.f21125a).m1531a(EnumC6243ia.StatDataSwitch.m2484a(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3578b(String str) {
        SharedPreferences.Editor edit = this.f21125a.getSharedPreferences("push_stat_sp", 0).edit();
        edit.putLong(str, System.currentTimeMillis());
        C6314s.m1816a(edit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public String m3577c() {
        return this.f21125a.getDatabasePath(C6037ca.f21146a).getAbsolutePath();
    }

    /* renamed from: a */
    public String m3590a() {
        return this.f21135e;
    }

    /* renamed from: a */
    public void m3583a(C6045ci.AbstractRunnableC6046a abstractRunnableC6046a) {
        C6045ci.m3519a(this.f21125a).m3518a(abstractRunnableC6046a);
    }

    /* renamed from: a */
    public void m3582a(C6241hz c6241hz) {
        if (m3589a() && C6410bw.m1416a(c6241hz.m2527e())) {
            m3583a(C6042cf.m3523a(this.f21125a, m3577c(), c6241hz));
        }
    }

    /* renamed from: a */
    public void m3581a(String str) {
        if (m3589a() && !TextUtils.isEmpty(str)) {
            m3582a(C6055cn.m3495a(this.f21125a, str));
        }
    }

    /* renamed from: a */
    public void m3580a(String str, String str2, Boolean bool) {
        if (this.f21127a != null) {
            if (bool.booleanValue()) {
                this.f21127a.m3499a(this.f21125a, str2, str);
            } else {
                this.f21127a.m3498b(this.f21125a, str2, str);
            }
        }
    }

    /* renamed from: b */
    public String m3579b() {
        return this.f21136f;
    }
}
