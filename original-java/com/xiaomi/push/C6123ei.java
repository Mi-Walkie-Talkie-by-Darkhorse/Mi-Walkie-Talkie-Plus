package com.xiaomi.push;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6446l;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.ei */
/* loaded from: classes2.dex */
public class C6123ei implements InterfaceC6120ef {
    /* renamed from: a */
    private void m3106a(Service service, Intent intent) {
        String stringExtra = intent.getStringExtra("awake_info");
        if (!TextUtils.isEmpty(stringExtra)) {
            String m3153b = C6111dx.m3153b(stringExtra);
            if (!TextUtils.isEmpty(m3153b)) {
                C6112dy.m3151a(service.getApplicationContext(), m3153b, ERROR_CODE.CONN_INDOOR_ERROR, "play with service successfully");
                return;
            }
        }
        C6112dy.m3151a(service.getApplicationContext(), "service", 1008, "B get a incorrect message");
    }

    /* renamed from: b */
    private void m3105b(Context context, C6116eb c6116eb) {
        String m3133a = c6116eb.m3133a();
        String m3130b = c6116eb.m3130b();
        String m3126d = c6116eb.m3126d();
        int m3134a = c6116eb.m3134a();
        if (context == null || TextUtils.isEmpty(m3133a) || TextUtils.isEmpty(m3130b) || TextUtils.isEmpty(m3126d)) {
            if (TextUtils.isEmpty(m3126d)) {
                C6112dy.m3151a(context, "service", 1008, "argument error");
            } else {
                C6112dy.m3151a(context, m3126d, 1008, "argument error");
            }
        } else if (!C6446l.m1350a(context, m3133a, m3130b)) {
            C6112dy.m3151a(context, m3126d, 1003, "B is not ready");
        } else {
            C6112dy.m3151a(context, m3126d, 1002, "B is ready");
            C6112dy.m3151a(context, m3126d, ERROR_CODE.CANCEL_ERROR, "A is ready");
            try {
                Intent intent = new Intent();
                intent.setAction(m3130b);
                intent.setPackage(m3133a);
                intent.putExtra("awake_info", C6111dx.m3156a(m3126d));
                if (m3134a == 1 && !C6117ec.m3119a(context)) {
                    C6112dy.m3151a(context, m3126d, 1008, "A not in foreground");
                } else if (context.startService(intent) == null) {
                    C6112dy.m3151a(context, m3126d, 1008, "A is fail to help B's service");
                } else {
                    C6112dy.m3151a(context, m3126d, ERROR_CODE.IOEXCEPTION_ERROR, "A is successful");
                    C6112dy.m3151a(context, m3126d, ERROR_CODE.CONN_INTERRUPT_ERROR, "The job is finished");
                }
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
                C6112dy.m3151a(context, m3126d, 1008, "A meet a exception when help B's service");
            }
        }
    }

    @Override // com.xiaomi.push.InterfaceC6120ef
    /* renamed from: a */
    public void mo3103a(Context context, Intent intent, String str) {
        if (context == null || !(context instanceof Service)) {
            C6112dy.m3151a(context, "service", 1008, "A receive incorrect message");
        } else {
            m3106a((Service) context, intent);
        }
    }

    @Override // com.xiaomi.push.InterfaceC6120ef
    /* renamed from: a */
    public void mo3102a(Context context, C6116eb c6116eb) {
        if (c6116eb != null) {
            m3105b(context, c6116eb);
        } else {
            C6112dy.m3151a(context, "service", 1008, "A receive incorrect message");
        }
    }
}
