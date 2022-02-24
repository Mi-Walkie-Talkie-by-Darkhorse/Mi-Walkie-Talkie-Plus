package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.clientreport.manager.a;
import com.xiaomi.push.ak;

/* loaded from: classes2.dex */
public class bp extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f8786a;

    public bp(Context context) {
        this.f8786a = context;
    }

    private boolean a() {
        return a.a(this.f8786a).m3a().isEventUploadSwitchOpen();
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a  reason: collision with other method in class */
    public String mo168a() {
        return "100886";
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (a()) {
                b.c(this.f8786a.getPackageName() + " begin upload event");
                a.a(this.f8786a).m5b();
            }
        } catch (Exception e) {
            b.a(e);
        }
    }
}
