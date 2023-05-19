package com.xiaomi.infra.galaxy.fds.android.model;

import com.amap.api.col.p089l3.Log;

/* loaded from: classes2.dex */
public class ThumbParam extends UserParam {
    public ThumbParam(int i, int i2) {
        this.params.put("thumb", "1");
        this.params.put("w", Integer.toString(i));
        this.params.put(Log.f6963f, Integer.toString(i2));
    }
}
