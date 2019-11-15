package com.xiaomi.mistatistic.sdk.data;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PTEvent */
public class i extends AbstractEvent {
    private String a;
    private Long b;
    private long c;

    public i(String str, Long l) {
        this.a = str;
        this.c = l.longValue();
    }

    public void a(Long l) {
        this.b = l;
    }

    public long a() {
        return this.c;
    }

    public String b() {
        return this.a;
    }

    public String getCategory() {
        return "mistat_pt";
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", this.a);
        jSONObject.put("value", this.b);
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.category = getCategory();
        statEventPojo.timeStamp = this.mTS;
        statEventPojo.key = this.a;
        statEventPojo.value = Long.toString(this.b.longValue());
        return statEventPojo;
    }
}
