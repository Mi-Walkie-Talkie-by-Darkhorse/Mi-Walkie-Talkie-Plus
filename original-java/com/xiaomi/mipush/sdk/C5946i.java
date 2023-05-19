package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.open.SocialConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6013bi;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6022bn;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6314s;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.C6470v;
import com.xiaomi.push.service.C6372ax;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* renamed from: com.xiaomi.mipush.sdk.i */
/* loaded from: classes2.dex */
public class C5946i {

    /* renamed from: a */
    private static HashMap<String, String> f20959a = new HashMap<>();

    /* renamed from: a */
    public static int m3875a() {
        Integer num = (Integer) C6016bj.m3647a("com.xiaomi.assemble.control.AssembleConstants", "ASSEMBLE_VERSION_CODE");
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* renamed from: a */
    private static int m3867a(Context context, EnumC5942e enumC5942e, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        String m3862a = m3862a(enumC5942e);
        String string = sharedPreferences.getString(m3862a, "");
        String m3910c = C5938b.m3923a(context).m3910c();
        String string2 = sharedPreferences.getString("last_check_token", "");
        if (TextUtils.isEmpty(m3862a)) {
            AbstractC5876b.m4147a("ASSEMBLE_PUSH : can not find the key of token used in sp file");
            return 0;
        } else if (TextUtils.isEmpty(string)) {
            return 1;
        } else {
            if (string.equals(str)) {
                if (TextUtils.equals(m3910c, string2)) {
                    if (m3861a(enumC5942e)) {
                        if (m3875a() != sharedPreferences.getInt(m3854b(enumC5942e), 0)) {
                            return 4;
                        }
                    }
                    return 0;
                }
                return 3;
            }
            return 2;
        }
    }

    /* renamed from: a */
    public static MiPushMessage m3858a(String str) {
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
                AbstractC5876b.m4138d(e.toString());
            }
        }
        return miPushMessage;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static PushMessageReceiver m3874a(Context context) {
        ResolveInfo resolveInfo;
        Intent intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setPackage(context.getPackageName());
        try {
            List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 32);
            if (queryBroadcastReceivers != null) {
                Iterator<ResolveInfo> it2 = queryBroadcastReceivers.iterator();
                while (it2.hasNext()) {
                    resolveInfo = it2.next();
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    if (activityInfo != null && activityInfo.packageName.equals(context.getPackageName())) {
                        break;
                    }
                }
            }
            resolveInfo = null;
            if (resolveInfo != null) {
                return (PushMessageReceiver) C6469u.m1234a(context, resolveInfo.activityInfo.name).newInstance();
            }
            return null;
        } catch (Exception e) {
            AbstractC5876b.m4138d(e.toString());
            return null;
        }
    }

    /* renamed from: a */
    static String m3871a(Context context, EnumC5942e enumC5942e) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        String m3862a = m3862a(enumC5942e);
        if (TextUtils.isEmpty(m3862a)) {
            return null;
        }
        return sharedPreferences.getString(m3862a, "");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static synchronized String m3864a(Context context, String str) {
        String str2;
        synchronized (C5946i.class) {
            str2 = f20959a.get(str);
            if (TextUtils.isEmpty(str2)) {
                str2 = "";
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static String m3862a(EnumC5942e enumC5942e) {
        int i = C5948k.f20963a[enumC5942e.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return null;
                    }
                    return "ftos_push_token";
                }
                return "cos_push_token";
            }
            return "fcm_push_token_v2";
        }
        return "hms_push_token";
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0058, code lost:
        if (r12 != 0) goto L15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static HashMap<String, String> m3870a(Context context, EnumC5942e enumC5942e) {
        C6470v.C6471a m1226a;
        int m3875a;
        HashMap<String, String> hashMap = new HashMap<>();
        String m3862a = m3862a(enumC5942e);
        if (TextUtils.isEmpty(m3862a)) {
            return hashMap;
        }
        int i = C5948k.f20963a[enumC5942e.ordinal()];
        String str = null;
        ApplicationInfo applicationInfo = null;
        if (i != 1) {
            if (i == 2) {
                m1226a = new C6470v.C6471a(Constants.COLON_SEPARATOR, Constants.WAVE_SEPARATOR).m1226a(Constants.PHONE_BRAND, EnumC5920ag.FCM.name()).m1226a("token", m3864a(context, m3862a)).m1226a("package_name", context.getPackageName());
                m3875a = m3875a();
                if (m3875a == 0) {
                    m3875a = 40082;
                }
            } else if (i == 3) {
                str = "brand:" + EnumC5920ag.OPPO.name() + Constants.WAVE_SEPARATOR + "token" + Constants.COLON_SEPARATOR + m3864a(context, m3862a) + Constants.WAVE_SEPARATOR + "package_name" + Constants.COLON_SEPARATOR + context.getPackageName();
            } else if (i == 4) {
                m1226a = new C6470v.C6471a(Constants.COLON_SEPARATOR, Constants.WAVE_SEPARATOR).m1226a(Constants.PHONE_BRAND, EnumC5920ag.VIVO.name()).m1226a("token", m3864a(context, m3862a)).m1226a("package_name", context.getPackageName());
                m3875a = m3875a();
            }
            m1226a.m1226a(Constants.VERSION, Integer.valueOf(m3875a));
            str = m1226a.toString();
        } else {
            try {
                applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            } catch (Exception e) {
                AbstractC5876b.m4138d(e.toString());
            }
            str = "brand:" + C5952n.m3844a(context).name() + Constants.WAVE_SEPARATOR + "token" + Constants.COLON_SEPARATOR + m3864a(context, m3862a) + Constants.WAVE_SEPARATOR + "package_name" + Constants.COLON_SEPARATOR + context.getPackageName() + Constants.WAVE_SEPARATOR + Constants.APP_ID + Constants.COLON_SEPARATOR + (applicationInfo != null ? applicationInfo.metaData.getInt(Constants.HUAWEI_HMS_CLIENT_APPID) : -1);
        }
        hashMap.put(Constants.ASSEMBLE_PUSH_REG_INFO, str);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m3873a(Context context) {
        boolean z = false;
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        String m3862a = m3862a(EnumC5942e.ASSEMBLE_PUSH_HUAWEI);
        String m3862a2 = m3862a(EnumC5942e.ASSEMBLE_PUSH_FCM);
        if (!TextUtils.isEmpty(sharedPreferences.getString(m3862a, "")) && TextUtils.isEmpty(sharedPreferences.getString(m3862a2, ""))) {
            z = true;
        }
        if (z) {
            C5928ao.m3984a(context).m3985a(2, m3862a);
        }
    }

    /* renamed from: a */
    public static void m3869a(Context context, EnumC5942e enumC5942e) {
        String m3862a = m3862a(enumC5942e);
        if (TextUtils.isEmpty(m3862a)) {
            return;
        }
        C6314s.m1816a(context.getSharedPreferences("mipush_extra", 0).edit().putString(m3862a, ""));
    }

    /* renamed from: a */
    public static void m3866a(Context context, EnumC5942e enumC5942e, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int m3867a = m3867a(context, enumC5942e, str);
        if (m3867a == 0) {
            AbstractC5876b.m4147a("ASSEMBLE_PUSH : do not need to send token");
            return;
        }
        AbstractC5876b.m4147a("ASSEMBLE_PUSH : send token upload, check:" + m3867a);
        m3860a(enumC5942e, str);
        EnumC5935au m3849a = C5949l.m3849a(enumC5942e);
        if (m3849a == null) {
            return;
        }
        C5928ao.m3984a(context).m3962a((String) null, m3849a, enumC5942e);
    }

    /* renamed from: a */
    public static void m3863a(Intent intent) {
        Bundle extras;
        if (intent == null || (extras = intent.getExtras()) == null || !extras.containsKey("pushMsg")) {
            return;
        }
        intent.putExtra(PushMessageHelper.KEY_MESSAGE, m3858a(extras.getString("pushMsg")));
    }

    /* renamed from: a */
    private static synchronized void m3860a(EnumC5942e enumC5942e, String str) {
        synchronized (C5946i.class) {
            String m3862a = m3862a(enumC5942e);
            if (TextUtils.isEmpty(m3862a)) {
                AbstractC5876b.m4147a("ASSEMBLE_PUSH : can not find the key of token used in sp file");
            } else if (TextUtils.isEmpty(str)) {
                AbstractC5876b.m4147a("ASSEMBLE_PUSH : token is null");
            } else {
                f20959a.put(m3862a, str);
            }
        }
    }

    /* renamed from: a */
    public static void m3857a(String str, int i) {
        MiTinyDataClient.upload("hms_push_error", str, 1L, "error code = " + i);
    }

    /* renamed from: a */
    public static boolean m3872a(Context context) {
        if (context == null) {
            return false;
        }
        return C6013bi.m3662b(context);
    }

    /* renamed from: a */
    public static boolean m3868a(Context context, EnumC5942e enumC5942e) {
        if (C5949l.m3847a(enumC5942e) != null) {
            return C6372ax.m1530a(context).m1531a(C5949l.m3847a(enumC5942e).m2484a(), true);
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m3861a(EnumC5942e enumC5942e) {
        return enumC5942e == EnumC5942e.ASSEMBLE_PUSH_FTOS || enumC5942e == EnumC5942e.ASSEMBLE_PUSH_FCM;
    }

    /* renamed from: a */
    public static boolean m3859a(C6260ir c6260ir, EnumC5942e enumC5942e) {
        if (c6260ir == null || c6260ir.m2233a() == null || c6260ir.m2233a().m2401a() == null) {
            return false;
        }
        return (enumC5942e == EnumC5942e.ASSEMBLE_PUSH_FCM ? "FCM" : "").equalsIgnoreCase(c6260ir.m2233a().m2401a().get("assemble_push_type"));
    }

    /* renamed from: a */
    public static byte[] m3865a(Context context, C6260ir c6260ir, EnumC5942e enumC5942e) {
        if (m3859a(c6260ir, enumC5942e)) {
            return C6022bn.m3623a(m3871a(context, enumC5942e));
        }
        return null;
    }

    /* renamed from: b */
    public static String m3854b(EnumC5942e enumC5942e) {
        return m3862a(enumC5942e) + "_version";
    }

    /* renamed from: b */
    public static void m3856b(Context context) {
        C5943f.m3885a(context).register();
    }

    /* renamed from: b */
    public static void m3855b(Context context, EnumC5942e enumC5942e, String str) {
        C5978ak.m3784a(context).m3775a(new RunnableC5947j(str, context, enumC5942e));
    }

    /* renamed from: c */
    public static String m3851c(EnumC5942e enumC5942e) {
        int i = C5948k.f20963a[enumC5942e.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return null;
                    }
                    return "ftos_push_error";
                }
                return "cos_push_error";
            }
            return "fcm_push_error";
        }
        return "hms_push_error";
    }

    /* renamed from: c */
    public static void m3853c(Context context) {
        C5943f.m3885a(context).unregister();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static synchronized void m3850d(Context context, EnumC5942e enumC5942e, String str) {
        synchronized (C5946i.class) {
            String m3862a = m3862a(enumC5942e);
            if (TextUtils.isEmpty(m3862a)) {
                AbstractC5876b.m4147a("ASSEMBLE_PUSH : can not find the key of token used in sp file");
                return;
            }
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putString(m3862a, str).putString("last_check_token", C5938b.m3923a(context).m3910c());
            if (m3861a(enumC5942e)) {
                edit.putInt(m3854b(enumC5942e), m3875a());
            }
            C6314s.m1816a(edit);
            AbstractC5876b.m4147a("ASSEMBLE_PUSH : update sp file success!  " + str);
        }
    }
}
