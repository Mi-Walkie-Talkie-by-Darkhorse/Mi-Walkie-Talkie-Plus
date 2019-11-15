package com.xiaomi.mistatistic.sdk.data;

import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.BaseService;
import com.xiaomi.mistatistic.sdk.controller.h;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AbstractEvent {
    protected long mTS = System.currentTimeMillis();

    public abstract String getCategory();

    public abstract StatEventPojo toPojo();

    public abstract JSONObject valueToJSon() throws JSONException;

    public void setTS(long j) {
        this.mTS = j;
    }

    private static Map<String, String> jsonToMap(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            hashMap.put(str, jSONObject.optString(str));
        }
        return hashMap;
    }

    public static AbstractEvent jsonToEvent(String str) {
        Map map;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(BaseService.CATEGORY);
            String optString2 = jSONObject.optString("key");
            String optString3 = jSONObject.optString("type");
            String optString4 = jSONObject.optString("value");
            JSONObject optJSONObject = jSONObject.optJSONObject("params");
            if (optJSONObject != null) {
                map = jsonToMap(optJSONObject);
            } else {
                map = null;
            }
            if (TextUtils.equals(optString3, "count")) {
                return new c(optString, optString2, (long) Integer.parseInt(optString4), map);
            }
            if (TextUtils.equals(optString3, "event")) {
                return new e(optString, optString2, map);
            }
            if (TextUtils.equals(optString3, "numeric")) {
                return new g(optString, optString2, (long) Integer.parseInt(optString4));
            }
            if (TextUtils.equals(optString3, "property")) {
                return new h(optString, optString2, optString4);
            }
            return null;
        } catch (JSONException e) {
            h.a("", (Throwable) e);
            return null;
        }
    }
}
