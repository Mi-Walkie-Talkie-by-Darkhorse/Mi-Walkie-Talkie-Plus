package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8713a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ e f72a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f73a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(String str, Context context, e eVar) {
        this.f73a = str;
        this.f8713a = context;
        this.f72a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        if (!TextUtils.isEmpty(this.f73a)) {
            String[] split = this.f73a.split(Constants.WAVE_SEPARATOR);
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
            if (!TextUtils.isEmpty(str)) {
                b.m1a("ASSEMBLE_PUSH : receive correct token");
                i.d(this.f8713a, this.f72a, str);
                i.m55a(this.f8713a);
                return;
            }
            b.m1a("ASSEMBLE_PUSH : receive incorrect token");
        }
    }
}
