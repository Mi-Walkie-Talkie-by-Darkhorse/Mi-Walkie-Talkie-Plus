package com.ifengyu.intercom.ui.imui.base.loading;

import android.view.View;

/* compiled from: OnLoadingStateListener */
public abstract class b {
    public abstract void a(View view);

    public void b(View view) {
    }

    public void c(View view) {
    }

    public int a() {
        return 0;
    }

    public int b() {
        return 0;
    }

    public int c() {
        return 0;
    }

    public View d() {
        return null;
    }

    public View e() {
        return null;
    }

    public View f() {
        return null;
    }

    public boolean g() {
        if (a() == 0 && d() == null) {
            return false;
        }
        return true;
    }

    public boolean h() {
        if (b() == 0 && e() == null) {
            return false;
        }
        return true;
    }

    public boolean i() {
        if (c() == 0 && f() == null) {
            return false;
        }
        return true;
    }
}
