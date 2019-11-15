package com.xiaomi.smack.util;

import android.content.Context;
import com.xiaomi.channel.commonutils.misc.i.b;
import java.util.ArrayList;

final class h extends b {
    final /* synthetic */ Context a;

    h(Context context) {
        this.a = context;
    }

    public void b() {
        ArrayList arrayList;
        synchronized (g.c) {
            arrayList = new ArrayList(g.d);
            g.d.clear();
        }
        g.b(this.a, arrayList);
    }
}
