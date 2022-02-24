package com.xiaomi.push.service;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import com.xiaomi.push.ad;

/* loaded from: classes2.dex */
public class bk {

    /* renamed from: a  reason: collision with root package name */
    private static bk f9286a;

    /* renamed from: a  reason: collision with other field name */
    private int f957a = 0;

    /* renamed from: a  reason: collision with other field name */
    private Context f958a;

    private bk(Context context) {
        this.f958a = context.getApplicationContext();
    }

    public static bk a(Context context) {
        if (f9286a == null) {
            f9286a = new bk(context);
        }
        return f9286a;
    }

    @SuppressLint({"NewApi"})
    public int a() {
        int i = this.f957a;
        if (i != 0) {
            return i;
        }
        try {
            this.f957a = Settings.Global.getInt(this.f958a.getContentResolver(), "device_provisioned", 0);
        } catch (Exception unused) {
        }
        return this.f957a;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a  reason: collision with other method in class */
    public Uri m620a() {
        return Settings.Global.getUriFor("device_provisioned");
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m621a() {
        return ad.f82a.contains("xmsf") || ad.f82a.contains("xiaomi") || ad.f82a.contains("miui");
    }
}
