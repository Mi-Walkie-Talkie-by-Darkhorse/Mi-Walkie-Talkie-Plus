package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.os.Http;
import com.mi.milinkforgame.sdk.data.Const;
import com.tencent.open.SocialConstants;
import com.xiaomi.channel.commonutils.android.e;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.string.d;
import com.xiaomi.mipush.sdk.Constants;
import java.util.TreeMap;
import org.json.JSONObject;

public class q {
    private static p a;
    private static a b;

    public interface a {
        void a();
    }

    public static synchronized p a(Context context) {
        p pVar = null;
        synchronized (q.class) {
            if (a != null) {
                pVar = a;
            } else {
                SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_account", 0);
                String string = sharedPreferences.getString("uuid", null);
                String string2 = sharedPreferences.getString("token", null);
                String string3 = sharedPreferences.getString("security", null);
                String string4 = sharedPreferences.getString("app_id", null);
                String string5 = sharedPreferences.getString("app_token", null);
                String string6 = sharedPreferences.getString("package_name", null);
                String string7 = sharedPreferences.getString("device_id", null);
                int i = sharedPreferences.getInt("env_type", 1);
                if (!TextUtils.isEmpty(string7) && string7.startsWith("a-")) {
                    string7 = e.h(context);
                    sharedPreferences.edit().putString("device_id", string7).commit();
                }
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
                    String h = e.h(context);
                    if ("com.xiaomi.xmsf".equals(context.getPackageName()) || TextUtils.isEmpty(h) || TextUtils.isEmpty(string7) || string7.equals(h)) {
                        a = new p(string, string2, string3, string4, string5, string6, i);
                        pVar = a;
                    } else {
                        b.d("erase the old account.");
                        b(context);
                    }
                }
            }
        }
        return pVar;
    }

    public static synchronized p a(Context context, String str, String str2, String str3) {
        PackageInfo packageInfo;
        p pVar = null;
        synchronized (q.class) {
            TreeMap treeMap = new TreeMap();
            treeMap.put("devid", e.a(context));
            String str4 = c(context) ? "1000271" : str2;
            String str5 = c(context) ? "420100086271" : str3;
            String str6 = c(context) ? "com.xiaomi.xmsf" : str;
            treeMap.put("appid", str4);
            treeMap.put("apptoken", str5);
            try {
                packageInfo = context.getPackageManager().getPackageInfo(str6, 16384);
            } catch (Exception e) {
                b.a((Throwable) e);
                packageInfo = null;
            }
            treeMap.put("appversion", packageInfo != null ? String.valueOf(packageInfo.versionCode) : "0");
            treeMap.put("sdkversion", Integer.toString(27));
            treeMap.put("packagename", str6);
            treeMap.put("model", Build.MODEL);
            String a2 = d.a(e.c(context));
            String e2 = e.e(context);
            if (!TextUtils.isEmpty(e2)) {
                a2 = a2 + Constants.ACCEPT_TIME_SEPARATOR_SP + e2;
            }
            treeMap.put(Constants.EXTRA_KEY_IMEI_MD5, a2);
            treeMap.put("os", VERSION.RELEASE + "-" + VERSION.INCREMENTAL);
            int b2 = e.b();
            if (b2 >= 0) {
                treeMap.put("space_id", Integer.toString(b2));
            }
            String a3 = d.a(e.j(context));
            if (!TextUtils.isEmpty(a3)) {
                treeMap.put("mac_address", a3);
            }
            treeMap.put("android_id", e.b(context));
            com.xiaomi.channel.commonutils.network.b a4 = com.xiaomi.channel.commonutils.network.d.a(context, a(), treeMap);
            String str7 = "";
            if (a4 != null) {
                str7 = a4.a();
            }
            if (!TextUtils.isEmpty(str7)) {
                JSONObject jSONObject = new JSONObject(str7);
                if (jSONObject.getInt("code") == 0) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(Const.PARAM_DATA);
                    pVar = new p(jSONObject2.getString("userId") + "@xiaomi.com/an" + d.a(6), jSONObject2.getString("token"), jSONObject2.getString("ssecurity"), str4, str5, str6, com.xiaomi.channel.commonutils.misc.a.c());
                    a(context, pVar);
                    a = pVar;
                } else {
                    t.a(context, jSONObject.getInt("code"), jSONObject.optString(SocialConstants.PARAM_COMMENT));
                    b.a(str7);
                }
            }
        }
        return pVar;
    }

    public static String a() {
        if (com.xiaomi.channel.commonutils.misc.a.b()) {
            return Http.PROTOCOL_PREFIX + com.xiaomi.smack.b.c + ":9085/pass/register";
        }
        return "https://" + (com.xiaomi.channel.commonutils.misc.a.a() ? "sandbox.xmpush.xiaomi.com" : "register.xmpush.xiaomi.com") + "/pass/register";
    }

    public static void a(Context context, p pVar) {
        Editor edit = context.getSharedPreferences("mipush_account", 0).edit();
        edit.putString("uuid", pVar.a);
        edit.putString("security", pVar.c);
        edit.putString("token", pVar.b);
        edit.putString("app_id", pVar.d);
        edit.putString("package_name", pVar.f);
        edit.putString("app_token", pVar.e);
        edit.putString("device_id", e.h(context));
        edit.putInt("env_type", pVar.g);
        edit.commit();
        b();
    }

    public static void b() {
        if (b != null) {
            b.a();
        }
    }

    public static void b(Context context) {
        context.getSharedPreferences("mipush_account", 0).edit().clear().commit();
        a = null;
        b();
    }

    private static boolean c(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }
}
