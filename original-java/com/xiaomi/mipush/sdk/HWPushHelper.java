package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class HWPushHelper {

    /* renamed from: a */
    private static boolean f20854a = false;

    public static void convertMessage(Intent intent) {
        C5946i.m3863a(intent);
    }

    public static boolean hasNetwork(Context context) {
        return C5946i.m3872a(context);
    }

    public static boolean isHmsTokenSynced(Context context) {
        String m3862a = C5946i.m3862a(EnumC5942e.ASSEMBLE_PUSH_HUAWEI);
        if (TextUtils.isEmpty(m3862a)) {
            return false;
        }
        String m3864a = C5946i.m3864a(context, m3862a);
        String m4027a = C5919af.m4028a(context).m4027a(EnumC5935au.UPLOAD_HUAWEI_TOKEN);
        return (TextUtils.isEmpty(m3864a) || TextUtils.isEmpty(m4027a) || !"synced".equals(m4027a)) ? false : true;
    }

    public static boolean isUserOpenHmsPush(Context context) {
        return MiPushClient.getOpenHmsPush(context);
    }

    public static boolean needConnect() {
        return f20854a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        r2 = r3.getString("pushMsg");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void notifyHmsNotificationMessageClicked(Context context, String str) {
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() > 0) {
                    int i = 0;
                    while (true) {
                        if (i >= jSONArray.length()) {
                            break;
                        }
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        if (jSONObject.has("pushMsg")) {
                            break;
                        }
                        i++;
                    }
                }
            } catch (Exception e) {
                AbstractC5876b.m4138d(e.toString());
            }
        }
        PushMessageReceiver m3874a = C5946i.m3874a(context);
        if (m3874a != null) {
            MiPushMessage m3858a = C5946i.m3858a(str2);
            if (m3858a.getExtra().containsKey("notify_effect")) {
                return;
            }
            m3874a.onNotificationMessageClicked(context, m3858a);
        }
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
            AbstractC5876b.m4138d(e.toString());
        }
        PushMessageReceiver m3874a = C5946i.m3874a(context);
        if (m3874a != null) {
            m3874a.onReceivePassThroughMessage(context, C5946i.m3858a(str2));
        }
    }

    public static void registerHuaWeiAssemblePush(Context context) {
        AbstractPushManager m3883a = C5943f.m3885a(context).m3883a(EnumC5942e.ASSEMBLE_PUSH_HUAWEI);
        if (m3883a != null) {
            m3883a.register();
        }
    }

    public static void reportError(String str, int i) {
        C5946i.m3857a(str, i);
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
        f20854a = z;
    }

    public static synchronized boolean shouldGetToken(Context context) {
        boolean z;
        synchronized (HWPushHelper.class) {
            z = Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_get_token_time", -1L)) > 172800000;
        }
        return z;
    }

    public static synchronized boolean shouldTryConnect(Context context) {
        boolean z;
        synchronized (HWPushHelper.class) {
            z = Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_connect_time", -1L)) > 5000;
        }
        return z;
    }

    public static void uploadToken(Context context, String str) {
        C5946i.m3866a(context, EnumC5942e.ASSEMBLE_PUSH_HUAWEI, str);
    }
}
