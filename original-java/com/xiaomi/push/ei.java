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
public class ei implements ef {
    private void a(Service service, Intent intent) {
        String stringExtra = intent.getStringExtra("awake_info");
        if (!TextUtils.isEmpty(stringExtra)) {
            String b2 = dx.b(stringExtra);
            if (!TextUtils.isEmpty(b2)) {
                dy.a(service.getApplicationContext(), b2, ERROR_CODE.CONN_INDOOR_ERROR, "play with service successfully");
                return;
            }
        }
        dy.a(service.getApplicationContext(), "service", 1008, "B get a incorrect message");
    }

    private void b(Context context, eb ebVar) {
        String a2 = ebVar.m228a();
        String b2 = ebVar.b();
        String d = ebVar.d();
        int a3 = ebVar.a();
        if (context == null || TextUtils.isEmpty(a2) || TextUtils.isEmpty(b2) || TextUtils.isEmpty(d)) {
            if (TextUtils.isEmpty(d)) {
                dy.a(context, "service", 1008, "argument error");
            } else {
                dy.a(context, d, 1008, "argument error");
            }
        } else if (!l.a(context, a2, b2)) {
            dy.a(context, d, ERROR_CODE.CONN_OK, "B is not ready");
        } else {
            dy.a(context, d, 1002, "B is ready");
            dy.a(context, d, ERROR_CODE.CANCEL_ERROR, "A is ready");
            try {
                Intent intent = new Intent();
                intent.setAction(b2);
                intent.setPackage(a2);
                intent.putExtra("awake_info", dx.a(d));
                if (a3 == 1 && !ec.m229a(context)) {
                    dy.a(context, d, 1008, "A not in foreground");
                } else if (context.startService(intent) != null) {
                    dy.a(context, d, ERROR_CODE.IOEXCEPTION_ERROR, "A is successful");
                    dy.a(context, d, ERROR_CODE.CONN_INTERRUPT_ERROR, "The job is finished");
                } else {
                    dy.a(context, d, 1008, "A is fail to help B's service");
                }
            } catch (Exception e) {
                b.a(e);
                dy.a(context, d, 1008, "A meet a exception when help B's service");
            }
        }
    }

    @Override // com.xiaomi.push.ef
    public void a(Context context, Intent intent, String str) {
        if (context == null || !(context instanceof Service)) {
            dy.a(context, "service", 1008, "A receive incorrect message");
        } else {
            a((Service) context, intent);
        }
    }

    @Override // com.xiaomi.push.ef
    public void a(Context context, eb ebVar) {
        if (ebVar != null) {
            b(context, ebVar);
        } else {
            dy.a(context, "service", 1008, "A receive incorrect message");
        }
    }
}
