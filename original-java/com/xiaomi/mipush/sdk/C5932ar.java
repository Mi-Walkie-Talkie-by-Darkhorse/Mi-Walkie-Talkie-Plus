package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.push.C6013bi;
import com.xiaomi.push.service.C6396bk;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.ar */
/* loaded from: classes2.dex */
public class C5932ar extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ C5928ao f20917a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5932ar(C5928ao c5928ao, Handler handler) {
        super(handler);
        this.f20917a = c5928ao;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        Context context;
        Integer num;
        Context context2;
        Context context3;
        C5928ao c5928ao = this.f20917a;
        context = c5928ao.f20903a;
        c5928ao.f20907a = Integer.valueOf(C6396bk.m1466a(context).m1469a());
        num = this.f20917a.f20907a;
        if (num.intValue() != 0) {
            context2 = this.f20917a.f20903a;
            context2.getContentResolver().unregisterContentObserver(this);
            context3 = this.f20917a.f20903a;
            if (C6013bi.m3662b(context3)) {
                this.f20917a.m3951c();
            }
        }
    }
}
