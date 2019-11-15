package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.col.sl.ac.k;
import com.amap.api.col.sl.ac.l;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IWeatherSearch;
import com.amap.api.services.weather.LocalWeatherForecast;
import com.amap.api.services.weather.LocalWeatherForecastResult;
import com.amap.api.services.weather.LocalWeatherLive;
import com.amap.api.services.weather.LocalWeatherLiveResult;
import com.amap.api.services.weather.WeatherSearch.OnWeatherSearchListener;
import com.amap.api.services.weather.WeatherSearchQuery;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: WeatherSearchCore */
public class bm implements IWeatherSearch {
    private Context a;
    /* access modifiers changed from: private */
    public WeatherSearchQuery b;
    /* access modifiers changed from: private */
    public OnWeatherSearchListener c;
    /* access modifiers changed from: private */
    public LocalWeatherLiveResult d;
    /* access modifiers changed from: private */
    public LocalWeatherForecastResult e;
    /* access modifiers changed from: private */
    public Handler f = null;

    static /* synthetic */ LocalWeatherLiveResult b(bm bmVar) throws AMapException {
        aa.a(bmVar.a);
        if (bmVar.b == null) {
            throw new AMapException("无效的参数 - IllegalArgumentException");
        }
        aw awVar = new aw(bmVar.a, bmVar.b);
        return LocalWeatherLiveResult.createPagedResult((WeatherSearchQuery) awVar.g(), (LocalWeatherLive) awVar.a());
    }

    static /* synthetic */ LocalWeatherForecastResult f(bm bmVar) throws AMapException {
        aa.a(bmVar.a);
        if (bmVar.b == null) {
            throw new AMapException("无效的参数 - IllegalArgumentException");
        }
        av avVar = new av(bmVar.a, bmVar.b);
        return LocalWeatherForecastResult.createPagedResult((WeatherSearchQuery) avVar.g(), (LocalWeatherForecast) avVar.a());
    }

    public bm(Context context) {
        this.a = context.getApplicationContext();
        this.f = ac.a();
    }

    public WeatherSearchQuery getQuery() {
        return this.b;
    }

    public void setQuery(WeatherSearchQuery weatherSearchQuery) {
        this.b = weatherSearchQuery;
    }

    public void searchWeatherAsyn() {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    obtainMessage.arg1 = 13;
                    Bundle bundle = new Bundle();
                    if (bm.this.b == null) {
                        try {
                            throw new AMapException("无效的参数 - IllegalArgumentException");
                        } catch (AMapException e) {
                            t.a(e, "WeatherSearch", "searchWeatherAsyn");
                        }
                    } else if (bm.this.b.getType() == 1) {
                        try {
                            bm.this.d = bm.b(bm.this);
                            bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                        } catch (AMapException e2) {
                            bundle.putInt(MyLocationStyle.ERROR_CODE, e2.getErrorCode());
                            t.a(e2, "WeatherSearch", "searchWeatherAsyn");
                        } catch (Throwable th) {
                            t.a(th, "WeatherSearch", "searchWeatherAnsyThrowable");
                        } finally {
                            l lVar = new l();
                            obtainMessage.what = 1301;
                            lVar.b = bm.this.c;
                            lVar.a = bm.this.d;
                            obtainMessage.obj = lVar;
                            obtainMessage.setData(bundle);
                            bm.this.f.sendMessage(obtainMessage);
                        }
                    } else if (bm.this.b.getType() == 2) {
                        try {
                            bm.this.e = bm.f(bm.this);
                            bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                        } catch (AMapException e3) {
                            bundle.putInt(MyLocationStyle.ERROR_CODE, e3.getErrorCode());
                            t.a(e3, "WeatherSearch", "searchWeatherAsyn");
                        } catch (Throwable th2) {
                            t.a(th2, "WeatherSearch", "searchWeatherAnsyThrowable");
                        } finally {
                            k kVar = new k();
                            obtainMessage.what = 1302;
                            kVar.b = bm.this.c;
                            kVar.a = bm.this.e;
                            obtainMessage.obj = kVar;
                            obtainMessage.setData(bundle);
                            bm.this.f.sendMessage(obtainMessage);
                        }
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setOnWeatherSearchListener(OnWeatherSearchListener onWeatherSearchListener) {
        this.c = onWeatherSearchListener;
    }
}
