package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.push.service.ax;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ep {

    /* renamed from: a  reason: collision with root package name */
    public static int f8907a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static eu a(Context context) {
        int a2 = ax.a(context).a(ia.HeartbeatPolicyInt.a(), 0);
        if (!l.m527a()) {
            a2 = 1;
        }
        f8907a = a2;
        return a2 != 0 ? a2 != 1 ? a2 != 2 ? new fa(context) : new fb(context) : new ez(context) : new fa(context);
    }
}
