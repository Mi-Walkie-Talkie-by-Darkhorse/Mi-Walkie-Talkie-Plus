package com.ifengyu.library.widget.recyclerview.f;

import android.support.annotation.IdRes;
import android.support.annotation.LayoutRes;

/* compiled from: LoadMoreView */
public abstract class a {
    private int a = 1;
    private boolean b = false;

    @LayoutRes
    public abstract int c();

    /* access modifiers changed from: protected */
    @IdRes
    public abstract int d();

    /* access modifiers changed from: protected */
    @IdRes
    public abstract int e();

    /* access modifiers changed from: protected */
    @IdRes
    public abstract int f();

    public void a(int i) {
        this.a = i;
    }

    public int a() {
        return this.a;
    }

    public void a(com.ifengyu.library.widget.recyclerview.d.a aVar) {
        switch (this.a) {
            case 2:
                a(aVar, true);
                b(aVar, false);
                c(aVar, false);
                return;
            case 3:
                a(aVar, false);
                b(aVar, true);
                c(aVar, false);
                return;
            case 4:
                a(aVar, false);
                b(aVar, false);
                c(aVar, true);
                return;
            default:
                return;
        }
    }

    private void a(com.ifengyu.library.widget.recyclerview.d.a aVar, boolean z) {
        aVar.a(d(), z);
    }

    private void b(com.ifengyu.library.widget.recyclerview.d.a aVar, boolean z) {
        aVar.a(e(), z);
    }

    private void c(com.ifengyu.library.widget.recyclerview.d.a aVar, boolean z) {
        int f = f();
        if (f != 0) {
            aVar.a(f, z);
        }
    }

    public final void a(boolean z) {
        this.b = z;
    }

    public final boolean b() {
        if (f() == 0) {
            return true;
        }
        return this.b;
    }
}
