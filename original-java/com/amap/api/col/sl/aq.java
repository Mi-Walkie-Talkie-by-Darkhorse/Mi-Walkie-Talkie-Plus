package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ShareUrlSearchHandler */
public final class aq extends k<String, String> {
    private String i;

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return b(str);
    }

    public aq(Context context, String str) {
        super(context, str);
        this.i = str;
    }

    public final Map<String, String> b() {
        StringBuilder sb = new StringBuilder();
        sb.append("channel=open_api&flag=1").append("&address=" + URLEncoder.encode(this.i));
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("open_api1").append(this.i).append("@8UbJH6N2szojnTHONAWzB6K7N1kaj7Y0iUMarxac");
        sb.append("&sign=").append(bw.b(stringBuffer.toString()).toUpperCase(Locale.US));
        sb.append("&output=json");
        byte[] bArr = null;
        try {
            bArr = ay.a(sb.toString().getBytes("utf-8"), "Yaynpa84IKOfasFx".substring(0, 16).getBytes("utf-8"));
        } catch (UnsupportedEncodingException e) {
            t.a(e, "ShareUrlSearchHandler", "getParams");
        }
        HashMap hashMap = new HashMap();
        hashMap.put("ent", "2");
        hashMap.put("in", bv.b(bArr));
        hashMap.put("keyt", "openapi");
        return hashMap;
    }

    private static String b(String str) throws AMapException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String a = z.a(jSONObject, "code");
            String a2 = z.a(jSONObject, "message");
            if ("1".equals(a)) {
                return z.a(jSONObject, "transfer_url");
            }
            if ("0".equals(a)) {
                throw new AMapException(AMapException.AMAP_SERVICE_UNKNOWN_ERROR, 0, a2);
            } else if ("2".equals(a)) {
                throw new AMapException(AMapException.AMAP_SHARE_FAILURE, 0, a2);
            } else if ("3".equals(a)) {
                throw new AMapException(AMapException.AMAP_SERVICE_INVALID_PARAMS, 0, a2);
            } else if ("4".equals(a)) {
                throw new AMapException("用户签名未通过", 0, a2);
            } else {
                if ("5".equals(a)) {
                    throw new AMapException(AMapException.AMAP_SHARE_LICENSE_IS_EXPIRED, 0, a2);
                }
                return null;
            }
        } catch (JSONException e) {
            t.a(e, "ShareUrlSearchHandler", "paseJSON");
        }
    }

    public final String f() {
        return s.d();
    }

    /* access modifiers changed from: protected */
    public final byte[] a(int i2, ds dsVar) throws bo {
        if (i2 == 1) {
            return dr.d(dsVar);
        }
        if (i2 == 2) {
            return dr.e(dsVar);
        }
        return null;
    }
}
