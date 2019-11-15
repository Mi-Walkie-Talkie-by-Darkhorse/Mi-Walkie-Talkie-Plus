package com.ifengyu.intercom.a.b;

import com.google.gson.Gson;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.bean.McuUpdateInfoModel;
import com.mi.milinkforgame.sdk.data.Const;
import okhttp3.Response;
import org.json.JSONObject;

/* compiled from: SharkUpdateInfoCallback */
public abstract class h extends b<McuUpdateInfoModel> {
    /* renamed from: a */
    public McuUpdateInfoModel b(Response response, int i) throws Exception {
        String string = response.body().string();
        s.c("SealUpdateInfoCallback", "jsonStr:" + string);
        JSONObject jSONObject = new JSONObject(string);
        if (jSONObject.getInt("errno") != 0) {
            return null;
        }
        return (McuUpdateInfoModel) new Gson().fromJson(jSONObject.getJSONObject(Const.PARAM_DATA).getJSONObject("shark").toString(), McuUpdateInfoModel.class);
    }
}
