package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.routepoisearch.RoutePOISearchQuery;
import com.amap.api.services.routepoisearch.RoutePOISearchResult;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: RoutePOISearchHandler */
public final class ap extends l<RoutePOISearchQuery, RoutePOISearchResult> {
    public ap(Context context, RoutePOISearchQuery routePOISearchQuery) {
        super(context, routePOISearchQuery);
    }

    /* access modifiers changed from: protected */
    public final String d() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.d));
        stringBuffer.append("&range=").append(((RoutePOISearchQuery) this.a).getRange());
        String str2 = "";
        try {
            switch (((RoutePOISearchQuery) this.a).getSearchType()) {
                case TypeGasStation:
                    str2 = "0101";
                    break;
                case TypeMaintenanceStation:
                    str2 = "0300";
                    break;
                case TypeATM:
                    str2 = "1603";
                    break;
                case TypeToilet:
                    str2 = "2003";
                    break;
                case TypeFillingStation:
                    str2 = "0103";
                    break;
                case TypeServiceArea:
                    str = "180301";
                    break;
                default:
                    str = str2;
                    break;
            }
            str2 = str;
        } catch (Exception e) {
        }
        if (((RoutePOISearchQuery) this.a).getPolylines() == null || ((RoutePOISearchQuery) this.a).getPolylines().size() <= 0) {
            stringBuffer.append("&origin=").append(t.a(((RoutePOISearchQuery) this.a).getFrom()));
            stringBuffer.append("&destination=").append(t.a(((RoutePOISearchQuery) this.a).getTo()));
            stringBuffer.append("&strategy=").append(((RoutePOISearchQuery) this.a).getMode());
        } else {
            stringBuffer.append("&polyline=").append(t.a(((RoutePOISearchQuery) this.a).getPolylines()));
        }
        stringBuffer.append("&types=").append(str2);
        return stringBuffer.toString();
    }

    /* access modifiers changed from: private */
    /* renamed from: c */
    public RoutePOISearchResult a(String str) throws AMapException {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        try {
            arrayList = z.i(new JSONObject(str));
        } catch (JSONException e) {
            ThrowableExtension.printStackTrace(e);
            arrayList = arrayList2;
        }
        return new RoutePOISearchResult(arrayList, (RoutePOISearchQuery) this.a);
    }

    public final String f() {
        return s.a() + "/place/route?";
    }
}
