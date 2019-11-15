package com.xiaomi.mistatistic.sdk.data;

import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.BaseService;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CustomStringPropertyEvent */
public class h extends AbstractEvent {
    private String a;
    private String b;
    private String c;

    public h(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public String getCategory() {
        return this.a;
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(BaseService.CATEGORY, this.a);
        jSONObject.put("key", this.b);
        jSONObject.put("type", "property");
        jSONObject.put("value", this.c);
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.category = this.a;
        statEventPojo.key = this.b;
        statEventPojo.timeStamp = this.mTS;
        statEventPojo.value = this.c;
        statEventPojo.type = "property";
        return statEventPojo;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (!TextUtils.equals(this.a, hVar.a) || !TextUtils.equals(this.b, hVar.b) || !TextUtils.equals(this.c, hVar.c)) {
            return false;
        }
        return true;
    }
}
