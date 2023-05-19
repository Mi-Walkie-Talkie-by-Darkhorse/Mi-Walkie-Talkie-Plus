package com.ifengyu.intercom.p209o.p210b;

import android.net.Uri;
import com.ifengyu.intercom.p209o.p212d.GetRequest;
import com.ifengyu.intercom.p209o.p212d.RequestCall;
import java.util.Map;

/* renamed from: com.ifengyu.intercom.o.b.a */
/* loaded from: classes2.dex */
public class GetBuilder extends OkHttpRequestBuilder<GetBuilder> {
    /* renamed from: b */
    protected String m11346b(String str, Map<String, String> map) {
        if (str == null || map == null || map.isEmpty()) {
            return str;
        }
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (String str2 : map.keySet()) {
            buildUpon.appendQueryParameter(str2, map.get(str2));
        }
        return buildUpon.build().toString();
    }

    /* renamed from: c */
    public RequestCall m11345c() {
        Map<String, String> map = this.f14408d;
        if (map != null) {
            this.f14405a = m11346b(this.f14405a, map);
        }
        return new GetRequest(this.f14405a, this.f14406b, this.f14408d, this.f14407c, this.f14409e).m11333b();
    }
}
