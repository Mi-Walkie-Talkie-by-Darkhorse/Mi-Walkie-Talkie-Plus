package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.ed */
/* loaded from: classes2.dex */
public class RunnableC6118ed implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f21434a;

    /* renamed from: a */
    final /* synthetic */ C6117ec f21435a;

    /* renamed from: a */
    final /* synthetic */ String f21436a;

    /* renamed from: b */
    final /* synthetic */ String f21437b;

    /* renamed from: c */
    final /* synthetic */ String f21438c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6118ed(C6117ec c6117ec, String str, Context context, String str2, String str3) {
        this.f21435a = c6117ec;
        this.f21436a = str;
        this.f21434a = context;
        this.f21437b = str2;
        this.f21438c = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        String str;
        String str2;
        Context context2;
        String str3;
        String str4;
        C6117ec c6117ec;
        Context context3;
        C6117ec c6117ec2;
        EnumC6119ee enumC6119ee;
        Context context4;
        if (TextUtils.isEmpty(this.f21436a)) {
            context = this.f21434a;
            str = "null";
            str2 = "A receive a incorrect message with empty info";
        } else {
            try {
                C6112dy.m3151a(this.f21434a, this.f21436a, 1001, "get message");
                JSONObject jSONObject = new JSONObject(this.f21436a);
                String optString = jSONObject.optString("action");
                String optString2 = jSONObject.optString("awakened_app_packagename");
                String optString3 = jSONObject.optString("awake_app_packagename");
                String optString4 = jSONObject.optString("awake_app");
                String optString5 = jSONObject.optString("awake_type");
                int optInt = jSONObject.optInt("awake_foreground", 0);
                if (this.f21437b.equals(optString3) && this.f21438c.equals(optString4)) {
                    if (!TextUtils.isEmpty(optString5) && !TextUtils.isEmpty(optString3) && !TextUtils.isEmpty(optString4) && !TextUtils.isEmpty(optString2)) {
                        this.f21435a.m3110b(optString3);
                        this.f21435a.m3113a(optString4);
                        C6116eb c6116eb = new C6116eb();
                        c6116eb.m3129b(optString);
                        c6116eb.m3131a(optString2);
                        c6116eb.m3132a(optInt);
                        c6116eb.m3125d(this.f21436a);
                        if ("service".equals(optString5)) {
                            if (TextUtils.isEmpty(optString)) {
                                c6116eb.m3127c("com.xiaomi.mipush.sdk.PushMessageHandler");
                                c6117ec2 = this.f21435a;
                                enumC6119ee = EnumC6119ee.SERVICE_COMPONENT;
                                context4 = this.f21434a;
                            } else {
                                c6117ec2 = this.f21435a;
                                enumC6119ee = EnumC6119ee.SERVICE_ACTION;
                                context4 = this.f21434a;
                            }
                            c6117ec2.m3115a(enumC6119ee, context4, c6116eb);
                            return;
                        }
                        EnumC6119ee enumC6119ee2 = EnumC6119ee.ACTIVITY;
                        if (enumC6119ee2.f21444a.equals(optString5)) {
                            c6117ec = this.f21435a;
                            context3 = this.f21434a;
                        } else {
                            enumC6119ee2 = EnumC6119ee.PROVIDER;
                            if (enumC6119ee2.f21444a.equals(optString5)) {
                                c6117ec = this.f21435a;
                                context3 = this.f21434a;
                            } else {
                                context2 = this.f21434a;
                                str3 = this.f21436a;
                                str4 = "A receive a incorrect message with unknown type " + optString5;
                            }
                        }
                        c6117ec.m3115a(enumC6119ee2, context3, c6116eb);
                        return;
                    }
                    context2 = this.f21434a;
                    str3 = this.f21436a;
                    str4 = "A receive a incorrect message with empty type";
                    C6112dy.m3151a(context2, str3, 1008, str4);
                    return;
                }
                C6112dy.m3151a(this.f21434a, this.f21436a, 1008, "A receive a incorrect message with incorrect package info" + optString3);
                return;
            } catch (JSONException e) {
                AbstractC5876b.m4143a(e);
                context = this.f21434a;
                str = this.f21436a;
                str2 = "A meet a exception when receive the message";
            }
        }
        C6112dy.m3151a(context, str, 1008, str2);
    }
}
