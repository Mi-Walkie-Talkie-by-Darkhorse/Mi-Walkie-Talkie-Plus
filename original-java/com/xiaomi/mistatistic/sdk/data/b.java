package com.xiaomi.mistatistic.sdk.data;

import com.xiaomi.mistatistic.sdk.BaseService;
import com.xiaomi.mistatistic.sdk.controller.h;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CustomAbTestEvent */
public class b extends AbstractEvent {
    protected String a;
    private String b;
    private String c;
    private String d;
    private Map<String, String> e;

    public b(String str, String str2, String str3, long j, Map<String, String> map) {
        this.b = str;
        this.c = str3;
        this.d = str2;
        this.a = String.valueOf(j);
        if (map == null) {
            this.e = null;
        } else {
            this.e = new HashMap(map);
        }
    }

    public b(String str, String str2, String str3, String str4, Map<String, String> map) {
        this.b = str;
        this.c = str3;
        this.d = str2;
        this.a = str4;
        if (map == null) {
            this.e = null;
        } else {
            this.e = new HashMap(map);
        }
    }

    public String getCategory() {
        return this.b;
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(BaseService.CATEGORY, this.b);
        jSONObject.put("key", this.c);
        jSONObject.put("type", this.d);
        jSONObject.put("value", this.a);
        if (this.e != null) {
            jSONObject.put("params", new JSONObject(this.e));
        }
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.category = this.b;
        statEventPojo.key = this.c;
        statEventPojo.timeStamp = this.mTS;
        statEventPojo.type = this.d;
        statEventPojo.value = this.a;
        statEventPojo.extra = a(this.e);
        return statEventPojo;
    }

    private String a(Map<String, String> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    for (String str : map.keySet()) {
                        jSONObject.put(str, map.get(str));
                    }
                    return jSONObject.toString();
                }
            } catch (JSONException e2) {
                h.a("json error", (Throwable) e2);
            }
        }
        return null;
    }
}
