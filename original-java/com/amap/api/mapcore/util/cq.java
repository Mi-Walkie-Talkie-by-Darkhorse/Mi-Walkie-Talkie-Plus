package com.amap.api.mapcore.util;

import android.graphics.Color;
import android.graphics.Rect;
import android.os.RemoteException;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.autonavi.amap.mapcore.AMapNativeRenderer;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapConfig;
import com.autonavi.amap.mapcore.Rectangle;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

/* compiled from: NavigateArrowDelegateImp */
public class cq implements ch {
    float a;
    float b;
    float c;
    float d;
    float e;
    float f;
    float g;
    float h;
    Rect i = null;
    float[] j;
    int k = 0;
    private l l;
    private float m = 10.0f;
    private int n = ViewCompat.MEASURED_STATE_MASK;
    private int o = ViewCompat.MEASURED_STATE_MASK;
    private float p = 0.0f;
    private boolean q = true;
    private String r;
    private List<IPoint> s = new Vector();
    private int t = 0;
    private boolean u = false;
    private Object v = new Object();
    private LatLngBounds w = null;

    public cq(l lVar) {
        this.l = lVar;
        try {
            this.r = getId();
        } catch (RemoteException e2) {
            gf.b((Throwable) e2, "NavigateArrowDelegateImp", "create");
            ThrowableExtension.printStackTrace(e2);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(List<LatLng> list) throws RemoteException {
        synchronized (this.v) {
            this.s.clear();
            if (this.i == null) {
                this.i = new Rect();
            }
            ee.a(this.i);
            if (list != null) {
                LatLng latLng = null;
                for (LatLng latLng2 : list) {
                    if (latLng2 != null && !latLng2.equals(latLng)) {
                        IPoint obtain = IPoint.obtain();
                        this.l.a(latLng2.latitude, latLng2.longitude, obtain);
                        this.s.add(obtain);
                        ee.b(this.i, obtain.x, obtain.y);
                        latLng = latLng2;
                    }
                }
            }
            this.t = 0;
            this.i.sort();
        }
        this.l.setRunLowFrame(false);
    }

    public void remove() throws RemoteException {
        this.l.a(getId());
        this.l.setRunLowFrame(false);
    }

    public String getId() throws RemoteException {
        if (this.r == null) {
            this.r = this.l.c("NavigateArrow");
        }
        return this.r;
    }

    public void setPoints(List<LatLng> list) throws RemoteException {
        a(list);
    }

    public List<LatLng> getPoints() throws RemoteException {
        return b();
    }

    private List<LatLng> b() throws RemoteException {
        ArrayList arrayList;
        if (this.s == null) {
            return null;
        }
        synchronized (this.v) {
            arrayList = new ArrayList();
            for (IPoint iPoint : this.s) {
                if (iPoint != null) {
                    DPoint obtain = DPoint.obtain();
                    this.l.a(iPoint.x, iPoint.y, obtain);
                    arrayList.add(new LatLng(obtain.y, obtain.x));
                    obtain.recycle();
                }
            }
        }
        return arrayList;
    }

    public void setWidth(float f2) throws RemoteException {
        this.m = f2;
        this.l.setRunLowFrame(false);
    }

    public float getWidth() throws RemoteException {
        return this.m;
    }

    public void setTopColor(int i2) throws RemoteException {
        this.n = i2;
        this.a = ((float) Color.alpha(i2)) / 255.0f;
        this.b = ((float) Color.red(i2)) / 255.0f;
        this.c = ((float) Color.green(i2)) / 255.0f;
        this.d = ((float) Color.blue(i2)) / 255.0f;
        this.l.setRunLowFrame(false);
    }

    public int getTopColor() throws RemoteException {
        return this.n;
    }

    public void setSideColor(int i2) throws RemoteException {
        this.o = i2;
        this.e = ((float) Color.alpha(i2)) / 255.0f;
        this.f = ((float) Color.red(i2)) / 255.0f;
        this.g = ((float) Color.green(i2)) / 255.0f;
        this.h = ((float) Color.blue(i2)) / 255.0f;
        this.l.setRunLowFrame(false);
    }

    public int getSideColor() throws RemoteException {
        return this.o;
    }

    public void setZIndex(float f2) throws RemoteException {
        this.p = f2;
        this.l.f();
        this.l.setRunLowFrame(false);
    }

    public float getZIndex() throws RemoteException {
        return this.p;
    }

    public void setVisible(boolean z) throws RemoteException {
        this.q = z;
        this.l.setRunLowFrame(false);
    }

    public boolean isVisible() throws RemoteException {
        return this.q;
    }

    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        if (equals(iOverlay) || iOverlay.getId().equals(getId())) {
            return true;
        }
        return false;
    }

    public int hashCodeRemote() throws RemoteException {
        return super.hashCode();
    }

    public boolean a() {
        if (this.i == null) {
            return false;
        }
        Rectangle geoRectangle = this.l.getMapConfig().getGeoRectangle();
        if (geoRectangle == null || !geoRectangle.isOverlap(this.i)) {
            return false;
        }
        return true;
    }

    public boolean a(MapConfig mapConfig) throws RemoteException {
        synchronized (this.v) {
            int s_x = mapConfig.getS_x();
            int s_y = mapConfig.getS_y();
            this.u = false;
            int size = this.s.size();
            if (this.j == null || this.j.length < size * 3) {
                this.j = new float[(size * 3)];
            }
            this.k = size * 3;
            int i2 = 0;
            for (IPoint iPoint : this.s) {
                this.j[i2 * 3] = (float) (iPoint.x - s_x);
                this.j[(i2 * 3) + 1] = (float) (iPoint.y - s_y);
                this.j[(i2 * 3) + 2] = 0.0f;
                i2++;
            }
            this.t = this.s.size();
        }
        return true;
    }

    public void c() throws RemoteException {
        if (this.s != null && this.s.size() != 0 && this.m > 0.0f) {
            a(this.l.getMapConfig());
            if (this.j != null && this.t > 0) {
                AMapNativeRenderer.nativeDrawLineByTextureID(this.j, this.k, this.l.c().getMapLenWithWin((int) this.m), this.l.d(), this.b, this.c, this.d, this.a, 0.0f, false, true, true, this.l.u());
            }
            this.u = true;
        }
    }

    public void destroy() {
        try {
            if (this.j != null) {
                this.j = null;
            }
        } catch (Throwable th) {
            gf.b(th, "NavigateArrowDelegateImp", "destroy");
            ThrowableExtension.printStackTrace(th);
            Log.d("destroy erro", "NavigateArrowDelegateImp destroy");
        }
    }

    public boolean d() {
        return this.u;
    }

    public boolean isAboveMaskLayer() {
        return false;
    }

    public void setAboveMaskLayer(boolean z) {
    }
}
