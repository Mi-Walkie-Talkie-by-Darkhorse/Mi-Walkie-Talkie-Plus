package com.xiaomi.mistatistic.sdk.data;

import com.xiaomi.mipush.sdk.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: SessionEvent */
public class k extends AbstractEvent {
    private long a;
    private long b;
    private String c;

    public k(long j, long j2, String str) {
        this.a = j;
        this.b = j2;
        this.c = str;
    }

    public String getCategory() {
        return "mistat_session";
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("start", this.a);
        jSONObject.put("end", this.b);
        jSONObject.put("env", this.c);
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.category = getCategory();
        statEventPojo.timeStamp = this.mTS;
        statEventPojo.value = this.a + Constants.ACCEPT_TIME_SEPARATOR_SP + this.b;
        statEventPojo.extra = this.c;
        return statEventPojo;
    }
}
