package com.xiaomi.channel.commonutils.misc;

import com.xiaomi.channel.commonutils.misc.g.a;

class h extends b {
    final /* synthetic */ String a;
    final /* synthetic */ g b;

    h(g gVar, a aVar, String str) {
        this.b = gVar;
        this.a = str;
        super(aVar);
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        super.a();
    }

    /* access modifiers changed from: 0000 */
    public void b() {
        this.b.e.edit().putLong(this.a, System.currentTimeMillis()).commit();
    }
}
