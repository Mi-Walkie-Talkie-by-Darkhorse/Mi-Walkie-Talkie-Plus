package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.col.sl.ac.j;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IRoutePOISearch;
import com.amap.api.services.routepoisearch.RoutePOISearch.OnRoutePOISearchListener;
import com.amap.api.services.routepoisearch.RoutePOISearchQuery;
import com.amap.api.services.routepoisearch.RoutePOISearchResult;

/* compiled from: RoutePOISearchCore */
public class bi implements IRoutePOISearch {
    private RoutePOISearchQuery a;
    private Context b;
    /* access modifiers changed from: private */
    public OnRoutePOISearchListener c;
    /* access modifiers changed from: private */
    public Handler d = null;

    public bi(Context context, RoutePOISearchQuery routePOISearchQuery) {
        this.b = context;
        this.a = routePOISearchQuery;
        this.d = ac.a();
    }

    public void setRoutePOISearchListener(OnRoutePOISearchListener onRoutePOISearchListener) {
        this.c = onRoutePOISearchListener;
    }

    public void searchRoutePOIAsyn() {
        as.a().a(new Runnable() {
            public final void run() {
                Message obtainMessage = bi.this.d.obtainMessage();
                obtainMessage.arg1 = 14;
                Bundle bundle = new Bundle();
                RoutePOISearchResult routePOISearchResult = null;
                try {
                    routePOISearchResult = bi.this.searchRoutePOI();
                    bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                } catch (AMapException e) {
                    bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                } finally {
                    j jVar = new j();
                    jVar.b = bi.this.c;
                    jVar.a = routePOISearchResult;
                    obtainMessage.obj = jVar;
                    obtainMessage.setData(bundle);
                    bi.this.d.sendMessage(obtainMessage);
                }
            }
        });
    }

    public void setQuery(RoutePOISearchQuery routePOISearchQuery) {
        this.a = routePOISearchQuery;
    }

    public RoutePOISearchQuery getQuery() {
        return this.a;
    }

    public RoutePOISearchResult searchRoutePOI() throws AMapException {
        boolean z = false;
        try {
            aa.a(this.b);
            if (this.a != null) {
                if (!(this.a.getSearchType() == null || (this.a.getFrom() == null && this.a.getTo() == null && this.a.getPolylines() == null))) {
                    z = true;
                }
            }
            if (!z) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            return (RoutePOISearchResult) new ap(this.b, this.a.clone()).a();
        } catch (AMapException e) {
            t.a(e, "RoutePOISearchCore", "searchRoutePOI");
            throw e;
        }
    }
}
