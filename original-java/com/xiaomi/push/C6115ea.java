package com.xiaomi.push;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6446l;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.ea */
/* loaded from: classes2.dex */
public class C6115ea implements InterfaceC6120ef {
    /* renamed from: a */
    private void m3136a(Activity activity, Intent intent) {
        String stringExtra = intent.getStringExtra("awake_info");
        if (!TextUtils.isEmpty(stringExtra)) {
            String m3153b = C6111dx.m3153b(stringExtra);
            if (!TextUtils.isEmpty(m3153b)) {
                C6112dy.m3151a(activity.getApplicationContext(), m3153b, ERROR_CODE.CONN_INDOOR_ERROR, "play with activity successfully");
                return;
            }
        }
        C6112dy.m3151a(activity.getApplicationContext(), "activity", 1008, "B get incorrect message");
    }

    /* renamed from: b */
    private void m3135b(Context context, C6116eb c6116eb) {
        String m3133a = c6116eb.m3133a();
        String m3130b = c6116eb.m3130b();
        String m3126d = c6116eb.m3126d();
        int m3134a = c6116eb.m3134a();
        if (context == null || TextUtils.isEmpty(m3133a) || TextUtils.isEmpty(m3130b) || TextUtils.isEmpty(m3126d)) {
            if (TextUtils.isEmpty(m3126d)) {
                C6112dy.m3151a(context, "activity", 1008, "argument error");
            } else {
                C6112dy.m3151a(context, m3126d, 1008, "argument error");
            }
        } else if (!C6446l.m1348b(context, m3133a, m3130b)) {
            C6112dy.m3151a(context, m3126d, 1003, "B is not ready");
        } else {
            C6112dy.m3151a(context, m3126d, 1002, "B is ready");
            C6112dy.m3151a(context, m3126d, ERROR_CODE.CANCEL_ERROR, "A is ready");
            Intent intent = new Intent(m3130b);
            intent.setPackage(m3133a);
            intent.putExtra("awake_info", C6111dx.m3156a(m3126d));
            intent.addFlags(276824064);
            intent.setAction(m3130b);
            if (m3134a == 1) {
                try {
                    if (!C6117ec.m3119a(context)) {
                        C6112dy.m3151a(context, m3126d, 1008, "A not in foreground");
                        return;
                    }
                } catch (Exception e) {
                    AbstractC5876b.m4143a(e);
                    C6112dy.m3151a(context, m3126d, 1008, "A meet a exception when help B's activity");
                    return;
                }
            }
            context.startActivity(intent);
            C6112dy.m3151a(context, m3126d, ERROR_CODE.IOEXCEPTION_ERROR, "A is successful");
            C6112dy.m3151a(context, m3126d, ERROR_CODE.CONN_INTERRUPT_ERROR, "The job is finished");
        }
    }

    @Override // com.xiaomi.push.InterfaceC6120ef
    /* renamed from: a */
    public void mo3103a(Context context, Intent intent, String str) {
        if (context == null || !(context instanceof Activity) || intent == null) {
            C6112dy.m3151a(context, "activity", 1008, "B receive incorrect message");
        } else {
            m3136a((Activity) context, intent);
        }
    }

    @Override // com.xiaomi.push.InterfaceC6120ef
    /* renamed from: a */
    public void mo3102a(Context context, C6116eb c6116eb) {
        if (c6116eb != null) {
            m3135b(context, c6116eb);
        } else {
            C6112dy.m3151a(context, "activity", 1008, "A receive incorrect message");
        }
    }
}
