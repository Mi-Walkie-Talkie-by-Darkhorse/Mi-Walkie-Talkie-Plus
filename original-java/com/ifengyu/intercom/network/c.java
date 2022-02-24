package com.ifengyu.intercom.network;

import com.ifengyu.intercom.i.z;
import com.tencent.open.SocialConstants;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ParseJson.java */
/* loaded from: classes2.dex */
public class c {
    public static boolean a(String str) {
        try {
            return a(new JSONObject(str));
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean b(HashMap<String, String> hashMap, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = jSONObject.getInt("errno");
            hashMap.put("errno", String.valueOf(i));
            if (i != 0) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("data").getJSONObject("mcu");
            hashMap.put("versionCode", jSONObject2.getString("versionCode"));
            hashMap.put("versionName", jSONObject2.getString("versionName"));
            hashMap.put(XiaomiOAuthConstants.EXTRA_INFO, jSONObject2.getString(XiaomiOAuthConstants.EXTRA_INFO));
            hashMap.put(SocialConstants.PARAM_SOURCE, jSONObject2.getString(SocialConstants.PARAM_SOURCE));
            hashMap.put("lang", jSONObject2.getString("lang"));
            hashMap.put("md5", jSONObject2.getString("MD5"));
            return true;
        } catch (JSONException e) {
            z.b("ParseJson", e.getMessage());
            return false;
        }
    }

    private static boolean a(JSONObject jSONObject) {
        try {
            return jSONObject.getInt("errno") == 0;
        } catch (JSONException e) {
            z.b("ParseJson", e.getMessage());
            return false;
        }
    }

    public static boolean a(String str, ArrayList<HashMap<String, String>> arrayList) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if ("success".equals((String) jSONObject.get(SocialConstants.PARAM_SEND_MSG))) {
                JSONArray jSONArray = jSONObject.getJSONObject("data").getJSONArray(XiaomiOAuthConstants.EXTRA_INFO);
                for (int i = 0; i < jSONArray.length(); i++) {
                    HashMap<String, String> hashMap = new HashMap<>();
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    hashMap.put("name", jSONObject2.getString("name"));
                    hashMap.put("district", jSONObject2.getString("district"));
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("location");
                    hashMap.put(com.umeng.analytics.pro.c.C, jSONObject3.getString(com.umeng.analytics.pro.c.C));
                    hashMap.put(com.umeng.analytics.pro.c.D, jSONObject3.getString(com.umeng.analytics.pro.c.D));
                    if (!(jSONObject3.getString(com.umeng.analytics.pro.c.C) == null || jSONObject3.getString(com.umeng.analytics.pro.c.D) == null)) {
                        arrayList.add(hashMap);
                    }
                }
                return true;
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static boolean a(HashMap<String, String> hashMap, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            z.c("ParseJson", "APP升级信息：" + str.toString());
            if (!"success".equals(jSONObject.getString(SocialConstants.PARAM_SEND_MSG))) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("data").getJSONObject("android");
            hashMap.put("versionCode", jSONObject2.getString("versionCode"));
            hashMap.put("versionName", jSONObject2.getString("versionName"));
            hashMap.put(XiaomiOAuthConstants.EXTRA_INFO, jSONObject2.getString(XiaomiOAuthConstants.EXTRA_INFO));
            hashMap.put(SocialConstants.PARAM_SOURCE, jSONObject2.getString(SocialConstants.PARAM_SOURCE));
            return true;
        } catch (JSONException e) {
            z.b("ParseJson", e.getMessage());
            return false;
        }
    }
}
