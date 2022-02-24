package com.ifengyu.intercom.g.d;

import com.google.gson.Gson;
import com.ifengyu.intercom.bean.PrivacyInfoBean;
import com.ifengyu.intercom.i.z;
import okhttp3.Response;

/* compiled from: PrivacyInfoCallback.java */
/* loaded from: classes2.dex */
public abstract class h extends b<PrivacyInfoBean> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.ifengyu.intercom.g.d.b
    public PrivacyInfoBean a(Response response, int i) throws Exception {
        String string = response.body().string();
        z.a("PrivacyInfoCallback", string);
        return (PrivacyInfoBean) new Gson().fromJson(string, (Class<Object>) PrivacyInfoBean.class);
    }
}
