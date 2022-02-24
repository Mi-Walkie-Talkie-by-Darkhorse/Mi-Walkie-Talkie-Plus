package com.xiaomi.push;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.autonavi.ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.l;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class eh implements ef {
    private void a(Context context, String str) {
        try {
            if (!TextUtils.isEmpty(str) && context != null) {
                String[] split = str.split("/");
                if (split.length > 0 && !TextUtils.isEmpty(split[split.length - 1])) {
                    String str2 = split[split.length - 1];
                    if (TextUtils.isEmpty(str2)) {
                        dy.a(context, "provider", 1008, "B get a incorrect message");
                        return;
                    }
                    String decode = Uri.decode(str2);
                    if (TextUtils.isEmpty(decode)) {
                        dy.a(context, "provider", 1008, "B get a incorrect message");
                        return;
                    }
                    String b2 = dx.b(decode);
                    if (!TextUtils.isEmpty(b2)) {
                        dy.a(context, b2, ERROR_CODE.CONN_INDOOR_ERROR, "play with provider successfully");
                        return;
                    }
                }
            }
            dy.a(context, "provider", 1008, "B get a incorrect message");
        } catch (Exception e) {
            dy.a(context, "provider", 1008, "B meet a exception" + e.getMessage());
        }
    }

    private void b(Context context, eb ebVar) {
        String b2 = ebVar.b();
        String d = ebVar.d();
        int a2 = ebVar.a();
        if (context == null || TextUtils.isEmpty(b2) || TextUtils.isEmpty(d)) {
            if (TextUtils.isEmpty(d)) {
                dy.a(context, "provider", 1008, "argument error");
            } else {
                dy.a(context, d, 1008, "argument error");
            }
        } else if (!l.b(context, b2)) {
            dy.a(context, d, ERROR_CODE.CONN_OK, "B is not ready");
        } else {
            dy.a(context, d, 1002, "B is ready");
            dy.a(context, d, ERROR_CODE.CANCEL_ERROR, "A is ready");
            String a3 = dx.a(d);
            try {
                if (TextUtils.isEmpty(a3)) {
                    dy.a(context, d, 1008, "info is empty");
                } else if (a2 != 1 || ec.m229a(context)) {
                    String type = context.getContentResolver().getType(dx.a(b2, a3));
                    if (TextUtils.isEmpty(type) || !"success".equals(type)) {
                        dy.a(context, d, 1008, "A is fail to help B's provider");
                        return;
                    }
                    dy.a(context, d, ERROR_CODE.IOEXCEPTION_ERROR, "A is successful");
                    dy.a(context, d, ERROR_CODE.CONN_INTERRUPT_ERROR, "The job is finished");
                } else {
                    dy.a(context, d, 1008, "A not in foreground");
                }
            } catch (Exception e) {
                b.a(e);
                dy.a(context, d, 1008, "A meet a exception when help B's provider");
            }
        }
    }

    @Override // com.xiaomi.push.ef
    public void a(Context context, Intent intent, String str) {
        a(context, str);
    }

    @Override // com.xiaomi.push.ef
    public void a(Context context, eb ebVar) {
        if (ebVar != null) {
            b(context, ebVar);
        } else {
            dy.a(context, "provider", 1008, "A receive incorrect message");
        }
    }
}
