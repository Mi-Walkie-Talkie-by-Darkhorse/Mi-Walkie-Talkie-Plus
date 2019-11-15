package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.cloud.CloudItem;
import com.amap.api.services.cloud.CloudItemDetail;
import com.amap.api.services.cloud.CloudResult;
import com.amap.api.services.cloud.CloudSearch.Query;
import com.amap.api.services.cloud.CloudSearch.SearchBound;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CloudSearchKeywordsHandler */
public final class r extends p<Query, CloudResult> {
    private int i = 0;

    public r(Context context, Query query) {
        super(context, query);
    }

    public final String f() {
        String str = s.c() + "/datasearch";
        String shape = ((Query) this.a).getBound().getShape();
        if (shape.equals("Bound")) {
            return str + "/around?";
        }
        if (shape.equals("Polygon") || shape.equals("Rectangle")) {
            return str + "/polygon?";
        }
        return shape.equals(SearchBound.LOCAL_SHAPE) ? str + "/local?" : str;
    }

    /* access modifiers changed from: private */
    /* renamed from: c */
    public CloudResult a(String str) throws AMapException {
        ArrayList arrayList = null;
        if (str == null || str.equals("")) {
            return CloudResult.createPagedResult((Query) this.a, this.i, ((Query) this.a).getBound(), ((Query) this.a).getPageSize(), null);
        }
        try {
            arrayList = b(new JSONObject(str));
        } catch (JSONException e) {
            ThrowableExtension.printStackTrace(e);
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        return CloudResult.createPagedResult((Query) this.a, this.i, ((Query) this.a).getBound(), ((Query) this.a).getPageSize(), arrayList);
    }

    private ArrayList<CloudItem> b(JSONObject jSONObject) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (!jSONObject.has("datas")) {
            return arrayList;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("datas");
        this.i = jSONObject.getInt("count");
        for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
            CloudItemDetail a = a(optJSONObject);
            a(a, optJSONObject);
            arrayList.add(a);
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append("output=json");
        if (((Query) this.a).getBound() != null) {
            if (((Query) this.a).getBound().getShape().equals("Bound")) {
                double a = t.a(((Query) this.a).getBound().getCenter().getLongitude());
                sb.append("&center=").append(a + Constants.ACCEPT_TIME_SEPARATOR_SP + t.a(((Query) this.a).getBound().getCenter().getLatitude()));
                sb.append("&radius=").append(((Query) this.a).getBound().getRange());
            } else if (((Query) this.a).getBound().getShape().equals("Rectangle")) {
                LatLonPoint lowerLeft = ((Query) this.a).getBound().getLowerLeft();
                LatLonPoint upperRight = ((Query) this.a).getBound().getUpperRight();
                double a2 = t.a(lowerLeft.getLatitude());
                double a3 = t.a(lowerLeft.getLongitude());
                sb.append("&polygon=" + a3 + Constants.ACCEPT_TIME_SEPARATOR_SP + a2 + ";" + t.a(upperRight.getLongitude()) + Constants.ACCEPT_TIME_SEPARATOR_SP + t.a(upperRight.getLatitude()));
            } else if (((Query) this.a).getBound().getShape().equals("Polygon")) {
                List polyGonList = ((Query) this.a).getBound().getPolyGonList();
                if (polyGonList != null && polyGonList.size() > 0) {
                    sb.append("&polygon=" + t.a(polyGonList, ";"));
                }
            } else if (((Query) this.a).getBound().getShape().equals(SearchBound.LOCAL_SHAPE)) {
                sb.append("&city=").append(b(((Query) this.a).getBound().getCity()));
            }
        }
        sb.append("&tableid=" + ((Query) this.a).getTableID());
        if (!t.a(h())) {
            h();
            sb.append("&filter=").append(b(h()));
        }
        if (!t.a(g())) {
            sb.append("&sortrule=").append(g());
        }
        String b = b(((Query) this.a).getQueryString());
        if (((Query) this.a).getQueryString() == null || ((Query) this.a).getQueryString().equals("")) {
            sb.append("&keywords=");
        } else {
            sb.append("&keywords=" + b);
        }
        sb.append("&limit=" + ((Query) this.a).getPageSize());
        sb.append("&page=" + ((Query) this.a).getPageNum());
        sb.append("&key=" + bp.f(this.d));
        return sb.toString();
    }

    private String g() {
        if (((Query) this.a).getSortingrules() != null) {
            return ((Query) this.a).getSortingrules().toString();
        }
        return "";
    }

    private String h() {
        StringBuffer stringBuffer = new StringBuffer();
        String filterString = ((Query) this.a).getFilterString();
        String filterNumString = ((Query) this.a).getFilterNumString();
        stringBuffer.append(filterString);
        if (!t.a(filterString) && !t.a(filterNumString)) {
            stringBuffer.append("+");
        }
        stringBuffer.append(filterNumString);
        return stringBuffer.toString();
    }
}
