package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.l;
import com.xiaomi.push.bj;

/* loaded from: classes2.dex */
public class ak {
    public static AbstractPushManager a(Context context, e eVar) {
        return b(context, eVar);
    }

    private static AbstractPushManager b(Context context, e eVar) {
        l.a a2 = l.m61a(eVar);
        if (a2 == null || TextUtils.isEmpty(a2.f8716a) || TextUtils.isEmpty(a2.f8717b)) {
            return null;
        }
        return (AbstractPushManager) bj.a(a2.f8716a, a2.f8717b, context);
    }
}
