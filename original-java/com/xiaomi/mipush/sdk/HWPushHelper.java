package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class HWPushHelper {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f8667a = false;

    public static void convertMessage(Intent intent) {
        i.a(intent);
    }

    public static boolean hasNetwork(Context context) {
        return i.m58a(context);
    }

    public static boolean isHmsTokenSynced(Context context) {
        String a2 = i.a(e.ASSEMBLE_PUSH_HUAWEI);
        if (TextUtils.isEmpty(a2)) {
            return false;
        }
        String a3 = i.a(context, a2);
        String a4 = af.a(context).a(au.UPLOAD_HUAWEI_TOKEN);
        return !TextUtils.isEmpty(a3) && !TextUtils.isEmpty(a4) && "synced".equals(a4);
    }

    public static boolean isUserOpenHmsPush(Context context) {
        return MiPushClient.getOpenHmsPush(context);
    }

    public static boolean needConnect() {
        return f8667a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
        r2 = r3.getString("pushMsg");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void notifyHmsNotificationMessageClicked(android.content.Context r5, java.lang.String r6) {
        /*
            java.lang.String r0 = "pushMsg"
            boolean r1 = android.text.TextUtils.isEmpty(r6)
            java.lang.String r2 = ""
            if (r1 != 0) goto L_0x0037
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: Exception -> 0x002f
            r1.<init>(r6)     // Catch: Exception -> 0x002f
            int r6 = r1.length()     // Catch: Exception -> 0x002f
            if (r6 <= 0) goto L_0x0037
            r6 = 0
        L_0x0016:
            int r3 = r1.length()     // Catch: Exception -> 0x002f
            if (r6 >= r3) goto L_0x0037
            org.json.JSONObject r3 = r1.getJSONObject(r6)     // Catch: Exception -> 0x002f
            boolean r4 = r3.has(r0)     // Catch: Exception -> 0x002f
            if (r4 == 0) goto L_0x002c
            java.lang.String r6 = r3.getString(r0)     // Catch: Exception -> 0x002f
            r2 = r6
            goto L_0x0037
        L_0x002c:
            int r6 = r6 + 1
            goto L_0x0016
        L_0x002f:
            r6 = move-exception
            java.lang.String r6 = r6.toString()
            com.xiaomi.channel.commonutils.logger.b.d(r6)
        L_0x0037:
            com.xiaomi.mipush.sdk.PushMessageReceiver r6 = com.xiaomi.mipush.sdk.i.a(r5)
            if (r6 == 0) goto L_0x0051
            com.xiaomi.mipush.sdk.MiPushMessage r0 = com.xiaomi.mipush.sdk.i.a(r2)
            java.util.Map r1 = r0.getExtra()
            java.lang.String r2 = "notify_effect"
            boolean r1 = r1.containsKey(r2)
            if (r1 == 0) goto L_0x004e
            return
        L_0x004e:
            r6.onNotificationMessageClicked(r5, r0)
        L_0x0051:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.HWPushHelper.notifyHmsNotificationMessageClicked(android.content.Context, java.lang.String):void");
    }

    public static void notifyHmsPassThoughMessageArrived(Context context, String str) {
        String str2 = "";
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("content")) {
                    str2 = jSONObject.getString("content");
                }
            }
        } catch (Exception e) {
            b.d(e.toString());
        }
        PushMessageReceiver a2 = i.a(context);
        if (a2 != null) {
            a2.onReceivePassThroughMessage(context, i.a(str2));
        }
    }

    public static void registerHuaWeiAssemblePush(Context context) {
        AbstractPushManager a2 = f.a(context).a(e.ASSEMBLE_PUSH_HUAWEI);
        if (a2 != null) {
            a2.register();
        }
    }

    public static void reportError(String str, int i) {
        i.a(str, i);
    }

    public static synchronized void setConnectTime(Context context) {
        synchronized (HWPushHelper.class) {
            context.getSharedPreferences("mipush_extra", 0).edit().putLong("last_connect_time", System.currentTimeMillis()).commit();
        }
    }

    public static synchronized void setGetTokenTime(Context context) {
        synchronized (HWPushHelper.class) {
            context.getSharedPreferences("mipush_extra", 0).edit().putLong("last_get_token_time", System.currentTimeMillis()).commit();
        }
    }

    public static void setNeedConnect(boolean z) {
        f8667a = z;
    }

    public static synchronized boolean shouldGetToken(Context context) {
        boolean z;
        synchronized (HWPushHelper.class) {
            z = false;
            if (Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_get_token_time", -1L)) > 172800000) {
                z = true;
            }
        }
        return z;
    }

    public static synchronized boolean shouldTryConnect(Context context) {
        boolean z;
        synchronized (HWPushHelper.class) {
            z = false;
            if (Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_connect_time", -1L)) > 5000) {
                z = true;
            }
        }
        return z;
    }

    public static void uploadToken(Context context, String str) {
        i.m57a(context, e.ASSEMBLE_PUSH_HUAWEI, str);
    }
}
