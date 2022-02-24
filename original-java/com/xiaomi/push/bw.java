package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.push.ak;
import com.xiaomi.push.ci;
import com.xiaomi.push.service.ax;

/* loaded from: classes2.dex */
public class bw {

    /* renamed from: a  reason: collision with root package name */
    private static volatile bw f8790a;

    /* renamed from: a  reason: collision with other field name */
    private Context f139a;

    /* renamed from: a  reason: collision with other field name */
    private cl f141a;

    /* renamed from: a  reason: collision with other field name */
    private cm f142a;
    private String e;
    private String f;

    /* renamed from: a  reason: collision with other field name */
    private final String f143a = "push_stat_sp";

    /* renamed from: b  reason: collision with other field name */
    private final String f144b = "upload_time";

    /* renamed from: c  reason: collision with other field name */
    private final String f145c = "delete_time";
    private final String d = "check_time";

    /* renamed from: a  reason: collision with other field name */
    private ak.a f140a = new bx(this);

    /* renamed from: b  reason: collision with root package name */
    private ak.a f8791b = new by(this);

    /* renamed from: c  reason: collision with root package name */
    private ak.a f8792c = new bz(this);

    private bw(Context context) {
        this.f139a = context;
    }

    public static bw a(Context context) {
        if (f8790a == null) {
            synchronized (bw.class) {
                if (f8790a == null) {
                    f8790a = new bw(context);
                }
            }
        }
        return f8790a;
    }

    private boolean a() {
        return ax.a(this.f139a).a(ia.StatDataSwitch.a(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        SharedPreferences.Editor edit = this.f139a.getSharedPreferences("push_stat_sp", 0).edit();
        edit.putLong(str, System.currentTimeMillis());
        s.a(edit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c() {
        return this.f139a.getDatabasePath(ca.f149a).getAbsolutePath();
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m113a() {
        return this.e;
    }

    public void a(ci.a aVar) {
        ci.a(this.f139a).a(aVar);
    }

    public void a(hz hzVar) {
        if (a() && com.xiaomi.push.service.bw.a(hzVar.e())) {
            a(cf.a(this.f139a, c(), hzVar));
        }
    }

    public void a(String str) {
        if (a() && !TextUtils.isEmpty(str)) {
            a(cn.a(this.f139a, str));
        }
    }

    public void a(String str, String str2, Boolean bool) {
        if (this.f141a == null) {
            return;
        }
        if (bool.booleanValue()) {
            this.f141a.a(this.f139a, str2, str);
        } else {
            this.f141a.b(this.f139a, str2, str);
        }
    }

    public String b() {
        return this.f;
    }
}
