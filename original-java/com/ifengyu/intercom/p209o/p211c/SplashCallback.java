package com.ifengyu.intercom.p209o.p211c;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.ifengyu.intercom.bean.AdModel;
import com.ifengyu.intercom.bean.SplashResult;
import com.ifengyu.intercom.p214p.ACache;
import com.ifengyu.intercom.p214p.MD5Util;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.library.utils.UIUtils;
import java.io.File;
import okhttp3.Response;

/* renamed from: com.ifengyu.intercom.o.c.d */
/* loaded from: classes2.dex */
public abstract class SplashCallback extends AbstractC4132a<AdModel> {
    @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
    /* renamed from: h */
    public AdModel mo11336f(Response response, int i) throws Exception {
        SplashResult splashResult = (SplashResult) new Gson().fromJson(response.body().string(), (Class<Object>) SplashResult.class);
        ACache m11133b = ACache.m11133b(C4970j.m8666d(UIUtils.m8613e(), "adcache"));
        if (splashResult.count > 0) {
            AdModel adModel = splashResult.results.get(0);
            if (!adModel.isPublish) {
                m11133b.m11128g("admodel", adModel);
                return adModel;
            }
            AdModel adModel2 = (AdModel) m11133b.m11130e("admodel");
            if (adModel2 == null) {
                adModel.isGoToDownload = true;
            } else if (adModel2.f12115id != adModel.f12115id) {
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
                } else if (!adModel2.md5.equals(MD5Util.m11041a(file.getAbsolutePath()))) {
                    adModel.isGoToDownload = true;
                }
            }
            return adModel;
        }
        m11133b.m11124k("admodel");
        return null;
    }
}
