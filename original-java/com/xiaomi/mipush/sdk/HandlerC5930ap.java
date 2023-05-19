package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.ap */
/* loaded from: classes2.dex */
public class HandlerC5930ap extends Handler {

    /* renamed from: a */
    final /* synthetic */ C5928ao f20915a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC5930ap(C5928ao c5928ao, Looper looper) {
        super(looper);
        this.f20915a = c5928ao;
    }

    @Override // android.os.Handler
    public void dispatchMessage(Message message) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        C5928ao c5928ao;
        Context context5;
        HashMap<String, String> m3870a;
        Context context6;
        Context context7;
        Context context8;
        Context context9;
        Context context10;
        Context context11;
        Context context12;
        C5928ao c5928ao2;
        Context context13;
        Context context14;
        if (message.what != 19) {
            return;
        }
        String str = (String) message.obj;
        int i = message.arg1;
        synchronized (C5919af.class) {
            context = this.f20915a.f20903a;
            if (C5919af.m4028a(context).m4023a(str)) {
                context2 = this.f20915a.f20903a;
                if (C5919af.m4028a(context2).m4025a(str) < 10) {
                    EnumC5935au enumC5935au = EnumC5935au.DISABLE_PUSH;
                    if (enumC5935au.ordinal() == i) {
                        context14 = this.f20915a.f20903a;
                        if ("syncing".equals(C5919af.m4028a(context14).m4027a(enumC5935au))) {
                            c5928ao2 = this.f20915a;
                            c5928ao2.m3961a(str, enumC5935au, true, (HashMap<String, String>) null);
                            context13 = this.f20915a.f20903a;
                            C5919af.m4028a(context13).m4022b(str);
                        }
                    }
                    enumC5935au = EnumC5935au.ENABLE_PUSH;
                    if (enumC5935au.ordinal() == i) {
                        context12 = this.f20915a.f20903a;
                        if ("syncing".equals(C5919af.m4028a(context12).m4027a(enumC5935au))) {
                            c5928ao2 = this.f20915a;
                            c5928ao2.m3961a(str, enumC5935au, true, (HashMap<String, String>) null);
                            context13 = this.f20915a.f20903a;
                            C5919af.m4028a(context13).m4022b(str);
                        }
                    }
                    EnumC5935au enumC5935au2 = EnumC5935au.UPLOAD_HUAWEI_TOKEN;
                    if (enumC5935au2.ordinal() == i) {
                        context10 = this.f20915a.f20903a;
                        if ("syncing".equals(C5919af.m4028a(context10).m4027a(enumC5935au2))) {
                            c5928ao = this.f20915a;
                            context11 = c5928ao.f20903a;
                            m3870a = C5946i.m3870a(context11, EnumC5942e.ASSEMBLE_PUSH_HUAWEI);
                            c5928ao.m3961a(str, enumC5935au2, false, m3870a);
                            context13 = this.f20915a.f20903a;
                            C5919af.m4028a(context13).m4022b(str);
                        }
                    }
                    enumC5935au2 = EnumC5935au.UPLOAD_FCM_TOKEN;
                    if (enumC5935au2.ordinal() == i) {
                        context8 = this.f20915a.f20903a;
                        if ("syncing".equals(C5919af.m4028a(context8).m4027a(enumC5935au2))) {
                            c5928ao = this.f20915a;
                            context9 = c5928ao.f20903a;
                            m3870a = C5946i.m3870a(context9, EnumC5942e.ASSEMBLE_PUSH_FCM);
                            c5928ao.m3961a(str, enumC5935au2, false, m3870a);
                            context13 = this.f20915a.f20903a;
                            C5919af.m4028a(context13).m4022b(str);
                        }
                    }
                    enumC5935au2 = EnumC5935au.UPLOAD_COS_TOKEN;
                    if (enumC5935au2.ordinal() == i) {
                        context6 = this.f20915a.f20903a;
                        if ("syncing".equals(C5919af.m4028a(context6).m4027a(enumC5935au2))) {
                            c5928ao = this.f20915a;
                            context7 = c5928ao.f20903a;
                            m3870a = C5946i.m3870a(context7, EnumC5942e.ASSEMBLE_PUSH_COS);
                            c5928ao.m3961a(str, enumC5935au2, false, m3870a);
                            context13 = this.f20915a.f20903a;
                            C5919af.m4028a(context13).m4022b(str);
                        }
                    }
                    enumC5935au2 = EnumC5935au.UPLOAD_FTOS_TOKEN;
                    if (enumC5935au2.ordinal() == i) {
                        context4 = this.f20915a.f20903a;
                        if ("syncing".equals(C5919af.m4028a(context4).m4027a(enumC5935au2))) {
                            c5928ao = this.f20915a;
                            context5 = c5928ao.f20903a;
                            m3870a = C5946i.m3870a(context5, EnumC5942e.ASSEMBLE_PUSH_FTOS);
                            c5928ao.m3961a(str, enumC5935au2, false, m3870a);
                        }
                    }
                    context13 = this.f20915a.f20903a;
                    C5919af.m4028a(context13).m4022b(str);
                } else {
                    context3 = this.f20915a.f20903a;
                    C5919af.m4028a(context3).m4021c(str);
                }
            }
        }
    }
}
