package com.amap.api.col.sl;

/* compiled from: UpdateStrategy */
public abstract class ep {
    ep a;

    /* access modifiers changed from: protected */
    public abstract boolean a();

    public ep() {
    }

    public ep(ep epVar) {
        this.a = epVar;
    }

    public final boolean b() {
        if (!(this.a != null ? this.a.b() : true)) {
            return false;
        }
        return a();
    }

    public void a(boolean z) {
        if (this.a != null) {
            this.a.a(z);
        }
    }
}
