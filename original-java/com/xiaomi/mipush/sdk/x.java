package com.xiaomi.mipush.sdk;

import android.text.TextUtils;

/* loaded from: classes2.dex */
class x {

    /* renamed from: a  reason: collision with root package name */
    int f8727a = 0;

    /* renamed from: a  reason: collision with other field name */
    String f78a = "";

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return !TextUtils.isEmpty(xVar.f78a) && xVar.f78a.equals(this.f78a);
    }
}
