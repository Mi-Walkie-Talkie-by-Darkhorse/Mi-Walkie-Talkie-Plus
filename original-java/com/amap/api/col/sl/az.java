package com.amap.api.col.sl;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.amap.api.col.sl.ac.a;
import com.amap.api.services.busline.BusLineQuery;
import com.amap.api.services.busline.BusLineResult;
import com.amap.api.services.busline.BusLineSearch.OnBusLineSearchListener;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IBusLineSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;

/* compiled from: BusLineSearchCore */
public class az implements IBusLineSearch {
    private Context a;
    /* access modifiers changed from: private */
    public OnBusLineSearchListener b;
    private BusLineQuery c;
    private BusLineQuery d;
    private int e;
    private ArrayList<BusLineResult> f = new ArrayList<>();
    /* access modifiers changed from: private */
    public Handler g = null;

    public az(Context context, BusLineQuery busLineQuery) {
        this.a = context.getApplicationContext();
        this.c = busLineQuery;
        if (busLineQuery != null) {
            this.d = busLineQuery.clone();
        }
        this.g = ac.a();
    }

    public BusLineResult searchBusLine() throws AMapException {
        try {
            aa.a(this.a);
            if (this.d != null) {
                if (this.c != null && !t.a(this.c.getQueryString())) {
                    if (!this.c.weakEquals(this.d)) {
                        this.d = this.c.clone();
                        this.e = 0;
                        if (this.f != null) {
                            this.f.clear();
                        }
                    }
                    if (this.e == 0) {
                        BusLineResult busLineResult = (BusLineResult) new n(this.a, this.c.clone()).a();
                        this.f = new ArrayList<>();
                        for (int i = 0; i < this.e; i++) {
                            this.f.add(null);
                        }
                        if (this.e < 0 || !a(this.c.getPageNumber())) {
                            return busLineResult;
                        }
                        this.f.set(this.c.getPageNumber(), busLineResult);
                        return busLineResult;
                    }
                    int pageNumber = this.c.getPageNumber();
                    if (!a(pageNumber)) {
                        throw new IllegalArgumentException("page out of range");
                    }
                    BusLineResult busLineResult2 = (BusLineResult) this.f.get(pageNumber);
                    if (busLineResult2 != null) {
                        return busLineResult2;
                    }
                    BusLineResult busLineResult3 = (BusLineResult) new n(this.a, this.c).a();
                    this.f.set(this.c.getPageNumber(), busLineResult3);
                    return busLineResult3;
                }
            }
            throw new AMapException("无效的参数 - IllegalArgumentException");
        } catch (AMapException e2) {
            t.a(e2, "BusLineSearch", "searchBusLine");
            throw new AMapException(e2.getErrorMessage());
        }
    }

    private boolean a(int i) {
        return i < this.e && i >= 0;
    }

    public void setOnBusLineSearchListener(OnBusLineSearchListener onBusLineSearchListener) {
        this.b = onBusLineSearchListener;
    }

    public void searchBusLineAsyn() {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    try {
                        obtainMessage.arg1 = 3;
                        obtainMessage.what = 1000;
                        a aVar = new a();
                        obtainMessage.obj = aVar;
                        aVar.b = az.this.b;
                        aVar.a = az.this.searchBusLine();
                    } catch (AMapException e) {
                        obtainMessage.what = e.getErrorCode();
                    } finally {
                        az.this.g.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setQuery(BusLineQuery busLineQuery) {
        if (!this.c.weakEquals(busLineQuery)) {
            this.c = busLineQuery;
            this.d = busLineQuery.clone();
        }
    }

    public BusLineQuery getQuery() {
        return this.c;
    }
}
