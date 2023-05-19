package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.manager.C5880a;
import com.xiaomi.push.C5978ak;

/* renamed from: com.xiaomi.push.bp */
/* loaded from: classes2.dex */
public class C6024bp extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    private Context f21118a;

    public C6024bp(Context context) {
        this.f21118a = context;
    }

    /* renamed from: a */
    private boolean m3608a() {
        return C5880a.m4132a(this.f21118a).m4135a().isEventUploadSwitchOpen();
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "100886";
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (m3608a()) {
                AbstractC5876b.m4139c(this.f21118a.getPackageName() + " begin upload event");
                C5880a.m4132a(this.f21118a).m4119b();
            }
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
        }
    }
}
