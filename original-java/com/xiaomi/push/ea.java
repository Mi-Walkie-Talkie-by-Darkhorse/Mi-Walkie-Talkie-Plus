package com.xiaomi.push;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.autonavi.ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.l;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ea implements ef {
    private void a(Activity activity, Intent intent) {
        String stringExtra = intent.getStringExtra("awake_info");
        if (!TextUtils.isEmpty(stringExtra)) {
            String b2 = dx.b(stringExtra);
            if (!TextUtils.isEmpty(b2)) {
                dy.a(activity.getApplicationContext(), b2, ERROR_CODE.CONN_INDOOR_ERROR, "play with activity successfully");
                return;
            }
        }
        dy.a(activity.getApplicationContext(), "activity", 1008, "B get incorrect message");
    }

    private void b(Context context, eb ebVar) {
        String a2 = ebVar.m228a();
        String b2 = ebVar.b();
        String d = ebVar.d();
        int a3 = ebVar.a();
        if (context == null || TextUtils.isEmpty(a2) || TextUtils.isEmpty(b2) || TextUtils.isEmpty(d)) {
            if (TextUtils.isEmpty(d)) {
                dy.a(context, "activity", 1008, "argument error");
            } else {
                dy.a(context, d, 1008, "argument error");
            }
        } else if (!l.b(context, a2, b2)) {
            dy.a(context, d, ERROR_CODE.CONN_OK, "B is not ready");
        } else {
            dy.a(context, d, 1002, "B is ready");
            dy.a(context, d, ERROR_CODE.CANCEL_ERROR, "A is ready");
            Intent intent = new Intent(b2);
            intent.setPackage(a2);
            intent.putExtra("awake_info", dx.a(d));
            intent.addFlags(276824064);
            intent.setAction(b2);
            if (a3 == 1) {
                try {
                    if (!ec.m229a(context)) {
                        dy.a(context, d, 1008, "A not in foreground");
                        return;
                    }
                } catch (Exception e) {
                    b.a(e);
                    dy.a(context, d, 1008, "A meet a exception when help B's activity");
                    return;
                }
            }
            context.startActivity(intent);
            dy.a(context, d, ERROR_CODE.IOEXCEPTION_ERROR, "A is successful");
            dy.a(context, d, ERROR_CODE.CONN_INTERRUPT_ERROR, "The job is finished");
        }
    }

    @Override // com.xiaomi.push.ef
    public void a(Context context, Intent intent, String str) {
        if (context == null || !(context instanceof Activity) || intent == null) {
            dy.a(context, "activity", 1008, "B receive incorrect message");
        } else {
            a((Activity) context, intent);
        }
    }

    @Override // com.xiaomi.push.ef
    public void a(Context context, eb ebVar) {
        if (ebVar != null) {
            b(context, ebVar);
        } else {
            dy.a(context, "activity", 1008, "A receive incorrect message");
        }
    }
}
