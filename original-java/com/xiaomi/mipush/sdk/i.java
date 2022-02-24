package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.open.SocialConstants;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ak;
import com.xiaomi.push.bi;
import com.xiaomi.push.bj;
import com.xiaomi.push.bn;
import com.xiaomi.push.ir;
import com.xiaomi.push.s;
import com.xiaomi.push.service.ax;
import com.xiaomi.push.u;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, String> f8712a = new HashMap<>();

    public static int a() {
        Integer num = (Integer) bj.a("com.xiaomi.assemble.control.AssembleConstants", "ASSEMBLE_VERSION_CODE");
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private static int a(Context context, e eVar, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        String a2 = a(eVar);
        String string = sharedPreferences.getString(a2, "");
        String c2 = b.m36a(context).m44c();
        String string2 = sharedPreferences.getString("last_check_token", "");
        if (TextUtils.isEmpty(a2)) {
            b.m1a("ASSEMBLE_PUSH : can not find the key of token used in sp file");
            return 0;
        } else if (TextUtils.isEmpty(string)) {
            return 1;
        } else {
            if (!string.equals(str)) {
                return 2;
            }
            if (!TextUtils.equals(c2, string2)) {
                return 3;
            }
            if (m60a(eVar)) {
                if (a() != sharedPreferences.getInt(b(eVar), 0)) {
                    return 4;
                }
            }
            return 0;
        }
    }

    public static MiPushMessage a(String str) {
        MiPushMessage miPushMessage = new MiPushMessage();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("messageId")) {
                    miPushMessage.setMessageId(jSONObject.getString("messageId"));
                }
                if (jSONObject.has(SocialConstants.PARAM_COMMENT)) {
                    miPushMessage.setDescription(jSONObject.getString(SocialConstants.PARAM_COMMENT));
                }
                if (jSONObject.has("title")) {
                    miPushMessage.setTitle(jSONObject.getString("title"));
                }
                if (jSONObject.has("content")) {
                    miPushMessage.setContent(jSONObject.getString("content"));
                }
                if (jSONObject.has("passThrough")) {
                    miPushMessage.setPassThrough(jSONObject.getInt("passThrough"));
                }
                if (jSONObject.has("notifyType")) {
                    miPushMessage.setNotifyType(jSONObject.getInt("notifyType"));
                }
                if (jSONObject.has("messageType")) {
                    miPushMessage.setMessageType(jSONObject.getInt("messageType"));
                }
                if (jSONObject.has("alias")) {
                    miPushMessage.setAlias(jSONObject.getString("alias"));
                }
                if (jSONObject.has("topic")) {
                    miPushMessage.setTopic(jSONObject.getString("topic"));
                }
                if (jSONObject.has("user_account")) {
                    miPushMessage.setUserAccount(jSONObject.getString("user_account"));
                }
                if (jSONObject.has("notifyId")) {
                    miPushMessage.setNotifyId(jSONObject.getInt("notifyId"));
                }
                if (jSONObject.has("category")) {
                    miPushMessage.setCategory(jSONObject.getString("category"));
                }
                if (jSONObject.has("isNotified")) {
                    miPushMessage.setNotified(jSONObject.getBoolean("isNotified"));
                }
                if (jSONObject.has("extra")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("extra");
                    Iterator<String> keys = jSONObject2.keys();
                    HashMap hashMap = new HashMap();
                    while (keys != null && keys.hasNext()) {
                        String next = keys.next();
                        hashMap.put(next, jSONObject2.getString(next));
                    }
                    if (hashMap.size() > 0) {
                        miPushMessage.setExtra(hashMap);
                    }
                }
            } catch (Exception e) {
                b.d(e.toString());
            }
        }
        return miPushMessage;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PushMessageReceiver a(Context context) {
        ResolveInfo resolveInfo;
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setPackage(context.getPackageName());
        try {
            List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            if (queryBroadcastReceivers != null) {
                Iterator<ResolveInfo> it = queryBroadcastReceivers.iterator();
                while (it.hasNext()) {
                    resolveInfo = it.next();
                    if (resolveInfo.activityInfo != null && resolveInfo.activityInfo.packageName.equals(context.getPackageName())) {
                        break;
                    }
                }
            }
            resolveInfo = null;
            if (resolveInfo != null) {
                return (PushMessageReceiver) u.a(context, resolveInfo.activityInfo.name).newInstance();
            }
            return null;
        } catch (Exception e) {
            b.d(e.toString());
            return null;
        }
    }

    static String a(Context context, e eVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        String a2 = a(eVar);
        if (!TextUtils.isEmpty(a2)) {
            return sharedPreferences.getString(a2, "");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static synchronized String a(Context context, String str) {
        String str2;
        synchronized (i.class) {
            str2 = f8712a.get(str);
            if (TextUtils.isEmpty(str2)) {
                str2 = "";
            }
        }
        return str2;
    }

    public static String a(e eVar) {
        int i = k.f8714a[eVar.ordinal()];
        if (i == 1) {
            return "hms_push_token";
        }
        if (i == 2) {
            return "fcm_push_token_v2";
        }
        if (i == 3) {
            return "cos_push_token";
        }
        if (i != 4) {
            return null;
        }
        return "ftos_push_token";
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
        if (r12 != 0) goto L_0x005a;
     */
    /* renamed from: a  reason: collision with other method in class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.HashMap<java.lang.String, java.lang.String> m54a(android.content.Context r11, com.xiaomi.mipush.sdk.e r12) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.i.m54a(android.content.Context, com.xiaomi.mipush.sdk.e):java.util.HashMap");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public static void m55a(Context context) {
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        String a2 = a(e.ASSEMBLE_PUSH_HUAWEI);
        String a3 = a(e.ASSEMBLE_PUSH_FCM);
        if (!TextUtils.isEmpty(sharedPreferences.getString(a2, "")) && TextUtils.isEmpty(sharedPreferences.getString(a3, ""))) {
            z = true;
        }
        if (z) {
            ao.a(context).a(2, a2);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m56a(Context context, e eVar) {
        String a2 = a(eVar);
        if (!TextUtils.isEmpty(a2)) {
            s.a(context.getSharedPreferences("mipush_extra", 0).edit().putString(a2, ""));
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m57a(Context context, e eVar, String str) {
        if (!TextUtils.isEmpty(str)) {
            int a2 = a(context, eVar, str);
            if (a2 != 0) {
                b.m1a("ASSEMBLE_PUSH : send token upload, check:" + a2);
                a(eVar, str);
                au a3 = l.a(eVar);
                if (a3 != null) {
                    ao.a(context).a((String) null, a3, eVar);
                    return;
                }
                return;
            }
            b.m1a("ASSEMBLE_PUSH : do not need to send token");
        }
    }

    public static void a(Intent intent) {
        Bundle extras;
        if (intent != null && (extras = intent.getExtras()) != null && extras.containsKey("pushMsg")) {
            intent.putExtra(PushMessageHelper.KEY_MESSAGE, a(extras.getString("pushMsg")));
        }
    }

    private static synchronized void a(e eVar, String str) {
        synchronized (i.class) {
            String a2 = a(eVar);
            if (TextUtils.isEmpty(a2)) {
                b.m1a("ASSEMBLE_PUSH : can not find the key of token used in sp file");
            } else if (TextUtils.isEmpty(str)) {
                b.m1a("ASSEMBLE_PUSH : token is null");
            } else {
                f8712a.put(a2, str);
            }
        }
    }

    public static void a(String str, int i) {
        MiTinyDataClient.upload("hms_push_error", str, 1L, "error code = " + i);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m58a(Context context) {
        if (context == null) {
            return false;
        }
        return bi.b(context);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m59a(Context context, e eVar) {
        if (l.m62a(eVar) != null) {
            return ax.a(context).a(l.m62a(eVar).a(), true);
        }
        return false;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m60a(e eVar) {
        return eVar == e.ASSEMBLE_PUSH_FTOS || eVar == e.ASSEMBLE_PUSH_FCM;
    }

    public static boolean a(ir irVar, e eVar) {
        if (irVar == null || irVar.m430a() == null || irVar.m430a().m397a() == null) {
            return false;
        }
        return (eVar == e.ASSEMBLE_PUSH_FCM ? "FCM" : "").equalsIgnoreCase(irVar.m430a().m397a().get("assemble_push_type"));
    }

    public static byte[] a(Context context, ir irVar, e eVar) {
        if (a(irVar, eVar)) {
            return bn.m103a(a(context, eVar));
        }
        return null;
    }

    public static String b(e eVar) {
        return a(eVar) + "_version";
    }

    public static void b(Context context) {
        f.a(context).register();
    }

    public static void b(Context context, e eVar, String str) {
        ak.a(context).a(new j(str, context, eVar));
    }

    public static String c(e eVar) {
        int i = k.f8714a[eVar.ordinal()];
        if (i == 1) {
            return "hms_push_error";
        }
        if (i == 2) {
            return "fcm_push_error";
        }
        if (i == 3) {
            return "cos_push_error";
        }
        if (i != 4) {
            return null;
        }
        return "ftos_push_error";
    }

    public static void c(Context context) {
        f.a(context).unregister();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void d(Context context, e eVar, String str) {
        synchronized (i.class) {
            String a2 = a(eVar);
            if (TextUtils.isEmpty(a2)) {
                b.m1a("ASSEMBLE_PUSH : can not find the key of token used in sp file");
                return;
            }
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putString(a2, str).putString("last_check_token", b.m36a(context).m44c());
            if (m60a(eVar)) {
                edit.putInt(b(eVar), a());
            }
            s.a(edit);
            b.m1a("ASSEMBLE_PUSH : update sp file success!  " + str);
        }
    }
}
