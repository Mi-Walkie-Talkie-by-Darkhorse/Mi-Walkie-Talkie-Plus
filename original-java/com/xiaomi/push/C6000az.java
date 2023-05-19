package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.Map;

/* renamed from: com.xiaomi.push.az */
/* loaded from: classes2.dex */
public class C6000az implements InterfaceC5993at {

    /* renamed from: a */
    private static volatile C6000az f21061a;

    /* renamed from: a */
    private int f21062a = C5999ay.f21060a;

    /* renamed from: a */
    private InterfaceC5993at f21063a;

    private C6000az(Context context) {
        this.f21063a = C5999ay.m3731a(context);
        AbstractC5876b.m4147a("create id manager is: " + this.f21062a);
    }

    /* renamed from: a */
    public static C6000az m3729a(Context context) {
        if (f21061a == null) {
            synchronized (C6000az.class) {
                if (f21061a == null) {
                    f21061a = new C6000az(context.getApplicationContext());
                }
            }
        }
        return f21061a;
    }

    /* renamed from: a */
    private String m3728a(String str) {
        return str == null ? "" : str;
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public String mo3684a() {
        return m3728a(this.f21063a.mo3684a());
    }

    /* renamed from: a */
    public void m3730a() {
    }

    /* renamed from: a */
    public void m3727a(Map<String, String> map) {
        if (map == null) {
            return;
        }
        String m3726b = m3726b();
        if (!TextUtils.isEmpty(m3726b)) {
            map.put("udid", m3726b);
        }
        String mo3684a = mo3684a();
        if (!TextUtils.isEmpty(mo3684a)) {
            map.put("oaid", mo3684a);
        }
        String m3725c = m3725c();
        if (!TextUtils.isEmpty(m3725c)) {
            map.put("vaid", m3725c);
        }
        String m3724d = m3724d();
        if (!TextUtils.isEmpty(m3724d)) {
            map.put("aaid", m3724d);
        }
        map.put("oaid_type", String.valueOf(this.f21062a));
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public boolean mo3683a() {
        return this.f21063a.mo3683a();
    }

    /* renamed from: b */
    public String m3726b() {
        return null;
    }

    /* renamed from: c */
    public String m3725c() {
        return null;
    }

    /* renamed from: d */
    public String m3724d() {
        return null;
    }
}
