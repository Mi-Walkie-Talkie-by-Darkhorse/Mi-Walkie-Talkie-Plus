package com.xiaomi.mistatistic.sdk.data;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CustomEvent */
public class d extends AbstractEvent {
    private String a = null;

    public d(String str) {
        this.a = str;
    }

    public String getCategory() {
        return "mistat_extra";
    }

    public JSONObject valueToJSon() throws JSONException {
        return null;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.category = getCategory();
        statEventPojo.timeStamp = this.mTS;
        statEventPojo.value = this.a;
        return statEventPojo;
    }
}
