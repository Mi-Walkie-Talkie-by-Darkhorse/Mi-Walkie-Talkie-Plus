package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.ITrafficSearch;
import com.amap.api.services.traffic.CircleTrafficQuery;
import com.amap.api.services.traffic.RoadTrafficQuery;
import com.amap.api.services.traffic.TrafficSearch.OnTrafficSearchListener;
import com.amap.api.services.traffic.TrafficStatusResult;
import org.apache.http.HttpStatus;

/* compiled from: TrafficSearchCore */
public class bl implements ITrafficSearch {
    private static final String a = bl.class.getSimpleName();
    /* access modifiers changed from: private */
    public OnTrafficSearchListener b;
    private Context c;
    /* access modifiers changed from: private */
    public Handler d = ac.a();

    public bl(Context context) {
        this.c = context.getApplicationContext();
    }

    public void setTrafficSearchListener(OnTrafficSearchListener onTrafficSearchListener) {
        this.b = onTrafficSearchListener;
    }

    public TrafficStatusResult loadTrafficByRoad(RoadTrafficQuery roadTrafficQuery) throws AMapException {
        try {
            aa.a(this.c);
            if (roadTrafficQuery == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            return (TrafficStatusResult) new ao(this.c, roadTrafficQuery.clone()).a();
        } catch (AMapException e) {
            t.a(e, a, "loadTrafficByRoad");
            throw e;
        }
    }

    public void loadTrafficByRoadAsyn(final RoadTrafficQuery roadTrafficQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    obtainMessage.what = 300;
                    obtainMessage.arg1 = 15;
                    Bundle bundle = new Bundle();
                    TrafficStatusResult trafficStatusResult = null;
                    try {
                        trafficStatusResult = bl.this.loadTrafficByRoad(roadTrafficQuery);
                        bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                    } catch (AMapException e) {
                        bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                    } finally {
                        obtainMessage.obj = bl.this.b;
                        bundle.putParcelable("result", trafficStatusResult);
                        obtainMessage.setData(bundle);
                        bl.this.d.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, a, "loadTrafficByRoadAsyn");
        }
    }

    public TrafficStatusResult loadTrafficByCircle(CircleTrafficQuery circleTrafficQuery) throws AMapException {
        try {
            aa.a(this.c);
            if (circleTrafficQuery == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            return (TrafficStatusResult) new o(this.c, circleTrafficQuery.clone()).a();
        } catch (AMapException e) {
            t.a(e, a, "loadTrafficByCircle");
            throw e;
        }
    }

    public void loadTrafficByCircleAsyn(final CircleTrafficQuery circleTrafficQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    obtainMessage.what = HttpStatus.SC_MOVED_PERMANENTLY;
                    obtainMessage.arg1 = 15;
                    Bundle bundle = new Bundle();
                    TrafficStatusResult trafficStatusResult = null;
                    try {
                        trafficStatusResult = bl.this.loadTrafficByCircle(circleTrafficQuery);
                        bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                    } catch (AMapException e) {
                        bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                    } finally {
                        obtainMessage.obj = bl.this.b;
                        bundle.putParcelable("result", trafficStatusResult);
                        obtainMessage.setData(bundle);
                        bl.this.d.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, a, "loadTrafficByCircleAsyn");
        }
    }
}
