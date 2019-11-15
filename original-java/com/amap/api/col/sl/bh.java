package com.amap.api.col.sl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.col.sl.ac.g;
import com.amap.api.col.sl.ac.h;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.interfaces.IPoiSearch;
import com.amap.api.services.poisearch.PoiResult;
import com.amap.api.services.poisearch.PoiSearch.OnPoiSearchListener;
import com.amap.api.services.poisearch.PoiSearch.Query;
import com.amap.api.services.poisearch.PoiSearch.SearchBound;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.HashMap;

/* compiled from: PoiSearchCore */
public class bh implements IPoiSearch {
    private static HashMap<Integer, PoiResult> i;
    private SearchBound a;
    private Query b;
    private Context c;
    /* access modifiers changed from: private */
    public OnPoiSearchListener d;
    private String e = "zh-CN";
    private Query f;
    private SearchBound g;
    private int h;
    /* access modifiers changed from: private */
    public Handler j = null;

    public bh(Context context, Query query) {
        this.c = context.getApplicationContext();
        setQuery(query);
        this.j = ac.a();
    }

    public void setOnPoiSearchListener(OnPoiSearchListener onPoiSearchListener) {
        this.d = onPoiSearchListener;
    }

    public void setLanguage(String str) {
        if ("en".equals(str)) {
            this.e = "en";
        } else {
            this.e = "zh-CN";
        }
    }

    public String getLanguage() {
        return this.e;
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x0074 A[Catch:{ AMapException -> 0x0043 }] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00de A[Catch:{ AMapException -> 0x0043 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.amap.api.services.poisearch.PoiResult searchPOI() throws com.amap.api.services.core.AMapException {
        /*
            r8 = this;
            r0 = 1
            r1 = 0
            android.content.Context r2 = r8.c     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.col.sl.aa.a(r2)     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$SearchBound r2 = r8.getBound()     // Catch:{ AMapException -> 0x0043 }
            if (r2 == 0) goto L_0x0055
            java.lang.String r2 = r2.getShape()     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r3 = "Bound"
            boolean r2 = r2.equals(r3)     // Catch:{ AMapException -> 0x0043 }
            if (r2 == 0) goto L_0x0055
            r2 = r0
        L_0x001a:
            if (r2 != 0) goto L_0x0059
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            if (r2 == 0) goto L_0x0057
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r2 = r2.getQueryString()     // Catch:{ AMapException -> 0x0043 }
            boolean r2 = com.amap.api.col.sl.t.a(r2)     // Catch:{ AMapException -> 0x0043 }
            if (r2 == 0) goto L_0x0038
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r2 = r2.getCategory()     // Catch:{ AMapException -> 0x0043 }
            boolean r2 = com.amap.api.col.sl.t.a(r2)     // Catch:{ AMapException -> 0x0043 }
            if (r2 != 0) goto L_0x0057
        L_0x0038:
            r2 = r0
        L_0x0039:
            if (r2 != 0) goto L_0x0059
            com.amap.api.services.core.AMapException r0 = new com.amap.api.services.core.AMapException     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r1 = "无效的参数 - IllegalArgumentException"
            r0.<init>(r1)     // Catch:{ AMapException -> 0x0043 }
            throw r0     // Catch:{ AMapException -> 0x0043 }
        L_0x0043:
            r0 = move-exception
            java.lang.String r1 = "PoiSearch"
            java.lang.String r2 = "searchPOI"
            com.amap.api.col.sl.t.a(r0, r1, r2)
            com.amap.api.services.core.AMapException r1 = new com.amap.api.services.core.AMapException
            java.lang.String r0 = r0.getErrorMessage()
            r1.<init>(r0)
            throw r1
        L_0x0055:
            r2 = r1
            goto L_0x001a
        L_0x0057:
            r2 = r1
            goto L_0x0039
        L_0x0059:
            com.amap.api.services.poisearch.PoiSearch$SearchBound r2 = r8.getBound()     // Catch:{ AMapException -> 0x0043 }
            if (r2 == 0) goto L_0x00dc
            java.lang.String r3 = r2.getShape()     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r4 = "Bound"
            boolean r3 = r3.equals(r4)     // Catch:{ AMapException -> 0x0043 }
            if (r3 == 0) goto L_0x007c
            com.amap.api.services.core.LatLonPoint r2 = r2.getCenter()     // Catch:{ AMapException -> 0x0043 }
            if (r2 != 0) goto L_0x00dc
            r2 = r1
        L_0x0072:
            if (r2 != 0) goto L_0x00de
            com.amap.api.services.core.AMapException r0 = new com.amap.api.services.core.AMapException     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r1 = "无效的参数 - IllegalArgumentException"
            r0.<init>(r1)     // Catch:{ AMapException -> 0x0043 }
            throw r0     // Catch:{ AMapException -> 0x0043 }
        L_0x007c:
            java.lang.String r3 = r2.getShape()     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r4 = "Polygon"
            boolean r3 = r3.equals(r4)     // Catch:{ AMapException -> 0x0043 }
            if (r3 == 0) goto L_0x00a8
            java.util.List r3 = r2.getPolyGonList()     // Catch:{ AMapException -> 0x0043 }
            if (r3 == 0) goto L_0x0094
            int r2 = r3.size()     // Catch:{ AMapException -> 0x0043 }
            if (r2 != 0) goto L_0x0096
        L_0x0094:
            r2 = r1
            goto L_0x0072
        L_0x0096:
            r2 = r1
        L_0x0097:
            int r4 = r3.size()     // Catch:{ AMapException -> 0x0043 }
            if (r2 >= r4) goto L_0x00dc
            java.lang.Object r4 = r3.get(r2)     // Catch:{ AMapException -> 0x0043 }
            if (r4 != 0) goto L_0x00a5
            r2 = r1
            goto L_0x0072
        L_0x00a5:
            int r2 = r2 + 1
            goto L_0x0097
        L_0x00a8:
            java.lang.String r3 = r2.getShape()     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r4 = "Rectangle"
            boolean r3 = r3.equals(r4)     // Catch:{ AMapException -> 0x0043 }
            if (r3 == 0) goto L_0x00dc
            com.amap.api.services.core.LatLonPoint r3 = r2.getLowerLeft()     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.core.LatLonPoint r2 = r2.getUpperRight()     // Catch:{ AMapException -> 0x0043 }
            if (r3 == 0) goto L_0x00c0
            if (r2 != 0) goto L_0x00c2
        L_0x00c0:
            r2 = r1
            goto L_0x0072
        L_0x00c2:
            double r4 = r3.getLatitude()     // Catch:{ AMapException -> 0x0043 }
            double r6 = r2.getLatitude()     // Catch:{ AMapException -> 0x0043 }
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 >= 0) goto L_0x00da
            double r4 = r3.getLongitude()     // Catch:{ AMapException -> 0x0043 }
            double r2 = r2.getLongitude()     // Catch:{ AMapException -> 0x0043 }
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 < 0) goto L_0x00dc
        L_0x00da:
            r2 = r1
            goto L_0x0072
        L_0x00dc:
            r2 = r0
            goto L_0x0072
        L_0x00de:
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            if (r2 != 0) goto L_0x00ea
            com.amap.api.services.core.AMapException r0 = new com.amap.api.services.core.AMapException     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r1 = "无效的参数 - IllegalArgumentException"
            r0.<init>(r1)     // Catch:{ AMapException -> 0x0043 }
            throw r0     // Catch:{ AMapException -> 0x0043 }
        L_0x00ea:
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r3 = r8.f     // Catch:{ AMapException -> 0x0043 }
            boolean r2 = r2.queryEquals(r3)     // Catch:{ AMapException -> 0x0043 }
            if (r2 != 0) goto L_0x00f8
            com.amap.api.services.poisearch.PoiSearch$SearchBound r2 = r8.a     // Catch:{ AMapException -> 0x0043 }
            if (r2 == 0) goto L_0x010c
        L_0x00f8:
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r3 = r8.f     // Catch:{ AMapException -> 0x0043 }
            boolean r2 = r2.queryEquals(r3)     // Catch:{ AMapException -> 0x0043 }
            if (r2 != 0) goto L_0x012c
            com.amap.api.services.poisearch.PoiSearch$SearchBound r2 = r8.a     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$SearchBound r3 = r8.g     // Catch:{ AMapException -> 0x0043 }
            boolean r2 = r2.equals(r3)     // Catch:{ AMapException -> 0x0043 }
            if (r2 != 0) goto L_0x012c
        L_0x010c:
            r2 = 0
            r8.h = r2     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r2.clone()     // Catch:{ AMapException -> 0x0043 }
            r8.f = r2     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$SearchBound r2 = r8.a     // Catch:{ AMapException -> 0x0043 }
            if (r2 == 0) goto L_0x0123
            com.amap.api.services.poisearch.PoiSearch$SearchBound r2 = r8.a     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$SearchBound r2 = r2.clone()     // Catch:{ AMapException -> 0x0043 }
            r8.g = r2     // Catch:{ AMapException -> 0x0043 }
        L_0x0123:
            java.util.HashMap<java.lang.Integer, com.amap.api.services.poisearch.PoiResult> r2 = i     // Catch:{ AMapException -> 0x0043 }
            if (r2 == 0) goto L_0x012c
            java.util.HashMap<java.lang.Integer, com.amap.api.services.poisearch.PoiResult> r2 = i     // Catch:{ AMapException -> 0x0043 }
            r2.clear()     // Catch:{ AMapException -> 0x0043 }
        L_0x012c:
            r2 = 0
            com.amap.api.services.poisearch.PoiSearch$SearchBound r3 = r8.a     // Catch:{ AMapException -> 0x0043 }
            if (r3 == 0) goto L_0x0137
            com.amap.api.services.poisearch.PoiSearch$SearchBound r2 = r8.a     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$SearchBound r2 = r2.clone()     // Catch:{ AMapException -> 0x0043 }
        L_0x0137:
            int r3 = r8.h     // Catch:{ AMapException -> 0x0043 }
            if (r3 != 0) goto L_0x017f
            com.amap.api.col.sl.ai r0 = new com.amap.api.col.sl.ai     // Catch:{ AMapException -> 0x0043 }
            android.content.Context r1 = r8.c     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.col.sl.al r3 = new com.amap.api.col.sl.al     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r4 = r8.b     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r4 = r4.clone()     // Catch:{ AMapException -> 0x0043 }
            r3.<init>(r4, r2)     // Catch:{ AMapException -> 0x0043 }
            r0.<init>(r1, r3)     // Catch:{ AMapException -> 0x0043 }
            java.lang.Object r0 = r0.a()     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiResult r0 = (com.amap.api.services.poisearch.PoiResult) r0     // Catch:{ AMapException -> 0x0043 }
            java.util.HashMap r1 = new java.util.HashMap     // Catch:{ AMapException -> 0x0043 }
            r1.<init>()     // Catch:{ AMapException -> 0x0043 }
            i = r1     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r1 = r8.b     // Catch:{ AMapException -> 0x0043 }
            if (r1 == 0) goto L_0x0160
            if (r0 != 0) goto L_0x0161
        L_0x0160:
            return r0
        L_0x0161:
            int r1 = r8.h     // Catch:{ AMapException -> 0x0043 }
            if (r1 <= 0) goto L_0x0160
            int r1 = r8.h     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            int r2 = r2.getPageNum()     // Catch:{ AMapException -> 0x0043 }
            if (r1 <= r2) goto L_0x0160
            java.util.HashMap<java.lang.Integer, com.amap.api.services.poisearch.PoiResult> r1 = i     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            int r2 = r2.getPageNum()     // Catch:{ AMapException -> 0x0043 }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ AMapException -> 0x0043 }
            r1.put(r2, r0)     // Catch:{ AMapException -> 0x0043 }
            goto L_0x0160
        L_0x017f:
            com.amap.api.services.poisearch.PoiSearch$Query r3 = r8.b     // Catch:{ AMapException -> 0x0043 }
            int r3 = r3.getPageNum()     // Catch:{ AMapException -> 0x0043 }
            int r4 = r8.h     // Catch:{ AMapException -> 0x0043 }
            if (r3 > r4) goto L_0x0195
            if (r3 < 0) goto L_0x0195
        L_0x018b:
            if (r0 != 0) goto L_0x0197
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ AMapException -> 0x0043 }
            java.lang.String r1 = "page out of range"
            r0.<init>(r1)     // Catch:{ AMapException -> 0x0043 }
            throw r0     // Catch:{ AMapException -> 0x0043 }
        L_0x0195:
            r0 = r1
            goto L_0x018b
        L_0x0197:
            java.util.HashMap<java.lang.Integer, com.amap.api.services.poisearch.PoiResult> r0 = i     // Catch:{ AMapException -> 0x0043 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r3)     // Catch:{ AMapException -> 0x0043 }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiResult r0 = (com.amap.api.services.poisearch.PoiResult) r0     // Catch:{ AMapException -> 0x0043 }
            if (r0 != 0) goto L_0x0160
            com.amap.api.col.sl.ai r0 = new com.amap.api.col.sl.ai     // Catch:{ AMapException -> 0x0043 }
            android.content.Context r1 = r8.c     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.col.sl.al r3 = new com.amap.api.col.sl.al     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r4 = r8.b     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r4 = r4.clone()     // Catch:{ AMapException -> 0x0043 }
            r3.<init>(r4, r2)     // Catch:{ AMapException -> 0x0043 }
            r0.<init>(r1, r3)     // Catch:{ AMapException -> 0x0043 }
            java.lang.Object r0 = r0.a()     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiResult r0 = (com.amap.api.services.poisearch.PoiResult) r0     // Catch:{ AMapException -> 0x0043 }
            java.util.HashMap<java.lang.Integer, com.amap.api.services.poisearch.PoiResult> r1 = i     // Catch:{ AMapException -> 0x0043 }
            com.amap.api.services.poisearch.PoiSearch$Query r2 = r8.b     // Catch:{ AMapException -> 0x0043 }
            int r2 = r2.getPageNum()     // Catch:{ AMapException -> 0x0043 }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch:{ AMapException -> 0x0043 }
            r1.put(r2, r0)     // Catch:{ AMapException -> 0x0043 }
            goto L_0x0160
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.col.sl.bh.searchPOI():com.amap.api.services.poisearch.PoiResult");
    }

    public void searchPOIAsyn() {
        try {
            as.a().a(new Runnable() {
                public final void run() {
                    Message obtainMessage = bh.this.j.obtainMessage();
                    obtainMessage.arg1 = 6;
                    obtainMessage.what = 600;
                    Bundle bundle = new Bundle();
                    PoiResult poiResult = null;
                    try {
                        poiResult = bh.this.searchPOI();
                        bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                    } catch (AMapException e) {
                        bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                    } finally {
                        h hVar = new h();
                        hVar.b = bh.this.d;
                        hVar.a = poiResult;
                        obtainMessage.obj = hVar;
                        obtainMessage.setData(bundle);
                        bh.this.j.sendMessage(obtainMessage);
                    }
                }
            });
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public PoiItem searchPOIId(String str) throws AMapException {
        aa.a(this.c);
        return (PoiItem) new ah(this.c, str).a();
    }

    public void searchPOIIdAsyn(final String str) {
        as.a().a(new Runnable() {
            public final void run() {
                Message obtainMessage = ac.a().obtainMessage();
                obtainMessage.arg1 = 6;
                obtainMessage.what = 602;
                Bundle bundle = new Bundle();
                PoiItem poiItem = null;
                try {
                    poiItem = bh.this.searchPOIId(str);
                    bundle.putInt(MyLocationStyle.ERROR_CODE, 1000);
                } catch (AMapException e) {
                    t.a(e, "PoiSearch", "searchPOIIdAsyn");
                    bundle.putInt(MyLocationStyle.ERROR_CODE, e.getErrorCode());
                } finally {
                    g gVar = new g();
                    gVar.b = bh.this.d;
                    gVar.a = poiItem;
                    obtainMessage.obj = gVar;
                    obtainMessage.setData(bundle);
                    bh.this.j.sendMessage(obtainMessage);
                }
            }
        });
    }

    public void setQuery(Query query) {
        this.b = query;
    }

    public void setBound(SearchBound searchBound) {
        this.a = searchBound;
    }

    public Query getQuery() {
        return this.b;
    }

    public SearchBound getBound() {
        return this.a;
    }
}
