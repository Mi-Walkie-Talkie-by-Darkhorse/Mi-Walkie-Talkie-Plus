package com.xiaomi.push;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.maploader.ERROR_CODE;
import com.umeng.analytics.pro.UContent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6446l;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.eh */
/* loaded from: classes2.dex */
public class C6122eh implements InterfaceC6120ef {
    /* renamed from: a */
    private void m3108a(Context context, String str) {
        try {
            if (!TextUtils.isEmpty(str) && context != null) {
                String[] split = str.split("/");
                if (split.length > 0 && !TextUtils.isEmpty(split[split.length - 1])) {
                    String str2 = split[split.length - 1];
                    if (TextUtils.isEmpty(str2)) {
                        C6112dy.m3151a(context, UContent.f19648M, 1008, "B get a incorrect message");
                        return;
                    }
                    String decode = Uri.decode(str2);
                    if (TextUtils.isEmpty(decode)) {
                        C6112dy.m3151a(context, UContent.f19648M, 1008, "B get a incorrect message");
                        return;
                    }
                    String m3153b = C6111dx.m3153b(decode);
                    if (!TextUtils.isEmpty(m3153b)) {
                        C6112dy.m3151a(context, m3153b, ERROR_CODE.CONN_INDOOR_ERROR, "play with provider successfully");
                        return;
                    }
                }
            }
            C6112dy.m3151a(context, UContent.f19648M, 1008, "B get a incorrect message");
        } catch (Exception e) {
            C6112dy.m3151a(context, UContent.f19648M, 1008, "B meet a exception" + e.getMessage());
        }
    }

    /* renamed from: b */
    private void m3107b(Context context, C6116eb c6116eb) {
        String m3130b = c6116eb.m3130b();
        String m3126d = c6116eb.m3126d();
        int m3134a = c6116eb.m3134a();
        if (context == null || TextUtils.isEmpty(m3130b) || TextUtils.isEmpty(m3126d)) {
            if (TextUtils.isEmpty(m3126d)) {
                C6112dy.m3151a(context, UContent.f19648M, 1008, "argument error");
            } else {
                C6112dy.m3151a(context, m3126d, 1008, "argument error");
            }
        } else if (!C6446l.m1349b(context, m3130b)) {
            C6112dy.m3151a(context, m3126d, 1003, "B is not ready");
        } else {
            C6112dy.m3151a(context, m3126d, 1002, "B is ready");
            C6112dy.m3151a(context, m3126d, ERROR_CODE.CANCEL_ERROR, "A is ready");
            String m3156a = C6111dx.m3156a(m3126d);
            try {
                if (TextUtils.isEmpty(m3156a)) {
                    C6112dy.m3151a(context, m3126d, 1008, "info is empty");
                } else if (m3134a == 1 && !C6117ec.m3119a(context)) {
                    C6112dy.m3151a(context, m3126d, 1008, "A not in foreground");
                } else {
                    String type = context.getContentResolver().getType(C6111dx.m3155a(m3130b, m3156a));
                    if (TextUtils.isEmpty(type) || !"success".equals(type)) {
                        C6112dy.m3151a(context, m3126d, 1008, "A is fail to help B's provider");
                        return;
                    }
                    C6112dy.m3151a(context, m3126d, ERROR_CODE.IOEXCEPTION_ERROR, "A is successful");
                    C6112dy.m3151a(context, m3126d, ERROR_CODE.CONN_INTERRUPT_ERROR, "The job is finished");
                }
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
                C6112dy.m3151a(context, m3126d, 1008, "A meet a exception when help B's provider");
            }
        }
    }

    @Override // com.xiaomi.push.InterfaceC6120ef
    /* renamed from: a */
    public void mo3103a(Context context, Intent intent, String str) {
        m3108a(context, str);
    }

    @Override // com.xiaomi.push.InterfaceC6120ef
    /* renamed from: a */
    public void mo3102a(Context context, C6116eb c6116eb) {
        if (c6116eb != null) {
            m3107b(context, c6116eb);
        } else {
            C6112dy.m3151a(context, UContent.f19648M, 1008, "A receive incorrect message");
        }
    }
}
