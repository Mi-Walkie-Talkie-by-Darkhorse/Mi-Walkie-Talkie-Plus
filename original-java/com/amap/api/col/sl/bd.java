package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.district.DistrictResult;
import com.amap.api.services.district.DistrictSearch.OnDistrictSearchListener;
import com.amap.api.services.district.DistrictSearchQuery;
import com.amap.api.services.interfaces.IDistrictSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;

/* compiled from: DistrictSearchCore */
public class bd implements IDistrictSearch {
    private static HashMap<Integer, DistrictResult> f;
    private Context a;
    /* access modifiers changed from: private */
    public DistrictSearchQuery b;
    /* access modifiers changed from: private */
    public OnDistrictSearchListener c;
    private DistrictSearchQuery d;
    private int e;
    /* access modifiers changed from: private */
    public Handler g = ac.a();

    public bd(Context context) {
        this.a = context.getApplicationContext();
    }

    public DistrictSearchQuery getQuery() {
        return this.b;
    }

    public void setQuery(DistrictSearchQuery districtSearchQuery) {
        this.b = districtSearchQuery;
    }

    public DistrictResult searchDistrict() throws AMapException {
        DistrictResult districtResult;
        boolean z = true;
        try {
            DistrictResult districtResult2 = new DistrictResult();
            aa.a(this.a);
            if (!(this.b != null)) {
                this.b = new DistrictSearchQuery();
            }
            districtResult2.setQuery(this.b.clone());
            if (!this.b.weakEquals(this.d)) {
                this.e = 0;
                this.d = this.b.clone();
                if (f != null) {
                    f.clear();
                }
            }
            if (this.e == 0) {
                districtResult = (DistrictResult) new v(this.a, this.b.clone()).a();
                if (districtResult != null) {
                    this.e = districtResult.getPageCount();
                    f = new HashMap<>();
                    if (this.b != null && districtResult != null && this.e > 0 && this.e > this.b.getPageNum()) {
                        f.put(Integer.valueOf(this.b.getPageNum()), districtResult);
                    }
                }
            } else {
                int pageNum = this.b.getPageNum();
                if (pageNum >= this.e || pageNum < 0) {
                    z = false;
                }
                if (!z) {
                    throw new AMapException("无效的参数 - IllegalArgumentException");
                }
                districtResult = (DistrictResult) f.get(Integer.valueOf(pageNum));
                if (districtResult == null) {
                    districtResult = (DistrictResult) new v(this.a, this.b.clone()).a();
                    if (this.b != null && districtResult != null && this.e > 0 && this.e > this.b.getPageNum()) {
                        f.put(Integer.valueOf(this.b.getPageNum()), districtResult);
                    }
                }
            }
            return districtResult;
        } catch (AMapException e2) {
            t.a(e2, "DistrictSearch", "searchDistrict");
            throw e2;
        }
    }

    public void searchDistrictAsyn() {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = ac.a().obtainMessage();
                    DistrictResult districtResult = new DistrictResult();
                    districtResult.setQuery(bd.this.b);
                    try {
                        DistrictResult searchDistrict = bd.this.searchDistrict();
                        if (searchDistrict != null) {
                            searchDistrict.setAMapException(new AMapException());
                        }
                        obtainMessage.arg1 = 4;
                        obtainMessage.obj = bd.this.c;
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("result", searchDistrict);
                        obtainMessage.setData(bundle);
                        if (bd.this.g != null) {
                            bd.this.g.sendMessage(obtainMessage);
                        }
                    } catch (AMapException e) {
                        districtResult.setAMapException(e);
                        obtainMessage.arg1 = 4;
                        obtainMessage.obj = bd.this.c;
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("result", districtResult);
                        obtainMessage.setData(bundle2);
                        if (bd.this.g != null) {
                            bd.this.g.sendMessage(obtainMessage);
                        }
                    } catch (Throwable th) {
                        obtainMessage.arg1 = 4;
                        obtainMessage.obj = bd.this.c;
                        Bundle bundle3 = new Bundle();
                        bundle3.putParcelable("result", districtResult);
                        obtainMessage.setData(bundle3);
                        if (bd.this.g != null) {
                            bd.this.g.sendMessage(obtainMessage);
                        }
                        throw th;
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void searchDistrictAnsy() {
        searchDistrictAsyn();
    }

    public void setOnDistrictSearchListener(OnDistrictSearchListener onDistrictSearchListener) {
        this.c = onDistrictSearchListener;
    }
}
