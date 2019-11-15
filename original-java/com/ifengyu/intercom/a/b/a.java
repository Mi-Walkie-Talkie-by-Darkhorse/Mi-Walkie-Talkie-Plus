package com.ifengyu.intercom.a.b;

import com.mi.milinkforgame.sdk.data.Const;
import okhttp3.Response;
import org.json.JSONObject;

/* compiled from: AltitudeGetCallback */
public abstract class a extends b<Double> {
    /* renamed from: a */
    public Double b(Response response, int i) throws Exception {
        JSONObject jSONObject = new JSONObject(response.body().string());
        if ("success".equals(jSONObject.getString("msg"))) {
            return Double.valueOf(jSONObject.getJSONObject(Const.PARAM_DATA).getDouble("elevation"));
        }
        return null;
    }
}
