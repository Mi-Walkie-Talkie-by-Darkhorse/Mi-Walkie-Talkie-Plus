package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.bl;
import com.xiaomi.push.h;
import com.xiaomi.push.ir;
import com.xiaomi.push.iw;
import com.xiaomi.push.jf;
import com.xiaomi.push.jl;

/* loaded from: classes2.dex */
public class m {
    public static iw a(ir irVar) {
        byte[] a2 = irVar.m436a();
        iw iwVar = new iw();
        try {
            jf.a(iwVar, a2);
            return iwVar;
        } catch (jl unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("ext_fcm_container_buffer");
            String stringExtra2 = intent.getStringExtra("mipush_app_package");
            if (!TextUtils.isEmpty(stringExtra) && !TextUtils.isEmpty(stringExtra2)) {
                try {
                    byte[] b2 = b(Base64.decode(stringExtra, 2), context.getSharedPreferences("mipush_apps_scrt", 0).getString(stringExtra2, null));
                    if (b2 != null) {
                        aj.m581a(context, w.a(b2), b2);
                    } else {
                        b.m1a("notify fcm notification error ：dencrypt failed");
                    }
                } catch (Throwable th) {
                    b.a("notify fcm notification error ", th);
                }
            }
        }
    }

    public static void a(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            context.getSharedPreferences("mipush_apps_scrt", 0).edit().putString(str, str2).apply();
        }
    }

    public static byte[] a(byte[] bArr, String str) {
        if (TextUtils.isEmpty(str)) {
            b.m1a("secret is empty, return null");
            return null;
        }
        try {
            return h.b(bl.m102a(str), bArr);
        } catch (Exception e) {
            b.a("encryption error. ", e);
            return null;
        }
    }

    public static byte[] b(byte[] bArr, String str) {
        if (TextUtils.isEmpty(str)) {
            b.m1a("secret is empty, return null");
            return null;
        }
        try {
            return h.a(bl.m102a(str), bArr);
        } catch (Exception e) {
            b.a("dencryption error. ", e);
            return null;
        }
    }
}
