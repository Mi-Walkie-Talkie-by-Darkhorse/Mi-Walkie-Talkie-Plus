package com.ifengyu.intercom.a.b;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.ifengyu.intercom.b.a;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.n;
import com.ifengyu.intercom.b.t;
import com.ifengyu.intercom.bean.AdModel;
import com.ifengyu.intercom.bean.SplashResult;
import java.io.File;
import java.io.Serializable;
import okhttp3.Response;

/* compiled from: SplashCallback */
public abstract class i extends b<AdModel> {
    /* renamed from: a */
    public AdModel b(Response response, int i) throws Exception {
        SplashResult splashResult = (SplashResult) new Gson().fromJson(response.body().string(), SplashResult.class);
        a a = a.a(n.a(ad.a(), "adcache"));
        if (splashResult.count > 0) {
            AdModel adModel = (AdModel) splashResult.results.get(0);
            if (!adModel.isPublish) {
                a.a("admodel", (Serializable) adModel);
                return adModel;
            }
            AdModel adModel2 = (AdModel) a.b("admodel");
            if (adModel2 == null) {
                adModel.isGoToDownload = true;
                return adModel;
            } else if (adModel2.id != adModel.id) {
                adModel.isGoToDownload = true;
                return adModel;
            } else if (adModel2.getUpdateTime() != adModel.getUpdateTime()) {
                adModel.isGoToDownload = true;
                return adModel;
            } else if (TextUtils.isEmpty(adModel2.imagePath)) {
                adModel.isGoToDownload = true;
                return adModel;
            } else {
                File file = new File(adModel2.imagePath);
                if (!file.exists()) {
                    adModel.isGoToDownload = true;
                    return adModel;
                } else if (TextUtils.isEmpty(adModel2.md5)) {
                    adModel.isGoToDownload = true;
                    return adModel;
                } else if (adModel2.md5.equals(t.b(file.getAbsolutePath()))) {
                    return adModel;
                } else {
                    adModel.isGoToDownload = true;
                    return adModel;
                }
            }
        } else {
            a.c("admodel");
            return null;
        }
    }
}
