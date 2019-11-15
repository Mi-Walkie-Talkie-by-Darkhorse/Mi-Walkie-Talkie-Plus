package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.help.InputtipsQuery;
import com.amap.api.services.help.Tip;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: InputtipsHandler */
public final class y extends l<InputtipsQuery, ArrayList<Tip>> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return c(str);
    }

    public y(Context context, InputtipsQuery inputtipsQuery) {
        super(context, inputtipsQuery);
    }

    private static ArrayList<Tip> c(String str) throws AMapException {
        boolean z = false;
        try {
            return z.h(new JSONObject(str));
        } catch (JSONException e) {
            t.a(e, "InputtipsHandler", "paseJSON");
            return z;
        }
    }

    public final String f() {
        return s.a() + "/assistant/inputtips?";
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("output=json");
        String b = b(((InputtipsQuery) this.a).getKeyword());
        if (!TextUtils.isEmpty(b)) {
            stringBuffer.append("&keywords=").append(b);
        }
        String city = ((InputtipsQuery) this.a).getCity();
        if (!z.f(city)) {
            stringBuffer.append("&city=").append(b(city));
        }
        String type = ((InputtipsQuery) this.a).getType();
        if (!z.f(type)) {
            stringBuffer.append("&type=").append(b(type));
        }
        if (((InputtipsQuery) this.a).getCityLimit()) {
            stringBuffer.append("&citylimit=true");
        } else {
            stringBuffer.append("&citylimit=false");
        }
        LatLonPoint location = ((InputtipsQuery) this.a).getLocation();
        if (location != null) {
            stringBuffer.append("&location=").append(location.getLongitude()).append(Constants.ACCEPT_TIME_SEPARATOR_SP).append(location.getLatitude());
        }
        stringBuffer.append("&key=").append(bp.f(this.d));
        return stringBuffer.toString();
    }
}
