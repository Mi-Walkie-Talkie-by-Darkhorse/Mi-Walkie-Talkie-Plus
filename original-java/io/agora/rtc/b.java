package io.agora.rtc;

import org.json.JSONObject;

/* compiled from: PublisherConfiguration */
public class b {
    private JSONObject a;

    public boolean a() {
        return this.a != null;
    }

    public String b() {
        if (a()) {
            return this.a.toString();
        }
        return null;
    }
}
