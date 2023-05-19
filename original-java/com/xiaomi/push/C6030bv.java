package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: com.xiaomi.push.bv */
/* loaded from: classes2.dex */
public class C6030bv {

    /* renamed from: a */
    private static volatile C6030bv f21122a;

    /* renamed from: a */
    private Context f21123a;

    private C6030bv(Context context) {
        this.f21123a = context;
    }

    /* renamed from: a */
    public static C6030bv m3595a(Context context) {
        if (f21122a == null) {
            synchronized (C6030bv.class) {
                if (f21122a == null) {
                    f21122a = new C6030bv(context);
                }
            }
        }
        return f21122a;
    }

    /* renamed from: a */
    public synchronized long m3594a(String str, String str2, long j) {
        try {
        } catch (Throwable unused) {
            return j;
        }
        return this.f21123a.getSharedPreferences(str, 4).getLong(str2, j);
    }

    /* renamed from: a */
    public synchronized String m3592a(String str, String str2, String str3) {
        try {
        } catch (Throwable unused) {
            return str3;
        }
        return this.f21123a.getSharedPreferences(str, 4).getString(str2, str3);
    }

    /* renamed from: a */
    public synchronized void m3593a(String str, String str2, long j) {
        SharedPreferences.Editor edit = this.f21123a.getSharedPreferences(str, 4).edit();
        edit.putLong(str2, j);
        edit.commit();
    }

    /* renamed from: a */
    public synchronized void m3591a(String str, String str2, String str3) {
        SharedPreferences.Editor edit = this.f21123a.getSharedPreferences(str, 4).edit();
        edit.putString(str2, str3);
        edit.commit();
    }
}
