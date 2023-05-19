package com.xiaomi.push;

import android.content.Context;
import com.tencent.connect.common.Constants;

/* renamed from: com.xiaomi.push.dt */
/* loaded from: classes2.dex */
public class C6095dt extends AbstractC6094ds {
    public C6095dt(Context context, int i) {
        super(context, i);
    }

    @Override // com.xiaomi.push.AbstractC6094ds
    /* renamed from: a */
    public EnumC6239hx mo3346a() {
        return EnumC6239hx.Storage;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return Constants.VIA_REPORT_TYPE_SHARE_TO_TROOPBAR;
    }

    @Override // com.xiaomi.push.AbstractC6094ds
    /* renamed from: b */
    public String mo3345b() {
        return "ram:" + C6242i.m2515a() + com.xiaomi.mipush.sdk.Constants.ACCEPT_TIME_SEPARATOR_SP + "rom:" + C6242i.m2504b() + "|ramOriginal:" + C6242i.m2499c() + com.xiaomi.mipush.sdk.Constants.ACCEPT_TIME_SEPARATOR_SP + "romOriginal:" + C6242i.m2495d();
    }
}
