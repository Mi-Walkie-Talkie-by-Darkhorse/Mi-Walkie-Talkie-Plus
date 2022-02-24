package com.xiaomi.push;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.autonavi.ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.l;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ej implements ef {
    private void a(Service service, Intent intent) {
        if ("com.xiaomi.mipush.sdk.WAKEUP".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("waker_pkgname");
            String stringExtra2 = intent.getStringExtra("awake_info");
            if (TextUtils.isEmpty(stringExtra)) {
                dy.a(service.getApplicationContext(), "service", ERROR_CODE.CONN_INDOOR_ERROR, "old version message");
            } else if (!TextUtils.isEmpty(stringExtra2)) {
                String b2 = dx.b(stringExtra2);
                boolean isEmpty = TextUtils.isEmpty(b2);
                Context applicationContext = service.getApplicationContext();
                if (!isEmpty) {
                    dy.a(applicationContext, b2, ERROR_CODE.CONN_INDOOR_ERROR, "old version message ");
                } else {
                    dy.a(applicationContext, "service", 1008, "B get a incorrect message");
                }
            } else {
                dy.a(service.getApplicationContext(), stringExtra, ERROR_CODE.CONN_INDOOR_ERROR, "play with service ");
            }
        }
    }

    private void a(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str3)) {
                dy.a(context, "service", 1008, "argument error");
            } else {
                dy.a(context, str3, 1008, "argument error");
            }
        } else if (!l.a(context, str)) {
            dy.a(context, str3, ERROR_CODE.CONN_OK, "B is not ready");
        } else {
            dy.a(context, str3, 1002, "B is ready");
            dy.a(context, str3, ERROR_CODE.CANCEL_ERROR, "A is ready");
            try {
                Intent intent = new Intent();
                intent.setClassName(str, str2);
                intent.setAction("com.xiaomi.mipush.sdk.WAKEUP");
                intent.putExtra("waker_pkgname", context.getPackageName());
                intent.putExtra("awake_info", dx.a(str3));
                if (context.startService(intent) != null) {
                    dy.a(context, str3, ERROR_CODE.IOEXCEPTION_ERROR, "A is successful");
                    dy.a(context, str3, ERROR_CODE.CONN_INTERRUPT_ERROR, "The job is finished");
                    return;
                }
                dy.a(context, str3, 1008, "A is fail to help B's service");
            } catch (Exception e) {
                b.a(e);
                dy.a(context, str3, 1008, "A meet a exception when help B's service");
            }
        }
    }

    @Override // com.xiaomi.push.ef
    public void a(Context context, Intent intent, String str) {
        if (context != null && (context instanceof Service)) {
            a((Service) context, intent);
        }
    }

    @Override // com.xiaomi.push.ef
    public void a(Context context, eb ebVar) {
        if (ebVar != null) {
            a(context, ebVar.m228a(), ebVar.c(), ebVar.d());
        }
    }
}
