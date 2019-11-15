package com.xiaomi.mistatistic.sdk.data;

import com.tencent.open.SocialConstants;
import org.apache.http.cookie.ClientCookie;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PVEvent */
public class j extends AbstractEvent {
    private String a;
    private String b;

    public j(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public String getCategory() {
        return "mistat_pv";
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ClientCookie.PATH_ATTR, this.a);
        jSONObject.put(SocialConstants.PARAM_SOURCE, this.b);
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.category = getCategory();
        statEventPojo.timeStamp = this.mTS;
        statEventPojo.value = this.a;
        statEventPojo.extra = this.b;
        return statEventPojo;
    }
}
