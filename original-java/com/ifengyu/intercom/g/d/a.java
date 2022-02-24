package com.ifengyu.intercom.g.d;

import com.tencent.open.SocialConstants;
import okhttp3.Response;
import org.json.JSONObject;

/* compiled from: AltitudeGetCallback.java */
/* loaded from: classes2.dex */
public abstract class a extends b<Double> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.ifengyu.intercom.g.d.b
    public Double a(Response response, int i) throws Exception {
        JSONObject jSONObject = new JSONObject(response.body().string());
        if ("success".equals(jSONObject.getString(SocialConstants.PARAM_SEND_MSG))) {
            return Double.valueOf(jSONObject.getJSONObject("data").getDouble("elevation"));
        }
        return null;
    }
}
