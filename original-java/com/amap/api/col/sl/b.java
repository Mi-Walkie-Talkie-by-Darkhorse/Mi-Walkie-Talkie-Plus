package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.services.district.DistrictSearchQuery;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import com.xiaomi.mipush.sdk.Constants;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.protocol.HTTP;
import org.jboss.netty.channel.ChannelPipelineCoverage;

/* compiled from: GeoFenceNetManager */
public final class b {
    dn a;

    public b() {
        this.a = null;
        this.a = dn.a();
    }

    public final String a(Context context, String str, String str2, String str3, String str4, String str5) {
        Map b = b(context, str2, str3, str4, str5, null, null, null);
        b.put("children", "1");
        b.put("page", "1");
        b.put("extensions", "base");
        return a(context, str, b);
    }

    public final String a(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Map b = b(context, str2, str3, null, str4, str5, str6, str7);
        b.put("children", "1");
        b.put("page", "1");
        b.put("extensions", "base");
        return a(context, str, b);
    }

    public final String a(Context context, String str, String str2) {
        Map b = b(context, str2, null, null, null, null, null, null);
        b.put("extensions", ChannelPipelineCoverage.ALL);
        return a(context, str, b);
    }

    private String a(Context context, String str, Map<String, String> map) {
        try {
            HashMap hashMap = new HashMap();
            fk fkVar = new fk();
            hashMap.clear();
            hashMap.put("Content-Type", "application/x-www-form-urlencoded");
            hashMap.put("Connection", HTTP.CONN_KEEP_ALIVE);
            hashMap.put("User-Agent", "AMAP_Location_SDK_Android 3.8.0");
            String a2 = bs.a();
            String a3 = bs.a(context, a2, ca.b(map));
            map.put(Key.TS, a2);
            map.put("scode", a3);
            fkVar.b(map);
            fkVar.a((Map<String, String>) hashMap);
            fkVar.a(str);
            fkVar.a(bx.a(context));
            fkVar.a(fq.f);
            fkVar.b(fq.f);
            return new String(this.a.b(fkVar), "utf-8");
        } catch (Throwable th) {
            return null;
        }
    }

    private static Map<String, String> b(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        HashMap hashMap = new HashMap();
        hashMap.put("key", bp.f(context));
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("keywords", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put("types", str2);
        }
        if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str6)) {
            hashMap.put("location", str6 + Constants.ACCEPT_TIME_SEPARATOR_SP + str5);
        }
        if (!TextUtils.isEmpty(str3)) {
            hashMap.put(DistrictSearchQuery.KEYWORDS_CITY, str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            hashMap.put("offset", str4);
        }
        if (!TextUtils.isEmpty(str7)) {
            hashMap.put("radius", str7);
        }
        return hashMap;
    }
}
