package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IDistanceSearch;
import com.amap.api.services.route.DistanceResult;
import com.amap.api.services.route.DistanceSearch.DistanceQuery;
import com.amap.api.services.route.DistanceSearch.OnDistanceSearchListener;

/* compiled from: DistanceSearchCore */
public class bc implements IDistanceSearch {
    private static final String a = bc.class.getSimpleName();
    private Context b;
    /* access modifiers changed from: private */
    public Handler c = ac.a();
    /* access modifiers changed from: private */
    public OnDistanceSearchListener d;

    public bc(Context context) {
        this.b = context.getApplicationContext();
    }

    public DistanceResult calculateRouteDistance(DistanceQuery distanceQuery) throws AMapException {
        boolean z = true;
        try {
            aa.a(this.b);
            if (distanceQuery == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            if (!(distanceQuery.getDestination() == null || distanceQuery.getOrigins() == null || distanceQuery.getOrigins().size() <= 0)) {
                z = false;
            }
            if (z) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            DistanceQuery clone = distanceQuery.clone();
            DistanceResult distanceResult = (DistanceResult) new u(this.b, clone).a();
            if (distanceResult != null) {
                distanceResult.setDistanceQuery(clone);
            }
            return distanceResult;
        } catch (AMapException e) {
            t.a(e, a, "calculateWalkRoute");
            throw e;
        }
    }

    public void calculateRouteDistanceAsyn(final DistanceQuery distanceQuery) {
        as.a().a(new Runnable() {
            public final void run() {
                Message obtainMessage = ac.a().obtainMessage();
                obtainMessage.what = 400;
                obtainMessage.arg1 = 16;
                Bundle bundle = new Bundle();
                DistanceResult distanceResult = null;
                try {
                    distanceResult = bc.this.calculateRouteDistance(distanceQuery);
                    bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                } catch (AMapException e) {
                    bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                } finally {
                    obtainMessage.obj = bc.this.d;
                    bundle.putParcelable("result", distanceResult);
                    obtainMessage.setData(bundle);
                    bc.this.c.sendMessage(obtainMessage);
                }
            }
        });
    }

    public void setDistanceSearchListener(OnDistanceSearchListener onDistanceSearchListener) {
        this.d = onDistanceSearchListener;
    }
}
