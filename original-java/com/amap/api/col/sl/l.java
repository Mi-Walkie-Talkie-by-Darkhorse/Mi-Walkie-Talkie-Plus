package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.ServiceSettings;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BasicLBSRestHandler */
public abstract class l<T, V> extends k<T, V> {
    /* access modifiers changed from: protected */
    public abstract String d();

    public l(Context context, T t) {
        super(context, t);
    }

    public final byte[] e() {
        boolean z = false;
        try {
            StringBuffer stringBuffer = new StringBuffer(d());
            stringBuffer.append("&language=").append(ServiceSettings.getInstance().getLanguage());
            String stringBuffer2 = stringBuffer.toString();
            String c = c(stringBuffer2);
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(stringBuffer2);
            String a = bs.a();
            stringBuffer3.append("&ts=" + a);
            stringBuffer3.append("&scode=" + bs.a(this.d, a, c));
            return stringBuffer3.toString().getBytes("utf-8");
        } catch (Throwable th) {
            t.a(th, "ProtocalHandler", "getEntity");
            return z;
        }
    }

    public final Map<String, String> b() {
        return null;
    }

    public Map<String, String> c() {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", "application/x-www-form-urlencoded");
        hashMap.put("Accept-Encoding", "gzip");
        hashMap.put("User-Agent", "AMAP SDK Android Search 6.1.0");
        hashMap.put("X-INFO", bs.a(this.d));
        hashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[]{"6.1.0", "sea"}));
        hashMap.put("logversion", "2.1");
        return hashMap;
    }

    private static String c(String str) {
        String[] split = str.split("&");
        Arrays.sort(split);
        StringBuffer stringBuffer = new StringBuffer();
        for (String d : split) {
            stringBuffer.append(d(d));
            stringBuffer.append("&");
        }
        String stringBuffer2 = stringBuffer.toString();
        if (stringBuffer2.length() > 1) {
            return (String) stringBuffer2.subSequence(0, stringBuffer2.length() - 1);
        }
        return str;
    }

    protected static String b(String str) {
        if (str == null) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e) {
            t.a(e, "ProtocalHandler", "strEncoderUnsupportedEncodingException");
        } catch (Exception e2) {
            t.a(e2, "ProtocalHandler", "strEncoderException");
        }
        return "";
    }

    private static String d(String str) {
        if (str == null) {
            return str;
        }
        try {
            return URLDecoder.decode(str, "utf-8");
        } catch (UnsupportedEncodingException e) {
            t.a(e, "ProtocalHandler", "strReEncoder");
        } catch (Exception e2) {
            t.a(e2, "ProtocalHandler", "strReEncoderException");
        }
        return "";
    }
}
