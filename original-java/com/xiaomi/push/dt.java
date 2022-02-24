package com.xiaomi.push;

import android.content.Context;
import com.tencent.connect.common.Constants;

/* loaded from: classes2.dex */
public class dt extends ds {
    public dt(Context context, int i) {
        super(context, i);
    }

    @Override // com.xiaomi.push.ds, com.xiaomi.push.ak.a
    /* renamed from: a */
    public hx mo168a() {
        return hx.Storage;
    }

    @Override // com.xiaomi.push.ds, com.xiaomi.push.ak.a
    /* renamed from: a  reason: collision with other method in class */
    public String mo168a() {
        return Constants.VIA_REPORT_TYPE_SHARE_TO_TROOPBAR;
    }

    @Override // com.xiaomi.push.ds
    public String b() {
        return "ram:" + i.m366a() + com.xiaomi.mipush.sdk.Constants.ACCEPT_TIME_SEPARATOR_SP + "rom:" + i.m369b() + "|ramOriginal:" + i.m371c() + com.xiaomi.mipush.sdk.Constants.ACCEPT_TIME_SEPARATOR_SP + "romOriginal:" + i.d();
    }
}
