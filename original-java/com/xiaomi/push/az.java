package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import java.util.Map;

/* loaded from: classes2.dex */
public class az implements at {

    /* renamed from: a  reason: collision with root package name */
    private static volatile az f8760a;

    /* renamed from: a  reason: collision with other field name */
    private int f116a = ay.f8759a;

    /* renamed from: a  reason: collision with other field name */
    private at f117a;

    private az(Context context) {
        this.f117a = ay.a(context);
        b.m1a("create id manager is: " + this.f116a);
    }

    public static az a(Context context) {
        if (f8760a == null) {
            synchronized (az.class) {
                if (f8760a == null) {
                    f8760a = new az(context.getApplicationContext());
                }
            }
        }
        return f8760a;
    }

    private String a(String str) {
        return str == null ? "" : str;
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a */
    public String mo92a() {
        return a(this.f117a.mo92a());
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a  reason: collision with other method in class */
    public void mo92a() {
    }

    public void a(Map<String, String> map) {
        if (map != null) {
            String b2 = b();
            if (!TextUtils.isEmpty(b2)) {
                map.put("udid", b2);
            }
            String a2 = mo92a();
            if (!TextUtils.isEmpty(a2)) {
                map.put("oaid", a2);
            }
            String c2 = c();
            if (!TextUtils.isEmpty(c2)) {
                map.put("vaid", c2);
            }
            String d = d();
            if (!TextUtils.isEmpty(d)) {
                map.put("aaid", d);
            }
            map.put("oaid_type", String.valueOf(this.f116a));
        }
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a */
    public boolean mo92a() {
        return this.f117a.a();
    }

    public String b() {
        return null;
    }

    public String c() {
        return null;
    }

    public String d() {
        return null;
    }
}
