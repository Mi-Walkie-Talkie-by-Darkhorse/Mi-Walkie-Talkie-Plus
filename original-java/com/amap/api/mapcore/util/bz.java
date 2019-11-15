package com.amap.api.mapcore.util;

import android.graphics.Color;
import android.os.RemoteException;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.amap.api.maps.model.LatLng;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.AMapNativeRenderer;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: ArcDelegateImp */
public class bz implements cd {
    float a;
    float b;
    float c;
    float d;
    private LatLng e;
    private LatLng f;
    private LatLng g;
    private float h = 10.0f;
    private int i = ViewCompat.MEASURED_STATE_MASK;
    private float j = 0.0f;
    private boolean k = true;
    private String l;
    private l m;
    private float[] n;
    private int o = 0;
    private boolean p = false;
    private double q = 0.0d;
    private double r = 0.0d;
    private double s = 0.0d;

    public bz(l lVar) {
        this.m = lVar;
        try {
            this.l = getId();
        } catch (RemoteException e2) {
            gf.b((Throwable) e2, "ArcDelegateImp", "create");
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public boolean a() {
        return true;
    }

    public void remove() throws RemoteException {
        this.m.a(getId());
        this.m.setRunLowFrame(false);
    }

    public String getId() throws RemoteException {
        if (this.l == null) {
            this.l = this.m.c("Arc");
        }
        return this.l;
    }

    public void setZIndex(float f2) throws RemoteException {
        this.j = f2;
        this.m.f();
        this.m.setRunLowFrame(false);
    }

    public float getZIndex() throws RemoteException {
        return this.j;
    }

    public void setVisible(boolean z) throws RemoteException {
        this.k = z;
        this.m.setRunLowFrame(false);
    }

    public boolean isVisible() throws RemoteException {
        return this.k;
    }

    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        if (equals(iOverlay) || iOverlay.getId().equals(getId())) {
            return true;
        }
        return false;
    }

    public int hashCodeRemote() throws RemoteException {
        return 0;
    }

    public boolean b() throws RemoteException {
        if (this.e == null || this.f == null || this.g == null || !this.k) {
            return false;
        }
        try {
            this.p = false;
            GLMapState c2 = this.m.c();
            if (!e()) {
                FPoint[] fPointArr = new FPoint[3];
                this.n = new float[(fPointArr.length * 3)];
                FPoint obtain = FPoint.obtain();
                this.m.a(this.e.latitude, this.e.longitude, obtain);
                fPointArr[0] = obtain;
                FPoint obtain2 = FPoint.obtain();
                this.m.a(this.f.latitude, this.f.longitude, obtain2);
                fPointArr[1] = obtain2;
                FPoint obtain3 = FPoint.obtain();
                this.m.a(this.g.latitude, this.g.longitude, obtain3);
                fPointArr[2] = obtain3;
                for (int i2 = 0; i2 < 3; i2++) {
                    this.n[i2 * 3] = fPointArr[i2].x;
                    this.n[(i2 * 3) + 1] = fPointArr[i2].y;
                    this.n[(i2 * 3) + 2] = 0.0f;
                }
                this.o = fPointArr.length;
                return true;
            }
            DPoint f2 = f();
            int abs = (int) ((Math.abs(this.s - this.r) * 180.0d) / 3.141592653589793d);
            double d2 = (this.s - this.r) / ((double) abs);
            FPoint[] fPointArr2 = new FPoint[(abs + 1)];
            this.n = new float[(fPointArr2.length * 3)];
            for (int i3 = 0; i3 <= abs; i3++) {
                if (i3 == abs) {
                    FPoint obtain4 = FPoint.obtain();
                    this.m.a(this.g.latitude, this.g.longitude, obtain4);
                    fPointArr2[i3] = obtain4;
                } else {
                    GLMapState gLMapState = c2;
                    fPointArr2[i3] = a(gLMapState, (((double) i3) * d2) + this.r, f2.x, f2.y);
                }
                GLMapState gLMapState2 = c2;
                fPointArr2[i3] = a(gLMapState2, (((double) i3) * d2) + this.r, f2.x, f2.y);
                this.n[i3 * 3] = fPointArr2[i3].x;
                this.n[(i3 * 3) + 1] = fPointArr2[i3].y;
                this.n[(i3 * 3) + 2] = 0.0f;
            }
            f2.recycle();
            this.o = fPointArr2.length;
            return true;
        } catch (Throwable th) {
            gf.b(th, "ArcDelegateImp", "calMapFPoint");
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    private FPoint a(GLMapState gLMapState, double d2, double d3, double d4) {
        int cos = (int) ((Math.cos(d2) * this.q) + d3);
        int i2 = (int) (((-Math.sin(d2)) * this.q) + d4);
        FPoint obtain = FPoint.obtain();
        gLMapState.geo2Map(cos, i2, obtain);
        return obtain;
    }

    private boolean e() {
        if (Math.abs(((this.e.latitude - this.f.latitude) * (this.f.longitude - this.g.longitude)) - ((this.e.longitude - this.f.longitude) * (this.f.latitude - this.g.latitude))) < 1.0E-6d) {
            return false;
        }
        return true;
    }

    private DPoint f() {
        IPoint obtain = IPoint.obtain();
        this.m.a(this.e.latitude, this.e.longitude, obtain);
        IPoint obtain2 = IPoint.obtain();
        this.m.a(this.f.latitude, this.f.longitude, obtain2);
        IPoint obtain3 = IPoint.obtain();
        this.m.a(this.g.latitude, this.g.longitude, obtain3);
        double d2 = (double) obtain.x;
        double d3 = (double) obtain.y;
        double d4 = (double) obtain2.x;
        double d5 = (double) obtain2.y;
        double d6 = (double) obtain3.x;
        double d7 = (double) obtain3.y;
        double d8 = (((d7 - d3) * ((((d5 * d5) - (d3 * d3)) + (d4 * d4)) - (d2 * d2))) + ((d5 - d3) * ((((d3 * d3) - (d7 * d7)) + (d2 * d2)) - (d6 * d6)))) / (((2.0d * (d4 - d2)) * (d7 - d3)) - ((2.0d * (d6 - d2)) * (d5 - d3)));
        double d9 = (((d6 - d2) * ((((d4 * d4) - (d2 * d2)) + (d5 * d5)) - (d3 * d3))) + ((d4 - d2) * ((((d2 * d2) - (d6 * d6)) + (d3 * d3)) - (d7 * d7)))) / (((2.0d * (d5 - d3)) * (d6 - d2)) - ((2.0d * (d7 - d3)) * (d4 - d2)));
        this.q = Math.sqrt(((d2 - d8) * (d2 - d8)) + ((d3 - d9) * (d3 - d9)));
        this.r = a(d8, d9, d2, d3);
        double a2 = a(d8, d9, d4, d5);
        this.s = a(d8, d9, d6, d7);
        if (this.r < this.s) {
            if (a2 <= this.r || a2 >= this.s) {
                this.s -= 6.283185307179586d;
            }
        } else if (a2 <= this.s || a2 >= this.r) {
            this.s += 6.283185307179586d;
        }
        obtain.recycle();
        obtain2.recycle();
        obtain3.recycle();
        return DPoint.obtain(d8, d9);
    }

    private double a(double d2, double d3, double d4, double d5) {
        double d6 = (d3 - d5) / this.q;
        if (Math.abs(d6) > 1.0d) {
            d6 = Math.signum(d6);
        }
        double asin = Math.asin(d6);
        if (asin >= 0.0d) {
            if (d4 < d2) {
                return 3.141592653589793d - Math.abs(asin);
            }
            return asin;
        } else if (d4 < d2) {
            return 3.141592653589793d - asin;
        } else {
            return asin + 6.283185307179586d;
        }
    }

    public void c() throws RemoteException {
        if (this.e != null && this.f != null && this.g != null && this.k) {
            b();
            if (this.n != null && this.o > 0) {
                float mapLenWithWin = this.m.c().getMapLenWithWin((int) this.h);
                this.m.c().getMapLenWithWin(1);
                AMapNativeRenderer.nativeDrawLineByTextureID(this.n, this.n.length, mapLenWithWin, this.m.d(), this.b, this.c, this.d, this.a, 0.0f, false, true, false, this.m.u());
            }
            this.p = true;
        }
    }

    public void setStrokeWidth(float f2) throws RemoteException {
        this.h = f2;
        this.m.setRunLowFrame(false);
    }

    public float getStrokeWidth() throws RemoteException {
        return this.h;
    }

    public void setStrokeColor(int i2) throws RemoteException {
        this.i = i2;
        this.a = ((float) Color.alpha(i2)) / 255.0f;
        this.b = ((float) Color.red(i2)) / 255.0f;
        this.c = ((float) Color.green(i2)) / 255.0f;
        this.d = ((float) Color.blue(i2)) / 255.0f;
        this.m.setRunLowFrame(false);
    }

    public int getStrokeColor() throws RemoteException {
        return this.i;
    }

    public void destroy() {
        try {
            this.e = null;
            this.f = null;
            this.g = null;
        } catch (Throwable th) {
            gf.b(th, "ArcDelegateImp", "destroy");
            ThrowableExtension.printStackTrace(th);
            Log.d("destroy erro", "ArcDelegateImp destroy");
        }
    }

    public boolean d() {
        return this.p;
    }

    public void a(LatLng latLng) {
        this.e = latLng;
    }

    public void b(LatLng latLng) {
        this.f = latLng;
    }

    public void c(LatLng latLng) {
        this.g = latLng;
    }

    public boolean isAboveMaskLayer() {
        return false;
    }

    public void setAboveMaskLayer(boolean z) {
    }
}
