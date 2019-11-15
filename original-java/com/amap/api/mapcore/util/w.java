package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;

/* compiled from: UiSettingsDelegateImp */
class w implements o {
    final Handler a = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            if (message != null && w.this.b != null) {
                try {
                    switch (message.what) {
                        case 0:
                            w.this.b.a(w.this.h);
                            return;
                        case 1:
                            w.this.b.e(w.this.j);
                            return;
                        case 2:
                            w.this.b.d(w.this.i);
                            return;
                        case 3:
                            w.this.b.c(w.this.f);
                            return;
                        case 4:
                            w.this.b.b(w.this.n);
                            return;
                        case 5:
                            w.this.b.h(w.this.k);
                            return;
                        default:
                            return;
                    }
                } catch (Throwable th) {
                    gf.b(th, "UiSettingsDelegateImp", "handleMessage");
                }
                gf.b(th, "UiSettingsDelegateImp", "handleMessage");
            }
        }
    };
    /* access modifiers changed from: private */
    public l b;
    private boolean c = true;
    private boolean d = true;
    private boolean e = true;
    /* access modifiers changed from: private */
    public boolean f = false;
    private boolean g = true;
    /* access modifiers changed from: private */
    public boolean h = true;
    /* access modifiers changed from: private */
    public boolean i = true;
    /* access modifiers changed from: private */
    public boolean j = false;
    /* access modifiers changed from: private */
    public boolean k = true;
    private int l = 0;
    private int m = 1;
    /* access modifiers changed from: private */
    public boolean n = true;
    private boolean o = false;
    private boolean p = false;

    w(l lVar) {
        this.b = lVar;
    }

    public boolean isIndoorSwitchEnabled() throws RemoteException {
        return this.n;
    }

    public void setIndoorSwitchEnabled(boolean z) throws RemoteException {
        this.n = z;
        this.a.obtainMessage(4).sendToTarget();
    }

    public void setScaleControlsEnabled(boolean z) throws RemoteException {
        this.j = z;
        this.a.obtainMessage(1).sendToTarget();
    }

    public void setZoomControlsEnabled(boolean z) throws RemoteException {
        this.h = z;
        this.a.obtainMessage(0).sendToTarget();
    }

    public void setCompassEnabled(boolean z) throws RemoteException {
        this.i = z;
        this.a.obtainMessage(2).sendToTarget();
    }

    public void setMyLocationButtonEnabled(boolean z) throws RemoteException {
        this.f = z;
        this.a.obtainMessage(3).sendToTarget();
    }

    public void setScrollGesturesEnabled(boolean z) throws RemoteException {
        this.d = z;
    }

    public void setZoomGesturesEnabled(boolean z) throws RemoteException {
        this.g = z;
    }

    public void setTiltGesturesEnabled(boolean z) throws RemoteException {
        this.e = z;
    }

    public void setRotateGesturesEnabled(boolean z) throws RemoteException {
        this.c = z;
    }

    public void setAllGesturesEnabled(boolean z) throws RemoteException {
        setRotateGesturesEnabled(z);
        setTiltGesturesEnabled(z);
        setZoomGesturesEnabled(z);
        setScrollGesturesEnabled(z);
    }

    public void setLogoPosition(int i2) throws RemoteException {
        this.l = i2;
        this.b.i(i2);
    }

    public void setZoomPosition(int i2) throws RemoteException {
        this.m = i2;
        this.b.g(i2);
    }

    public boolean isScaleControlsEnabled() throws RemoteException {
        return this.j;
    }

    public boolean isZoomControlsEnabled() throws RemoteException {
        return this.h;
    }

    public boolean isCompassEnabled() throws RemoteException {
        return this.i;
    }

    public boolean isMyLocationButtonEnabled() throws RemoteException {
        return this.f;
    }

    public boolean isScrollGesturesEnabled() throws RemoteException {
        return this.d;
    }

    public boolean isZoomGesturesEnabled() throws RemoteException {
        return this.g;
    }

    public boolean isTiltGesturesEnabled() throws RemoteException {
        return this.e;
    }

    public boolean isRotateGesturesEnabled() throws RemoteException {
        return this.c;
    }

    public int getLogoPosition() throws RemoteException {
        return this.l;
    }

    public int getZoomPosition() throws RemoteException {
        return this.m;
    }

    public void setZoomInByScreenCenter(boolean z) {
        this.o = z;
    }

    public boolean isZoomInByScreenCenter() {
        return this.o;
    }

    public void setLogoBottomMargin(int i2) {
        this.b.j(i2);
    }

    public void setLogoLeftMargin(int i2) {
        this.b.k(i2);
    }

    public float getLogoMarginRate(int i2) {
        return this.b.l(i2);
    }

    public void setLogoMarginRate(int i2, float f2) {
        this.b.a(i2, f2);
    }

    public void setGestureScaleByMapCenter(boolean z) throws RemoteException {
        this.p = z;
    }

    public boolean isGestureScaleByMapCenter() throws RemoteException {
        return this.p;
    }

    public void setLogoEnable(boolean z) {
        this.k = z;
        this.a.obtainMessage(5).sendToTarget();
    }

    public boolean isLogoEnable() {
        return this.k;
    }
}
