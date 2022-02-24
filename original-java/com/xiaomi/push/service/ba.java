package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.push.bo;

/* loaded from: classes2.dex */
public class ba {

    /* renamed from: a  reason: collision with root package name */
    private static long f9264a = 0;

    /* renamed from: a  reason: collision with other field name */
    private static String f936a = "";

    public static String a() {
        if (TextUtils.isEmpty(f936a)) {
            f936a = bo.a(4);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(f936a);
        long j = f9264a;
        f9264a = 1 + j;
        sb.append(j);
        return sb.toString();
    }
}
