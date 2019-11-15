package com.amap.api.col.sl;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.amap.api.col.sl.ac.b;
import com.amap.api.services.busline.BusStationQuery;
import com.amap.api.services.busline.BusStationResult;
import com.amap.api.services.busline.BusStationSearch.OnBusStationSearchListener;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IBusStationSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;

/* compiled from: BusStationSearchCore */
public class ba implements IBusStationSearch {
    private Context a;
    /* access modifiers changed from: private */
    public OnBusStationSearchListener b;
    private BusStationQuery c;
    private BusStationQuery d;
    private ArrayList<BusStationResult> e = new ArrayList<>();
    private int f;
    /* access modifiers changed from: private */
    public Handler g;

    public ba(Context context, BusStationQuery busStationQuery) {
        this.a = context.getApplicationContext();
        this.c = busStationQuery;
        this.g = ac.a();
    }

    public BusStationResult searchBusStation() throws AMapException {
        boolean z = true;
        try {
            aa.a(this.a);
            if (!(this.c != null && !t.a(this.c.getQueryString()))) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            if (!this.c.weakEquals(this.d)) {
                this.d = this.c.clone();
                this.f = 0;
                if (this.e != null) {
                    this.e.clear();
                }
            }
            if (this.f == 0) {
                BusStationResult busStationResult = (BusStationResult) new n(this.a, this.c).a();
                this.f = busStationResult.getPageCount();
                this.e = new ArrayList<>();
                for (int i = 0; i <= this.f; i++) {
                    this.e.add(null);
                }
                if (this.f <= 0) {
                    return busStationResult;
                }
                this.e.set(this.c.getPageNumber(), busStationResult);
                return busStationResult;
            }
            int pageNumber = this.c.getPageNumber();
            if (pageNumber > this.f || pageNumber < 0) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException("page out of range");
            }
            BusStationResult busStationResult2 = (BusStationResult) this.e.get(pageNumber);
            if (busStationResult2 != null) {
                return busStationResult2;
            }
            BusStationResult busStationResult3 = (BusStationResult) new n(this.a, this.c).a();
            this.e.set(this.c.getPageNumber(), busStationResult3);
            return busStationResult3;
        } catch (AMapException e2) {
            t.a(e2, "BusStationSearch", "searchBusStation");
            throw new AMapException(e2.getErrorMessage());
        } catch (Throwable th) {
            t.a(th, "BusStationSearch", "searchBusStation");
            return null;
        }
    }

    public void setOnBusStationSearchListener(OnBusStationSearchListener onBusStationSearchListener) {
        this.b = onBusStationSearchListener;
    }

    public void searchBusStationAsyn() {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    try {
                        obtainMessage.arg1 = 7;
                        b bVar = new b();
                        bVar.b = ba.this.b;
                        obtainMessage.obj = bVar;
                        BusStationResult searchBusStation = ba.this.searchBusStation();
                        obtainMessage.what = 1000;
                        bVar.a = searchBusStation;
                    } catch (AMapException e) {
                        obtainMessage.what = e.getErrorCode();
                    } finally {
                        ba.this.g.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setQuery(BusStationQuery busStationQuery) {
        if (!busStationQuery.weakEquals(this.c)) {
            this.c = busStationQuery;
        }
    }

    public BusStationQuery getQuery() {
        return this.c;
    }
}
