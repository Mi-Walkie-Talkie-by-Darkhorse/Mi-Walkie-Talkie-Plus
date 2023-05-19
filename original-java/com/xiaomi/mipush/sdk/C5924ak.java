package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.C5949l;
import com.xiaomi.push.C6016bj;

/* renamed from: com.xiaomi.mipush.sdk.ak */
/* loaded from: classes2.dex */
public class C5924ak {
    /* renamed from: a */
    public static AbstractPushManager m4013a(Context context, EnumC5942e enumC5942e) {
        return m4012b(context, enumC5942e);
    }

    /* renamed from: b */
    private static AbstractPushManager m4012b(Context context, EnumC5942e enumC5942e) {
        C5949l.C5950a m3848a = C5949l.m3848a(enumC5942e);
        if (m3848a == null || TextUtils.isEmpty(m3848a.f20965a) || TextUtils.isEmpty(m3848a.f20966b)) {
            return null;
        }
        return (AbstractPushManager) C6016bj.m3646a(m3848a.f20965a, m3848a.f20966b, context);
    }
}
