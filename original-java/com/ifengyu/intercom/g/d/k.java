package com.ifengyu.intercom.g.d;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.ifengyu.intercom.bean.AdModel;
import com.ifengyu.intercom.bean.SplashResult;
import com.ifengyu.intercom.i.a0;
import com.ifengyu.intercom.i.g;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.r;
import java.io.File;
import okhttp3.Response;

/* compiled from: SplashCallback.java */
/* loaded from: classes2.dex */
public abstract class k extends b<AdModel> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.ifengyu.intercom.g.d.b
    public AdModel a(Response response, int i) throws Exception {
        SplashResult splashResult = (SplashResult) new Gson().fromJson(response.body().string(), (Class<Object>) SplashResult.class);
        g a2 = g.a(r.a(k0.a(), "adcache"));
        if (splashResult.count > 0) {
            AdModel adModel = splashResult.results.get(0);
            if (!adModel.isPublish) {
                a2.a("admodel", adModel);
                return adModel;
            }
            AdModel adModel2 = (AdModel) a2.b("admodel");
            if (adModel2 == null) {
                adModel.isGoToDownload = true;
            } else if (adModel2.id != adModel.id) {
                adModel.isGoToDownload = true;
            } else if (adModel2.getUpdateTime() != adModel.getUpdateTime()) {
                adModel.isGoToDownload = true;
            } else if (TextUtils.isEmpty(adModel2.imagePath)) {
                adModel.isGoToDownload = true;
            } else {
                File file = new File(adModel2.imagePath);
                if (!file.exists()) {
                    adModel.isGoToDownload = true;
                } else if (TextUtils.isEmpty(adModel2.md5)) {
                    adModel.isGoToDownload = true;
                } else if (!adModel2.md5.equals(a0.a(file.getAbsolutePath()))) {
                    adModel.isGoToDownload = true;
                }
            }
            return adModel;
        }
        a2.c("admodel");
        return null;
    }
}
