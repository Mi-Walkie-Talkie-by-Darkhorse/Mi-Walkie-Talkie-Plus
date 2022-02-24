package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes2.dex */
public class bv {

    /* renamed from: a  reason: collision with root package name */
    private static volatile bv f8789a;

    /* renamed from: a  reason: collision with other field name */
    private Context f138a;

    private bv(Context context) {
        this.f138a = context;
    }

    public static bv a(Context context) {
        if (f8789a == null) {
            synchronized (bv.class) {
                if (f8789a == null) {
                    f8789a = new bv(context);
                }
            }
        }
        return f8789a;
    }

    public synchronized long a(String str, String str2, long j) {
        try {
        } catch (Throwable unused) {
            return j;
        }
        return this.f138a.getSharedPreferences(str, 4).getLong(str2, j);
    }

    public synchronized String a(String str, String str2, String str3) {
        try {
        } catch (Throwable unused) {
            return str3;
        }
        return this.f138a.getSharedPreferences(str, 4).getString(str2, str3);
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized void m111a(String str, String str2, long j) {
        SharedPreferences.Editor edit = this.f138a.getSharedPreferences(str, 4).edit();
        edit.putLong(str2, j);
        edit.commit();
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized void m112a(String str, String str2, String str3) {
        SharedPreferences.Editor edit = this.f138a.getSharedPreferences(str, 4).edit();
        edit.putString(str2, str3);
        edit.commit();
    }
}
