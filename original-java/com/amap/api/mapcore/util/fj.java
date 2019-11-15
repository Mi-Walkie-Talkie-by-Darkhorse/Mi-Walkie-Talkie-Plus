package com.amap.api.mapcore.util;

import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.LatLng;
import com.amap.api.services.core.AMapException;
import com.mi.milinkforgame.sdk.client.ClientConstants;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CoreUtil */
public class fj {
    private static String[] a = {"com.amap.api.trace", "com.amap.api.trace.core"};

    public static void a(String str, String str2) throws fg {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("status") && jSONObject.has("infocode")) {
                String string = jSONObject.getString("status");
                int i = jSONObject.getInt("infocode");
                if (!string.equals("1") && string.equals("0")) {
                    switch (i) {
                        case 10001:
                            throw new fg(AMapException.AMAP_INVALID_USER_KEY);
                        case 10002:
                            throw new fg(AMapException.AMAP_SERVICE_NOT_AVAILBALE);
                        case 10003:
                            throw new fg(AMapException.AMAP_DAILY_QUERY_OVER_LIMIT);
                        case 10004:
                            throw new fg(AMapException.AMAP_ACCESS_TOO_FREQUENT);
                        case 10005:
                            throw new fg(AMapException.AMAP_INVALID_USER_IP);
                        case 10006:
                            throw new fg(AMapException.AMAP_INVALID_USER_DOMAIN);
                        case 10007:
                            throw new fg("用户签名未通过");
                        case 10008:
                            throw new fg(AMapException.AMAP_INVALID_USER_SCODE);
                        case 10009:
                            throw new fg(AMapException.AMAP_USERKEY_PLAT_NOMATCH);
                        case 10010:
                            throw new fg(AMapException.AMAP_IP_QUERY_OVER_LIMIT);
                        case 10011:
                            throw new fg(AMapException.AMAP_NOT_SUPPORT_HTTPS);
                        case 10012:
                            throw new fg(AMapException.AMAP_INSUFFICIENT_PRIVILEGES);
                        case 10013:
                            throw new fg(AMapException.AMAP_USER_KEY_RECYCLED);
                        case BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT /*20000*/:
                            throw new fg(AMapException.AMAP_SERVICE_INVALID_PARAMS);
                        case ClientConstants.LOGIN_RET_CODE_USER_ID_NEEDED /*20001*/:
                            throw new fg(AMapException.AMAP_SERVICE_MISSING_REQUIRED_PARAMS);
                        case ClientConstants.LOGIN_RET_CODE_PASSWORD_NEEDED /*20002*/:
                            throw new fg(AMapException.AMAP_SERVICE_ILLEGAL_REQUEST);
                        case ClientConstants.LOGIN_RET_CODE_PASSTOKEN_NEEDED /*20003*/:
                            throw new fg(AMapException.AMAP_SERVICE_UNKNOWN_ERROR);
                        case 30000:
                            throw new fg(AMapException.AMAP_ENGINE_RESPONSE_ERROR);
                        case ClientConstants.LOGIN_RET_CODE_SYSTEM_NOT_LOGIN /*30001*/:
                            throw new fg(AMapException.AMAP_ENGINE_RESPONSE_DATA_ERROR);
                        case ClientConstants.LOGIN_RET_CODE_SYSTEM_NOT_SAME_USER /*30002*/:
                            throw new fg(AMapException.AMAP_ENGINE_CONNECT_TIMEOUT);
                        case 30003:
                            throw new fg(AMapException.AMAP_ENGINE_RETURN_TIMEOUT);
                        default:
                            throw new fg(jSONObject.getString("info"));
                    }
                    throw new fg("协议解析错误 - ProtocolException");
                }
            }
        } catch (JSONException e) {
            throw new fg("协议解析错误 - ProtocolException");
        }
    }

    public static int a(List<LatLng> list) {
        if (list == null || list.size() == 0) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        while (i < list.size() - 1) {
            LatLng latLng = (LatLng) list.get(i);
            LatLng latLng2 = (LatLng) list.get(i + 1);
            if (latLng == null || latLng2 == null) {
                return i2;
            }
            i++;
            i2 = (int) (AMapUtils.calculateLineDistance(latLng, latLng2) + ((float) i2));
        }
        return i2;
    }
}
