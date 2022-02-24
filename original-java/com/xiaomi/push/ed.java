package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ed implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8899a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ ec f297a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f298a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f8900b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f8901c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ed(ec ecVar, String str, Context context, String str2, String str3) {
        this.f297a = ecVar;
        this.f298a = str;
        this.f8899a = context;
        this.f8900b = str2;
        this.f8901c = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        String str;
        String str2;
        Context context2;
        String str3;
        String str4;
        ec ecVar;
        ee eeVar;
        Context context3;
        if (!TextUtils.isEmpty(this.f298a)) {
            try {
                dy.a(this.f8899a, this.f298a, 1001, "get message");
                JSONObject jSONObject = new JSONObject(this.f298a);
                String optString = jSONObject.optString("action");
                String optString2 = jSONObject.optString("awakened_app_packagename");
                String optString3 = jSONObject.optString("awake_app_packagename");
                String optString4 = jSONObject.optString("awake_app");
                String optString5 = jSONObject.optString("awake_type");
                int optInt = jSONObject.optInt("awake_foreground", 0);
                if (this.f8900b.equals(optString3) && this.f8901c.equals(optString4)) {
                    if (TextUtils.isEmpty(optString5) || TextUtils.isEmpty(optString3) || TextUtils.isEmpty(optString4) || TextUtils.isEmpty(optString2)) {
                        context2 = this.f8899a;
                        str3 = this.f298a;
                        str4 = "A receive a incorrect message with empty type";
                    } else {
                        this.f297a.b(optString3);
                        this.f297a.a(optString4);
                        eb ebVar = new eb();
                        ebVar.b(optString);
                        ebVar.a(optString2);
                        ebVar.a(optInt);
                        ebVar.d(this.f298a);
                        if ("service".equals(optString5)) {
                            if (!TextUtils.isEmpty(optString)) {
                                ecVar = this.f297a;
                                eeVar = ee.SERVICE_ACTION;
                                context3 = this.f8899a;
                            } else {
                                ebVar.c("com.xiaomi.mipush.sdk.PushMessageHandler");
                                ecVar = this.f297a;
                                eeVar = ee.SERVICE_COMPONENT;
                                context3 = this.f8899a;
                            }
                        } else if (ee.ACTIVITY.f300a.equals(optString5)) {
                            ecVar = this.f297a;
                            eeVar = ee.ACTIVITY;
                            context3 = this.f8899a;
                        } else if (ee.PROVIDER.f300a.equals(optString5)) {
                            ecVar = this.f297a;
                            eeVar = ee.PROVIDER;
                            context3 = this.f8899a;
                        } else {
                            context2 = this.f8899a;
                            str3 = this.f298a;
                            str4 = "A receive a incorrect message with unknown type " + optString5;
                        }
                        ecVar.a(eeVar, context3, ebVar);
                        return;
                    }
                    dy.a(context2, str3, 1008, str4);
                    return;
                }
                dy.a(this.f8899a, this.f298a, 1008, "A receive a incorrect message with incorrect package info" + optString3);
                return;
            } catch (JSONException e) {
                b.a(e);
                context = this.f8899a;
                str = this.f298a;
                str2 = "A meet a exception when receive the message";
            }
        } else {
            context = this.f8899a;
            str = "null";
            str2 = "A receive a incorrect message with empty info";
        }
        dy.a(context, str, 1008, str2);
    }
}
