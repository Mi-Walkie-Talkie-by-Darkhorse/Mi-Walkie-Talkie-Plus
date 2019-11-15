package com.amap.api.col.sl;

import android.content.Context;

/* compiled from: WiFiUplateStrategy */
public final class eq extends ep {
    private Context b;
    private boolean c = false;

    public eq(Context context, boolean z) {
        this.b = context;
        this.c = z;
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return bu.p(this.b) == 1 || this.c;
    }
}
