package com.amap.api.col.sl;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.amap.api.col.sl.ac.e;
import com.amap.api.col.sl.ac.i;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.geocoder.GeocodeAddress;
import com.amap.api.services.geocoder.GeocodeQuery;
import com.amap.api.services.geocoder.GeocodeResult;
import com.amap.api.services.geocoder.GeocodeSearch.OnGeocodeSearchListener;
import com.amap.api.services.geocoder.RegeocodeAddress;
import com.amap.api.services.geocoder.RegeocodeQuery;
import com.amap.api.services.geocoder.RegeocodeResult;
import com.amap.api.services.interfaces.IGeocodeSearch;
import java.util.List;
import org.apache.http.HttpStatus;

/* compiled from: GeocodeSearchCore */
public final class be implements IGeocodeSearch {
    private Context a;
    /* access modifiers changed from: private */
    public OnGeocodeSearchListener b;
    /* access modifiers changed from: private */
    public Handler c = ac.a();

    public be(Context context) {
        this.a = context.getApplicationContext();
    }

    public final RegeocodeAddress getFromLocation(RegeocodeQuery regeocodeQuery) throws AMapException {
        boolean z = false;
        try {
            aa.a(this.a);
            if (regeocodeQuery != null) {
                if (!(regeocodeQuery.getPoint() == null || regeocodeQuery.getLatLonType() == null)) {
                    z = true;
                }
            }
            if (z) {
                return (RegeocodeAddress) new am(this.a, regeocodeQuery).a();
            }
            throw new AMapException("无效的参数 - IllegalArgumentException");
        } catch (AMapException e) {
            t.a(e, "GeocodeSearch", "getFromLocationAsyn");
            throw e;
        }
    }

    public final List<GeocodeAddress> getFromLocationName(GeocodeQuery geocodeQuery) throws AMapException {
        try {
            aa.a(this.a);
            if (geocodeQuery != null) {
                return (List) new x(this.a, geocodeQuery).a();
            }
            throw new AMapException("无效的参数 - IllegalArgumentException");
        } catch (AMapException e) {
            t.a(e, "GeocodeSearch", "getFromLocationName");
            throw e;
        }
    }

    public final void setOnGeocodeSearchListener(OnGeocodeSearchListener onGeocodeSearchListener) {
        this.b = onGeocodeSearchListener;
    }

    public final void getFromLocationAsyn(final RegeocodeQuery regeocodeQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    try {
                        obtainMessage.arg1 = 2;
                        obtainMessage.what = HttpStatus.SC_CREATED;
                        i iVar = new i();
                        iVar.b = be.this.b;
                        obtainMessage.obj = iVar;
                        iVar.a = new RegeocodeResult(regeocodeQuery, be.this.getFromLocation(regeocodeQuery));
                        obtainMessage.arg2 = 1000;
                    } catch (AMapException e) {
                        obtainMessage.arg2 = e.getErrorCode();
                    } finally {
                        be.this.c.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "GeocodeSearch", "getFromLocationAsyn_threadcreate");
        }
    }

    public final void getFromLocationNameAsyn(final GeocodeQuery geocodeQuery) {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    try {
                        obtainMessage.what = 200;
                        obtainMessage.arg1 = 2;
                        obtainMessage.arg2 = 1000;
                        e eVar = new e();
                        eVar.b = be.this.b;
                        obtainMessage.obj = eVar;
                        eVar.a = new GeocodeResult(geocodeQuery, be.this.getFromLocationName(geocodeQuery));
                    } catch (AMapException e) {
                        obtainMessage.arg2 = e.getErrorCode();
                    } finally {
                        be.this.c.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            t.a(th, "GeocodeSearch", "getFromLocationNameAsynThrowable");
        }
    }
}
