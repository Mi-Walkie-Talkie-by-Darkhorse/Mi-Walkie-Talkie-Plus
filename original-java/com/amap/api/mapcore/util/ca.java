package com.amap.api.mapcore.util;

import android.opengl.GLES20;
import android.os.RemoteException;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.amap.api.mapcore.util.cx.d;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.BaseHoleOptions;
import com.amap.api.maps.model.CircleHoleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.PolygonHoleOptions;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapConfig;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: CircleDelegateImp */
public class ca implements ce {
    private static float v = 4.0075016E7f;
    private static int w = 256;
    private static int x = 20;
    private static double y = 1.0E10d;
    private LatLng a = null;
    private double b = 0.0d;
    private float c = 10.0f;
    private int d = ViewCompat.MEASURED_STATE_MASK;
    private int e = 0;
    private float f = 0.0f;
    private boolean g = true;
    private String h;
    private l i;
    private FloatBuffer j;
    private int k = 0;
    private boolean l = false;
    private IPoint m = IPoint.obtain();
    private FPoint n = FPoint.obtain();
    private List<BaseHoleOptions> o;
    private List<BaseHoleOptions> p;
    private int q;
    private int r;
    private FloatBuffer s;
    private FloatBuffer t;
    private d u;

    public ca(l lVar) {
        this.i = lVar;
        try {
            this.h = getId();
        } catch (RemoteException e2) {
            gf.b((Throwable) e2, "CircleDelegateImp", "create");
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public boolean a() {
        return true;
    }

    public void remove() throws RemoteException {
        this.i.a(getId());
        this.i.setRunLowFrame(false);
    }

    public String getId() throws RemoteException {
        if (this.h == null) {
            this.h = this.i.c("Circle");
        }
        return this.h;
    }

    public void setZIndex(float f2) throws RemoteException {
        this.f = f2;
        this.i.f();
        this.i.setRunLowFrame(false);
    }

    public float getZIndex() throws RemoteException {
        return this.f;
    }

    public void setVisible(boolean z) throws RemoteException {
        this.g = z;
        this.i.setRunLowFrame(false);
    }

    public boolean isVisible() throws RemoteException {
        return this.g;
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
        this.l = false;
        if (this.a != null) {
            float[] fArr = new float[1086];
            double b2 = b(this.a.latitude) * this.b;
            GLMapState c2 = this.i.c();
            c2.geo2Map(this.m.x, this.m.y, this.n);
            fArr[0] = this.n.x;
            fArr[1] = this.n.y;
            fArr[2] = 0.0f;
            for (int i2 = 0; i2 < 361; i2++) {
                double d2 = (((double) i2) * 3.141592653589793d) / 180.0d;
                double sin = Math.sin(d2) * b2;
                int i3 = (int) (sin + ((double) this.m.x));
                int cos = (int) ((Math.cos(d2) * b2) + ((double) this.m.y));
                c2.geo2Map(i3, cos, this.n);
                this.n.x = (float) (i3 - this.i.getMapConfig().getS_x());
                this.n.y = (float) (cos - this.i.getMapConfig().getS_y());
                fArr[(i2 + 1) * 3] = this.n.x;
                fArr[((i2 + 1) * 3) + 1] = this.n.y;
                fArr[((i2 + 1) * 3) + 2] = 0.0f;
            }
            this.k = fArr.length / 3;
            this.j = ee.a(fArr);
        }
        return true;
    }

    private void f() {
        if (this.i != null) {
            this.u = (d) this.i.t(3);
        }
    }

    public void c() throws RemoteException {
        if (this.a != null && this.b > 0.0d && this.g) {
            b();
            g();
            if (this.j != null && this.k > 0) {
                if (this.u == null || this.u.c()) {
                    f();
                }
                Cdo.a(this.u, this.e, this.d, this.j, this.c, this.k, this.i.u(), 0, 0);
            }
            h();
            this.l = true;
        }
    }

    /* access modifiers changed from: 0000 */
    public void e() {
        this.k = 0;
        if (this.j != null) {
            this.j.clear();
        }
        this.i.setRunLowFrame(false);
        setHoleOptions(this.p);
    }

    public void setCenter(LatLng latLng) throws RemoteException {
        if (latLng != null) {
            this.a = latLng;
            GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, this.m);
            e();
        }
    }

    public LatLng getCenter() throws RemoteException {
        return this.a;
    }

    public void setRadius(double d2) throws RemoteException {
        this.b = d2;
        e();
    }

    public double getRadius() throws RemoteException {
        return this.b;
    }

    public void setStrokeWidth(float f2) throws RemoteException {
        this.c = f2;
        this.i.setRunLowFrame(false);
    }

    public float getStrokeWidth() throws RemoteException {
        return this.c;
    }

    public void setStrokeColor(int i2) throws RemoteException {
        this.d = i2;
        this.i.setRunLowFrame(false);
    }

    public int getStrokeColor() throws RemoteException {
        return this.d;
    }

    public void setFillColor(int i2) throws RemoteException {
        this.e = i2;
        this.i.setRunLowFrame(false);
    }

    public int getFillColor() throws RemoteException {
        return this.e;
    }

    private float a(double d2) {
        return (float) ((Math.cos((3.141592653589793d * d2) / 180.0d) * ((double) v)) / ((double) (w << x)));
    }

    private double b(double d2) {
        return 1.0d / ((double) a(d2));
    }

    public void destroy() {
        try {
            this.a = null;
            if (this.j != null) {
                this.j.clear();
                this.j = null;
            }
            if (this.s != null) {
                this.s.clear();
                this.s = null;
            }
            if (this.t != null) {
                this.t.clear();
                this.t = null;
            }
            if (this.o != null) {
                this.o.clear();
            }
            if (this.p != null) {
                this.p.clear();
            }
            this.o = null;
            this.p = null;
        } catch (Throwable th) {
            gf.b(th, "CircleDelegateImp", "destroy");
            ThrowableExtension.printStackTrace(th);
            Log.d("destroy erro", "CircleDelegateImp destroy");
        }
    }

    public boolean contains(LatLng latLng) throws RemoteException {
        if (this.o != null && this.o.size() > 0) {
            for (BaseHoleOptions a2 : this.o) {
                if (ee.a(a2, latLng)) {
                    return false;
                }
            }
        }
        return this.b >= ((double) AMapUtils.calculateLineDistance(this.a, latLng));
    }

    public boolean d() {
        return this.l;
    }

    public boolean isAboveMaskLayer() {
        return false;
    }

    public void setAboveMaskLayer(boolean z) {
    }

    public void setHoleOptions(List<BaseHoleOptions> list) {
        try {
            this.p = list;
            if (this.o == null) {
                this.o = new ArrayList();
            } else {
                this.o.clear();
            }
            if (list != null) {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    BaseHoleOptions baseHoleOptions = (BaseHoleOptions) list.get(i2);
                    if (baseHoleOptions instanceof PolygonHoleOptions) {
                        PolygonHoleOptions polygonHoleOptions = (PolygonHoleOptions) baseHoleOptions;
                        if (a(polygonHoleOptions) && !ee.a(this.o, polygonHoleOptions)) {
                            this.o.add(polygonHoleOptions);
                        }
                    } else if (baseHoleOptions instanceof CircleHoleOptions) {
                        CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
                        if (b(circleHoleOptions) && !ee.a(this.o, circleHoleOptions)) {
                            this.o.add(circleHoleOptions);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            gf.b(th, "PolygonDelegateImp", "setHoleOptions");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public List<BaseHoleOptions> getHoleOptions() throws RemoteException {
        return this.o;
    }

    private boolean a(PolygonHoleOptions polygonHoleOptions) {
        boolean z = true;
        try {
            List points = polygonHoleOptions.getPoints();
            int i2 = 0;
            while (i2 < points.size()) {
                boolean contains = contains((LatLng) points.get(i2));
                if (!contains) {
                    return contains;
                }
                i2++;
                z = contains;
            }
            return z;
        } catch (Throwable th) {
            Throwable th2 = th;
            gf.b(th2, "CircleDelegateImp", "isPolygonInCircle");
            ThrowableExtension.printStackTrace(th2);
            return true;
        }
    }

    private boolean b(CircleHoleOptions circleHoleOptions) {
        try {
            if (((double) AMapUtils.calculateLineDistance(circleHoleOptions.getCenter(), getCenter())) <= getRadius() - circleHoleOptions.getRadius()) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            gf.b(th, "CircleDelegateImp", "isCircleInCircle");
            ThrowableExtension.printStackTrace(th);
            return true;
        }
    }

    private void g() throws RemoteException {
        MapConfig mapConfig = this.i.getMapConfig();
        if (this.o != null && this.o.size() > 0) {
            GLES20.glClearStencil(0);
            GLES20.glStencilMask(255);
            GLES20.glClear(1024);
            GLES20.glFlush();
            GLES20.glEnable(2960);
            GLES20.glColorMask(false, false, false, false);
            GLES20.glStencilFunc(512, 1, 255);
            GLES20.glStencilOp(7681, 7680, 7680);
            for (int i2 = 0; i2 < this.o.size(); i2++) {
                BaseHoleOptions baseHoleOptions = (BaseHoleOptions) this.o.get(i2);
                if (baseHoleOptions instanceof PolygonHoleOptions) {
                    a(a(((PolygonHoleOptions) baseHoleOptions).getPoints()), mapConfig.getS_x(), mapConfig.getS_y());
                } else if (baseHoleOptions instanceof CircleHoleOptions) {
                    CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
                    this.i.f();
                    a(circleHoleOptions);
                }
                if (this.s != null && this.q > 0) {
                    if (this.u == null || this.u.c()) {
                        f();
                    }
                    if (baseHoleOptions instanceof PolygonHoleOptions) {
                        Cdo.a(this.u, -1, this.e, this.s, getStrokeWidth(), this.t, this.q, this.r, this.i.u());
                    } else if (baseHoleOptions instanceof CircleHoleOptions) {
                        Cdo.a(this.u, -1, -1, this.s, 10.0f, this.q, this.i.u(), 0, 0);
                    }
                }
            }
            GLES20.glColorMask(true, true, true, true);
            GLES20.glStencilFunc(517, 1, 255);
            GLES20.glStencilMask(0);
        }
    }

    private void h() throws RemoteException {
        GLES20.glClearStencil(0);
        GLES20.glClear(1024);
        GLES20.glDisable(2960);
        MapConfig mapConfig = this.i.getMapConfig();
        if (this.o != null && this.o.size() > 0) {
            for (int i2 = 0; i2 < this.o.size(); i2++) {
                BaseHoleOptions baseHoleOptions = (BaseHoleOptions) this.o.get(i2);
                if (baseHoleOptions instanceof PolygonHoleOptions) {
                    a(a(((PolygonHoleOptions) baseHoleOptions).getPoints()), mapConfig.getS_x(), mapConfig.getS_y());
                } else if (baseHoleOptions instanceof CircleHoleOptions) {
                    CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
                    this.i.f();
                    a(circleHoleOptions);
                }
                if (this.s != null && this.q > 0) {
                    if (this.u == null || this.u.c()) {
                        f();
                    }
                    if (baseHoleOptions instanceof PolygonHoleOptions) {
                        Cdo.b(this.u, 0, this.d, this.s, this.c, this.t, this.q, this.r, this.i.u());
                    } else if (baseHoleOptions instanceof CircleHoleOptions) {
                        Cdo.a(this.u, 0, this.d, this.s, this.c, this.q, this.i.u());
                    }
                }
            }
        }
    }

    static IPoint[] a(IPoint[] iPointArr) {
        int length = iPointArr.length;
        double[] dArr = new double[(length * 2)];
        for (int i2 = 0; i2 < length; i2++) {
            dArr[i2 * 2] = ((double) iPointArr[i2].x) * y;
            dArr[(i2 * 2) + 1] = ((double) iPointArr[i2].y) * y;
        }
        ec a2 = new dn().a(dArr);
        int i3 = a2.b;
        IPoint[] iPointArr2 = new IPoint[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            iPointArr2[i4] = new IPoint();
            iPointArr2[i4].x = (int) (dArr[a2.a(i4) * 2] / y);
            iPointArr2[i4].y = (int) (dArr[(a2.a(i4) * 2) + 1] / y);
        }
        return iPointArr2;
    }

    private void a(List<IPoint> list, int i2, int i3) throws RemoteException {
        if (list.size() >= 2) {
            float[] fArr = new float[(list.size() * 3)];
            IPoint[] iPointArr = new IPoint[list.size()];
            int i4 = 0;
            for (IPoint iPoint : list) {
                fArr[i4 * 3] = (float) (iPoint.x - i2);
                fArr[(i4 * 3) + 1] = (float) (iPoint.y - i3);
                fArr[(i4 * 3) + 2] = 0.0f;
                iPointArr[i4] = iPoint;
                i4++;
            }
            IPoint[] a2 = a(iPointArr);
            if (a2.length == 0) {
                if (y == 1.0E10d) {
                    y = 1.0E8d;
                } else {
                    y = 1.0E10d;
                }
                a2 = a(iPointArr);
            }
            float[] fArr2 = new float[(a2.length * 3)];
            int i5 = 0;
            for (IPoint iPoint2 : a2) {
                fArr2[i5 * 3] = (float) (iPoint2.x - i2);
                fArr2[(i5 * 3) + 1] = (float) (iPoint2.y - i3);
                fArr2[(i5 * 3) + 2] = 0.0f;
                i5++;
            }
            this.q = iPointArr.length;
            this.r = a2.length;
            this.s = ee.a(fArr);
            this.t = ee.a(fArr2);
        }
    }

    private List<IPoint> a(List<LatLng> list) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            LatLng latLng = null;
            for (LatLng latLng2 : list) {
                if (!latLng2.equals(latLng)) {
                    IPoint obtain = IPoint.obtain();
                    this.i.a(latLng2.latitude, latLng2.longitude, obtain);
                    arrayList.add(obtain);
                    latLng = latLng2;
                }
            }
            int size = arrayList.size();
            if (size > 1) {
                IPoint iPoint = (IPoint) arrayList.get(0);
                IPoint iPoint2 = (IPoint) arrayList.get(size - 1);
                if (iPoint.x == iPoint2.x && iPoint.y == iPoint2.y) {
                    arrayList.remove(size - 1);
                }
            }
        }
        if (ee.a((List<IPoint>) arrayList, 0, arrayList.size())) {
            Collections.reverse(arrayList);
        }
        return arrayList;
    }

    public void a(CircleHoleOptions circleHoleOptions) throws RemoteException {
        if (circleHoleOptions.getCenter() != null) {
            IPoint obtain = IPoint.obtain();
            FPoint obtain2 = FPoint.obtain();
            GLMapState.lonlat2Geo(circleHoleOptions.getCenter().longitude, circleHoleOptions.getCenter().latitude, obtain);
            float[] fArr = new float[1086];
            double b2 = b(circleHoleOptions.getCenter().latitude) * circleHoleOptions.getRadius();
            GLMapState c2 = this.i.c();
            c2.geo2Map(obtain.x, obtain.y, obtain2);
            fArr[0] = obtain2.x;
            fArr[1] = obtain2.y;
            fArr[2] = 0.0f;
            for (int i2 = 0; i2 < 361; i2++) {
                double d2 = (((double) i2) * 3.141592653589793d) / 180.0d;
                double sin = Math.sin(d2) * b2;
                int i3 = (int) (sin + ((double) obtain.x));
                int cos = (int) ((Math.cos(d2) * b2) + ((double) obtain.y));
                c2.geo2Map(i3, cos, obtain2);
                obtain2.x = (float) (i3 - this.i.getMapConfig().getS_x());
                obtain2.y = (float) (cos - this.i.getMapConfig().getS_y());
                fArr[(i2 + 1) * 3] = obtain2.x;
                fArr[((i2 + 1) * 3) + 1] = obtain2.y;
                fArr[((i2 + 1) * 3) + 2] = 0.0f;
            }
            this.q = fArr.length / 3;
            this.s = ee.a(fArr);
            obtain.recycle();
            obtain2.recycle();
        }
    }
}
