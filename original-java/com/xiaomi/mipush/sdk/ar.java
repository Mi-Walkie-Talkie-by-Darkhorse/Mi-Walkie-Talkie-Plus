package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.push.bi;
import com.xiaomi.push.service.bk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ar extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ao f8695a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ar(ao aoVar, Handler handler) {
        super(handler);
        this.f8695a = aoVar;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        Context context;
        Integer num;
        Context context2;
        Context context3;
        ao aoVar = this.f8695a;
        context = aoVar.f46a;
        aoVar.f50a = Integer.valueOf(bk.a(context).a());
        num = this.f8695a.f50a;
        if (num.intValue() != 0) {
            context2 = this.f8695a.f46a;
            context2.getContentResolver().unregisterContentObserver(this);
            context3 = this.f8695a.f46a;
            if (bi.b(context3)) {
                this.f8695a.m33c();
            }
        }
    }
}
