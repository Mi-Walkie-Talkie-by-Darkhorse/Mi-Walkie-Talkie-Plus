package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6020bl;
import com.xiaomi.push.C6210h;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6265iw;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6285jl;

/* renamed from: com.xiaomi.push.service.m */
/* loaded from: classes2.dex */
public class C6447m {
    /* renamed from: a */
    public static C6265iw m1345a(C6260ir c6260ir) {
        byte[] m2229a = c6260ir.m2229a();
        C6265iw c6265iw = new C6265iw();
        try {
            C6278jf.m1932a(c6265iw, m2229a);
            return c6265iw;
        } catch (C6285jl unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1347a(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("ext_fcm_container_buffer");
        String stringExtra2 = intent.getStringExtra("mipush_app_package");
        if (TextUtils.isEmpty(stringExtra) || TextUtils.isEmpty(stringExtra2)) {
            return;
        }
        try {
            byte[] m1343b = m1343b(Base64.decode(stringExtra, 2), context.getSharedPreferences("mipush_apps_scrt", 0).getString(stringExtra2, null));
            if (m1343b != null) {
                C6350aj.m1678a(context, C6464w.m1252a(m1343b), m1343b);
            } else {
                AbstractC5876b.m4147a("notify fcm notification error ：dencrypt failed");
            }
        } catch (Throwable th) {
            AbstractC5876b.m4144a("notify fcm notification error ", th);
        }
    }

    /* renamed from: a */
    public static void m1346a(Context context, String str, String str2) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        context.getSharedPreferences("mipush_apps_scrt", 0).edit().putString(str, str2).apply();
    }

    /* renamed from: a */
    public static byte[] m1344a(byte[] bArr, String str) {
        if (TextUtils.isEmpty(str)) {
            AbstractC5876b.m4147a("secret is empty, return null");
            return null;
        }
        try {
            return C6210h.m2665b(C6020bl.m3632a(str), bArr);
        } catch (Exception e) {
            AbstractC5876b.m4144a("encryption error. ", e);
            return null;
        }
    }

    /* renamed from: b */
    public static byte[] m1343b(byte[] bArr, String str) {
        if (TextUtils.isEmpty(str)) {
            AbstractC5876b.m4147a("secret is empty, return null");
            return null;
        }
        try {
            return C6210h.m2666a(C6020bl.m3632a(str), bArr);
        } catch (Exception e) {
            AbstractC5876b.m4144a("dencryption error. ", e);
            return null;
        }
    }
}
