package com.ifengyu.intercom.network;

import com.amap.api.services.district.DistrictSearchQuery;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.b.s;
import com.mi.milinkforgame.sdk.data.Const;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ParseJson */
public class c {
    public static boolean a(String str) {
        try {
            if (a(new JSONObject(str))) {
                return true;
            }
        } catch (JSONException e) {
            ThrowableExtension.printStackTrace(e);
        }
        return false;
    }

    private static boolean a(JSONObject jSONObject) {
        try {
            if (jSONObject.getInt("errno") == 0) {
                return true;
            }
        } catch (JSONException e) {
            s.e("ParseJson", e.getMessage());
        }
        return false;
    }

    public static boolean a(String str, ArrayList<HashMap<String, String>> arrayList) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if ("success".equals((String) jSONObject.get("msg"))) {
                JSONArray jSONArray = jSONObject.getJSONObject(Const.PARAM_DATA).getJSONArray("info");
                for (int i = 0; i < jSONArray.length(); i++) {
                    HashMap hashMap = new HashMap();
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    hashMap.put(HttpPostBodyUtil.NAME, jSONObject2.getString(HttpPostBodyUtil.NAME));
                    hashMap.put(DistrictSearchQuery.KEYWORDS_DISTRICT, jSONObject2.getString(DistrictSearchQuery.KEYWORDS_DISTRICT));
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("location");
                    hashMap.put("lat", jSONObject3.getString("lat"));
                    hashMap.put("lng", jSONObject3.getString("lng"));
                    if (!(jSONObject3.getString("lat") == null || jSONObject3.getString("lng") == null)) {
                        arrayList.add(hashMap);
                    }
                }
                return true;
            }
        } catch (JSONException e) {
            ThrowableExtension.printStackTrace(e);
        }
        return false;
    }

    public static boolean a(HashMap<String, String> hashMap, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = jSONObject.getInt("errno");
            hashMap.put("errno", String.valueOf(i));
            if (i == 0) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(Const.PARAM_DATA).getJSONObject("mcu");
                hashMap.put("versionCode", jSONObject2.getString("versionCode"));
                hashMap.put("versionName", jSONObject2.getString("versionName"));
                hashMap.put("info", jSONObject2.getString("info"));
                hashMap.put(SocialConstants.PARAM_SOURCE, jSONObject2.getString(SocialConstants.PARAM_SOURCE));
                hashMap.put("lang", jSONObject2.getString("lang"));
                hashMap.put("md5", jSONObject2.getString("MD5"));
                return true;
            }
        } catch (JSONException e) {
            s.e("ParseJson", e.getMessage());
        }
        return false;
    }

    public static boolean b(HashMap<String, String> hashMap, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            s.c("ParseJson", "APP升级信息：" + str.toString());
            if ("success".equals(jSONObject.getString("msg"))) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(Const.PARAM_DATA).getJSONObject("android");
                hashMap.put("versionCode", jSONObject2.getString("versionCode"));
                hashMap.put("versionName", jSONObject2.getString("versionName"));
                hashMap.put("info", jSONObject2.getString("info"));
                hashMap.put(SocialConstants.PARAM_SOURCE, jSONObject2.getString(SocialConstants.PARAM_SOURCE));
                return true;
            }
        } catch (JSONException e) {
            s.e("ParseJson", e.getMessage());
        }
        return false;
    }
}
