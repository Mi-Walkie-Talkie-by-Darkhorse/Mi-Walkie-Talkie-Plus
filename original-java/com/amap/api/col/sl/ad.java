package com.amap.api.col.sl;

import android.content.Context;
import com.amap.api.services.core.AMapException;

/* compiled from: NearbyDeleteHandler */
public final class ad extends l<String, Integer> {
    private Context i;
    private String j;

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object a(String str) throws AMapException {
        return Integer.valueOf(0);
    }

    public ad(Context context, String str) {
        super(context, str);
        this.i = context;
        this.j = str;
    }

    /* access modifiers changed from: protected */
    public final String d() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=").append(bp.f(this.i));
        stringBuffer.append("&userid=").append(this.j);
        return stringBuffer.toString();
    }

    public final String f() {
        return s.c() + "/nearby/data/delete";
    }
}
