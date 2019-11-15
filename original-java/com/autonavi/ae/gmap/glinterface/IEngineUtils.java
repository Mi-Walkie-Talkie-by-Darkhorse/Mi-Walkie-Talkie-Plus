package com.autonavi.ae.gmap.glinterface;

import android.content.Context;
import java.net.Proxy;
import org.json.JSONObject;

public interface IEngineUtils {
    void actionLogV2(String str, String str2, JSONObject jSONObject);

    String amapEncode(String str);

    Proxy getMaaProxy(Context context);

    double[] getMapLonLat(GLGeoPoint gLGeoPoint);

    String getNetworkParam();

    Proxy getProxy(Context context);

    String getSign(String str);
}
