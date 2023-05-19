package com.xiaomi.mipush.sdk;

import android.text.TextUtils;

/* renamed from: com.xiaomi.mipush.sdk.x */
/* loaded from: classes2.dex */
class C5964x {

    /* renamed from: a */
    int f20980a = 0;

    /* renamed from: a */
    String f20981a = "";

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C5964x)) {
            return false;
        }
        C5964x c5964x = (C5964x) obj;
        return !TextUtils.isEmpty(c5964x.f20981a) && c5964x.f20981a.equals(this.f20981a);
    }
}
