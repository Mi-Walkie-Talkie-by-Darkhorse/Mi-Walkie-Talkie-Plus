package com.xiaomi.push;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6446l;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.ej */
/* loaded from: classes2.dex */
public class C6124ej implements InterfaceC6120ef {
    /* renamed from: a */
    private void m3104a(Service service, Intent intent) {
        if ("com.xiaomi.mipush.sdk.WAKEUP".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("waker_pkgname");
            String stringExtra2 = intent.getStringExtra("awake_info");
            if (TextUtils.isEmpty(stringExtra)) {
                C6112dy.m3151a(service.getApplicationContext(), "service", ERROR_CODE.CONN_INDOOR_ERROR, "old version message");
            } else if (TextUtils.isEmpty(stringExtra2)) {
                C6112dy.m3151a(service.getApplicationContext(), stringExtra, ERROR_CODE.CONN_INDOOR_ERROR, "play with service ");
            } else {
                String m3153b = C6111dx.m3153b(stringExtra2);
                boolean isEmpty = TextUtils.isEmpty(m3153b);
                Context applicationContext = service.getApplicationContext();
                if (isEmpty) {
                    C6112dy.m3151a(applicationContext, "service", 1008, "B get a incorrect message");
                } else {
                    C6112dy.m3151a(applicationContext, m3153b, ERROR_CODE.CONN_INDOOR_ERROR, "old version message ");
                }
            }
        }
    }

    /* renamed from: a */
    private void m3101a(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str3)) {
                C6112dy.m3151a(context, "service", 1008, "argument error");
            } else {
                C6112dy.m3151a(context, str3, 1008, "argument error");
            }
        } else if (!C6446l.m1351a(context, str)) {
            C6112dy.m3151a(context, str3, 1003, "B is not ready");
        } else {
            C6112dy.m3151a(context, str3, 1002, "B is ready");
            C6112dy.m3151a(context, str3, ERROR_CODE.CANCEL_ERROR, "A is ready");
            try {
                Intent intent = new Intent();
                intent.setClassName(str, str2);
                intent.setAction("com.xiaomi.mipush.sdk.WAKEUP");
                intent.putExtra("waker_pkgname", context.getPackageName());
                intent.putExtra("awake_info", C6111dx.m3156a(str3));
                if (context.startService(intent) == null) {
                    C6112dy.m3151a(context, str3, 1008, "A is fail to help B's service");
                    return;
                }
                C6112dy.m3151a(context, str3, ERROR_CODE.IOEXCEPTION_ERROR, "A is successful");
                C6112dy.m3151a(context, str3, ERROR_CODE.CONN_INTERRUPT_ERROR, "The job is finished");
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
                C6112dy.m3151a(context, str3, 1008, "A meet a exception when help B's service");
            }
        }
    }

    @Override // com.xiaomi.push.InterfaceC6120ef
    /* renamed from: a */
    public void mo3103a(Context context, Intent intent, String str) {
        if (context == null || !(context instanceof Service)) {
            return;
        }
        m3104a((Service) context, intent);
    }

    @Override // com.xiaomi.push.InterfaceC6120ef
    /* renamed from: a */
    public void mo3102a(Context context, C6116eb c6116eb) {
        if (c6116eb != null) {
            m3101a(context, c6116eb.m3133a(), c6116eb.m3128c(), c6116eb.m3126d());
        }
    }
}
