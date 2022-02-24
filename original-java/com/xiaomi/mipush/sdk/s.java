package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.Cif;
import com.xiaomi.push.hv;
import com.xiaomi.push.ir;
import com.xiaomi.push.iu;
import com.xiaomi.push.l;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static volatile s f8723a;

    /* renamed from: a  reason: collision with other field name */
    private final Context f75a;

    private s(Context context) {
        this.f75a = context.getApplicationContext();
    }

    private static s a(Context context) {
        if (f8723a == null) {
            synchronized (s.class) {
                if (f8723a == null) {
                    f8723a = new s(context);
                }
            }
        }
        return f8723a;
    }

    public static void a(Context context, ir irVar) {
        a(context).a(irVar, 0, true);
    }

    public static void a(Context context, ir irVar, boolean z) {
        a(context).a(irVar, 1, z);
    }

    private void a(ir irVar, int i, boolean z) {
        if (!l.m528a(this.f75a) && l.m527a() && irVar != null && irVar.f647a == hv.SendMessage && irVar.m430a() != null && z) {
            b.m1a("click to start activity result:" + String.valueOf(i));
            iu iuVar = new iu(irVar.m430a().m396a(), false);
            iuVar.c(Cif.SDK_START_ACTIVITY.f527a);
            iuVar.b(irVar.m431a());
            iuVar.d(irVar.f654b);
            HashMap hashMap = new HashMap();
            iuVar.f666a = hashMap;
            hashMap.put("result", String.valueOf(i));
            ao.a(this.f75a).a(iuVar, hv.Notification, false, false, null, true, irVar.f654b, irVar.f650a, true, false);
        }
    }

    public static void b(Context context, ir irVar, boolean z) {
        a(context).a(irVar, 2, z);
    }

    public static void c(Context context, ir irVar, boolean z) {
        a(context).a(irVar, 3, z);
    }

    public static void d(Context context, ir irVar, boolean z) {
        a(context).a(irVar, 4, z);
    }

    public static void e(Context context, ir irVar, boolean z) {
        s sVar;
        int i;
        b a2 = b.m36a(context);
        if (TextUtils.isEmpty(a2.m44c()) || TextUtils.isEmpty(a2.d())) {
            sVar = a(context);
            i = 6;
        } else {
            boolean f = a2.m48f();
            sVar = a(context);
            i = f ? 7 : 5;
        }
        sVar.a(irVar, i, z);
    }
}
