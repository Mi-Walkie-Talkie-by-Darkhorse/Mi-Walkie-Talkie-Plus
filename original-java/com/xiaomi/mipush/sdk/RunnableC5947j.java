package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.j */
/* loaded from: classes2.dex */
public class RunnableC5947j implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f20960a;

    /* renamed from: a */
    final /* synthetic */ EnumC5942e f20961a;

    /* renamed from: a */
    final /* synthetic */ String f20962a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5947j(String str, Context context, EnumC5942e enumC5942e) {
        this.f20962a = str;
        this.f20960a = context;
        this.f20961a = enumC5942e;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        if (TextUtils.isEmpty(this.f20962a)) {
            return;
        }
        String[] split = this.f20962a.split(Constants.WAVE_SEPARATOR);
        int length = split.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str = "";
                break;
            }
            String str2 = split[i];
            if (!TextUtils.isEmpty(str2) && str2.startsWith("token:")) {
                str = str2.substring(str2.indexOf(Constants.COLON_SEPARATOR) + 1);
                break;
            }
            i++;
        }
        if (TextUtils.isEmpty(str)) {
            AbstractC5876b.m4147a("ASSEMBLE_PUSH : receive incorrect token");
            return;
        }
        AbstractC5876b.m4147a("ASSEMBLE_PUSH : receive correct token");
        C5946i.m3850d(this.f20960a, this.f20961a, str);
        C5946i.m3873a(this.f20960a);
    }
}
