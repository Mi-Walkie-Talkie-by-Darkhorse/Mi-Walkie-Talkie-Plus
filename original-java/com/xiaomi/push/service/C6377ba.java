package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.push.C6023bo;

/* renamed from: com.xiaomi.push.service.ba */
/* loaded from: classes2.dex */
public class C6377ba {

    /* renamed from: a */
    private static long f23016a = 0;

    /* renamed from: a */
    private static String f23017a = "";

    /* renamed from: a */
    public static String m1518a() {
        if (TextUtils.isEmpty(f23017a)) {
            f23017a = C6023bo.m3621a(4);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(f23017a);
        long j = f23016a;
        f23016a = 1 + j;
        sb.append(j);
        return sb.toString();
    }
}
