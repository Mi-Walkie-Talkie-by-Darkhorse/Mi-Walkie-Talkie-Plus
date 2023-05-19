package p048b.p065c.p066a.p072g;

import android.text.TextUtils;
import com.lzy.okgo.cache.CacheEntity;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.request.base.Request;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Locale;
import java.util.StringTokenizer;
import okhttp3.Headers;

/* renamed from: b.c.a.g.a */
/* loaded from: classes2.dex */
public class HeaderParser {
    /* renamed from: a */
    public static <T> void m21066a(Request request, CacheEntity<T> cacheEntity, CacheMode cacheMode) {
        HttpHeaders m8292f;
        if (cacheEntity == null || cacheMode != CacheMode.DEFAULT || (m8292f = cacheEntity.m8292f()) == null) {
            return;
        }
        String m8262b = m8292f.m8262b(com.google.common.net.HttpHeaders.ETAG);
        if (m8262b != null) {
            request.m8210q(com.google.common.net.HttpHeaders.IF_NONE_MATCH, m8262b);
        }
        long m8257g = HttpHeaders.m8257g(m8292f.m8262b("Last-Modified"));
        if (m8257g > 0) {
            request.m8210q(com.google.common.net.HttpHeaders.IF_MODIFIED_SINCE, HttpHeaders.m8263a(m8257g));
        }
    }

    /* renamed from: b */
    public static <T> CacheEntity<T> m21065b(Headers headers, T t, CacheMode cacheMode, String str) {
        long currentTimeMillis;
        long j;
        if (cacheMode == CacheMode.DEFAULT) {
            long m8259e = HttpHeaders.m8259e(headers.get("Date"));
            currentTimeMillis = HttpHeaders.m8258f(headers.get("Expires"));
            String m8260d = HttpHeaders.m8260d(headers.get("Cache-Control"), headers.get(com.google.common.net.HttpHeaders.PRAGMA));
            if (TextUtils.isEmpty(m8260d) && currentTimeMillis <= 0) {
                return null;
            }
            if (TextUtils.isEmpty(m8260d)) {
                j = 0;
            } else {
                StringTokenizer stringTokenizer = new StringTokenizer(m8260d, Constants.ACCEPT_TIME_SEPARATOR_SP);
                j = 0;
                while (stringTokenizer.hasMoreTokens()) {
                    String lowerCase = stringTokenizer.nextToken().trim().toLowerCase(Locale.getDefault());
                    if (lowerCase.equals("no-cache") || lowerCase.equals("no-store")) {
                        return null;
                    }
                    if (lowerCase.startsWith("max-age=")) {
                        try {
                            j = Long.parseLong(lowerCase.substring(8));
                            if (j <= 0) {
                                return null;
                            }
                        } catch (Exception e) {
                            OkLogger.m21049a(e);
                        }
                    }
                }
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            if (m8259e <= 0) {
                m8259e = currentTimeMillis2;
            }
            if (j > 0) {
                currentTimeMillis = m8259e + (j * 1000);
            } else if (currentTimeMillis < 0) {
                currentTimeMillis = 0;
            }
        } else {
            currentTimeMillis = System.currentTimeMillis();
        }
        HttpHeaders httpHeaders = new HttpHeaders();
        for (String str2 : headers.names()) {
            httpHeaders.m8252l(str2, headers.get(str2));
        }
        CacheEntity<T> cacheEntity = new CacheEntity<>();
        cacheEntity.m8287k(str);
        cacheEntity.m8289i(t);
        cacheEntity.m8286l(currentTimeMillis);
        cacheEntity.m8285m(httpHeaders);
        return cacheEntity;
    }
}
