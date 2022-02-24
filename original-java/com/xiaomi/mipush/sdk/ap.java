package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ap extends Handler {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ao f8693a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ap(ao aoVar, Looper looper) {
        super(looper);
        this.f8693a = aoVar;
    }

    @Override // android.os.Handler
    public void dispatchMessage(Message message) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        ao aoVar;
        au auVar;
        Context context6;
        HashMap<String, String> a2;
        Context context7;
        Context context8;
        Context context9;
        Context context10;
        Context context11;
        Context context12;
        Context context13;
        ao aoVar2;
        au auVar2;
        Context context14;
        if (message.what == 19) {
            String str = (String) message.obj;
            int i = message.arg1;
            synchronized (af.class) {
                context = this.f8693a.f46a;
                if (af.a(context).m19a(str)) {
                    context2 = this.f8693a.f46a;
                    if (af.a(context2).a(str) < 10) {
                        if (au.DISABLE_PUSH.ordinal() == i) {
                            context14 = this.f8693a.f46a;
                            if ("syncing".equals(af.a(context14).a(au.DISABLE_PUSH))) {
                                aoVar2 = this.f8693a;
                                auVar2 = au.DISABLE_PUSH;
                                aoVar2.a(str, auVar2, true, (HashMap<String, String>) null);
                                context4 = this.f8693a.f46a;
                                af.a(context4).b(str);
                            }
                        }
                        if (au.ENABLE_PUSH.ordinal() == i) {
                            context13 = this.f8693a.f46a;
                            if ("syncing".equals(af.a(context13).a(au.ENABLE_PUSH))) {
                                aoVar2 = this.f8693a;
                                auVar2 = au.ENABLE_PUSH;
                                aoVar2.a(str, auVar2, true, (HashMap<String, String>) null);
                                context4 = this.f8693a.f46a;
                                af.a(context4).b(str);
                            }
                        }
                        if (au.UPLOAD_HUAWEI_TOKEN.ordinal() == i) {
                            context11 = this.f8693a.f46a;
                            if ("syncing".equals(af.a(context11).a(au.UPLOAD_HUAWEI_TOKEN))) {
                                aoVar = this.f8693a;
                                auVar = au.UPLOAD_HUAWEI_TOKEN;
                                context12 = this.f8693a.f46a;
                                a2 = i.m54a(context12, e.ASSEMBLE_PUSH_HUAWEI);
                                aoVar.a(str, auVar, false, a2);
                                context4 = this.f8693a.f46a;
                                af.a(context4).b(str);
                            }
                        }
                        if (au.UPLOAD_FCM_TOKEN.ordinal() == i) {
                            context9 = this.f8693a.f46a;
                            if ("syncing".equals(af.a(context9).a(au.UPLOAD_FCM_TOKEN))) {
                                aoVar = this.f8693a;
                                auVar = au.UPLOAD_FCM_TOKEN;
                                context10 = this.f8693a.f46a;
                                a2 = i.m54a(context10, e.ASSEMBLE_PUSH_FCM);
                                aoVar.a(str, auVar, false, a2);
                                context4 = this.f8693a.f46a;
                                af.a(context4).b(str);
                            }
                        }
                        if (au.UPLOAD_COS_TOKEN.ordinal() == i) {
                            context7 = this.f8693a.f46a;
                            if ("syncing".equals(af.a(context7).a(au.UPLOAD_COS_TOKEN))) {
                                aoVar = this.f8693a;
                                auVar = au.UPLOAD_COS_TOKEN;
                                context8 = this.f8693a.f46a;
                                a2 = i.m54a(context8, e.ASSEMBLE_PUSH_COS);
                                aoVar.a(str, auVar, false, a2);
                                context4 = this.f8693a.f46a;
                                af.a(context4).b(str);
                            }
                        }
                        if (au.UPLOAD_FTOS_TOKEN.ordinal() == i) {
                            context5 = this.f8693a.f46a;
                            if ("syncing".equals(af.a(context5).a(au.UPLOAD_FTOS_TOKEN))) {
                                aoVar = this.f8693a;
                                auVar = au.UPLOAD_FTOS_TOKEN;
                                context6 = this.f8693a.f46a;
                                a2 = i.m54a(context6, e.ASSEMBLE_PUSH_FTOS);
                                aoVar.a(str, auVar, false, a2);
                            }
                        }
                        context4 = this.f8693a.f46a;
                        af.a(context4).b(str);
                    } else {
                        context3 = this.f8693a.f46a;
                        af.a(context3).c(str);
                    }
                }
            }
        }
    }
}
