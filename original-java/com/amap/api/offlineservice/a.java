package com.amap.api.offlineservice;

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.amap.api.maps.offlinemap.OfflineMapActivity;

/* compiled from: ServiceModule */
public abstract class a {
    protected OfflineMapActivity a = null;

    public abstract void a();

    public abstract void a(View view);

    public abstract RelativeLayout c();

    public abstract void d();

    public void a(OfflineMapActivity offlineMapActivity) {
        this.a = offlineMapActivity;
    }

    public void a(Bundle bundle) {
        this.a.showScr();
    }

    public boolean b() {
        return true;
    }

    public void e() {
    }

    public void f() {
    }

    public void g() {
    }

    public void h() {
    }
}
