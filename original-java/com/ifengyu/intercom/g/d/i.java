package com.ifengyu.intercom.g.d;

import com.google.gson.Gson;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.ifengyu.intercom.i.z;
import okhttp3.Response;
import org.json.JSONObject;

/* compiled from: SealUpdateInfoCallback.java */
/* loaded from: classes2.dex */
public abstract class i extends b<McuUpdateInfoModel> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.ifengyu.intercom.g.d.b
    public McuUpdateInfoModel a(Response response, int i) throws Exception {
        String string = response.body().string();
        z.c("SealUpdateInfoCallback", "jsonStr:" + string);
        JSONObject jSONObject = new JSONObject(string);
        if (jSONObject.getInt("errno") != 0) {
            return null;
        }
        return (McuUpdateInfoModel) new Gson().fromJson(jSONObject.getJSONObject("data").getJSONObject("seal").toString(), (Class<Object>) McuUpdateInfoModel.class);
    }
}
