package com.amap.api.mapcore.util;

import android.graphics.Color;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.os.RemoteException;
import com.amap.api.mapcore.util.cx.d;
import com.amap.api.maps.model.BaseHoleOptions;
import com.amap.api.maps.model.CircleHoleOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.LatLngBounds.Builder;
import com.amap.api.maps.model.PolygonHoleOptions;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.FPointBounds;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapConfig;
import com.autonavi.amap.mapcore.Rectangle;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

/* compiled from: PolygonDelegateImp */
public class cr implements ck {
    private static int A = 256;
    private static int B = 20;
    private static double G = 1.0E10d;
    private static float z = 4.0075016E7f;
    private int C;
    private int D;
    private FloatBuffer E;
    private FloatBuffer F;
    FPointBounds a = null;
    Rect b = null;
    private l c;
    private float d = 0.0f;
    private boolean e = true;
    private String f;
    private float g;
    private int h;
    private int i;
    private List<LatLng> j;
    private List<IPoint> k = new Vector();
    private List<BaseHoleOptions> l = new Vector();
    private List<BaseHoleOptions> m;
    private List<FPoint> n = new ArrayList();
    private FloatBuffer o;
    private FloatBuffer p;
    private int q = 0;
    private int r = 0;
    private LatLngBounds s = null;
    private boolean t = false;
    private float u = 0.0f;
    private List<IPoint> v = new ArrayList();
    private Object w = new Object();
    private float x = 0.0f;
    private d y;

    public cr(l lVar) {
        this.c = lVar;
        try {
            this.f = getId();
        } catch (RemoteException e2) {
            gf.b((Throwable) e2, "PolygonDelegateImp", "create");
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public void remove() throws RemoteException {
        this.c.a(getId());
        this.c.setRunLowFrame(false);
    }

    public String getId() throws RemoteException {
        if (this.f == null) {
            this.f = this.c.c("Polygon");
        }
        return this.f;
    }

    public void setPoints(List<LatLng> list) throws RemoteException {
        synchronized (this.w) {
            this.j = list;
            a(list);
            this.c.setRunLowFrame(false);
            setHoleOptions(this.m);
        }
    }

    public List<LatLng> getPoints() throws RemoteException {
        return this.j;
    }

    public void setZIndex(float f2) throws RemoteException {
        this.d = f2;
        this.c.f();
        this.c.setRunLowFrame(false);
    }

    public float getZIndex() throws RemoteException {
        return this.d;
    }

    public void setVisible(boolean z2) throws RemoteException {
        this.e = z2;
        this.c.setRunLowFrame(false);
    }

    public boolean isVisible() throws RemoteException {
        return this.e;
    }

    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        if (equals(iOverlay) || iOverlay.getId().equals(getId())) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public void a(List<LatLng> list) throws RemoteException {
        Builder builder = LatLngBounds.builder();
        if (this.b == null) {
            this.b = new Rect();
        }
        ee.a(this.b);
        this.k.clear();
        if (list != null) {
            LatLng latLng = null;
            for (LatLng latLng2 : list) {
                if (!latLng2.equals(latLng)) {
                    IPoint obtain = IPoint.obtain();
                    this.c.a(latLng2.latitude, latLng2.longitude, obtain);
                    this.k.add(obtain);
                    ee.b(this.b, obtain.x, obtain.y);
                    builder.include(latLng2);
                    latLng = latLng2;
                }
            }
            int size = this.k.size();
            if (size > 1) {
                IPoint iPoint = (IPoint) this.k.get(0);
                IPoint iPoint2 = (IPoint) this.k.get(size - 1);
                if (iPoint.x == iPoint2.x && iPoint.y == iPoint2.y) {
                    this.k.remove(size - 1);
                }
            }
        }
        this.b.sort();
        this.s = builder.build();
        if (this.o != null) {
            this.o.clear();
        }
        if (this.p != null) {
            this.p.clear();
        }
        if (ee.a(this.k, 0, this.k.size())) {
            Collections.reverse(this.k);
        }
        this.q = 0;
        this.r = 0;
        this.c.setRunLowFrame(false);
    }

    public int hashCodeRemote() throws RemoteException {
        return super.hashCode();
    }

    public boolean a() {
        if (this.c.getMapConfig().getGeoRectangle().isOverlap(this.b)) {
            return true;
        }
        return false;
    }

    private void b() {
        if (this.c != null) {
            this.y = (d) this.c.t(3);
        }
    }

    public void c() throws RemoteException {
        if (this.k != null && this.k.size() != 0) {
            MapConfig mapConfig = this.c.getMapConfig();
            Rectangle geoRectangle = mapConfig.getGeoRectangle();
            IPoint[] clipRect = geoRectangle.getClipRect();
            List<IPoint> list = this.k;
            if (a(geoRectangle)) {
                synchronized (this.w) {
                    list = ee.a(clipRect, this.k, true);
                }
            }
            e();
            if (list.size() > 2) {
                b(list, mapConfig.getS_x(), mapConfig.getS_y());
                if (this.o != null && this.p != null && this.q > 0 && this.r > 0) {
                    if (this.y == null || this.y.c()) {
                        b();
                    }
                    Cdo.a(this.y, this.h, this.i, this.o, this.g, this.p, this.q, this.r, this.c.u());
                }
            }
            f();
            this.t = true;
        }
    }

    private void e() throws RemoteException {
        MapConfig mapConfig = this.c.getMapConfig();
        if (this.l != null && this.l.size() > 0) {
            GLES20.glClearStencil(0);
            GLES20.glStencilMask(255);
            GLES20.glClear(1024);
            GLES20.glFlush();
            GLES20.glEnable(2960);
            GLES20.glColorMask(false, false, false, false);
            GLES20.glStencilFunc(512, 1, 255);
            GLES20.glStencilOp(7681, 7680, 7680);
            for (int i2 = 0; i2 < this.l.size(); i2++) {
                BaseHoleOptions baseHoleOptions = (BaseHoleOptions) this.l.get(i2);
                if (baseHoleOptions instanceof PolygonHoleOptions) {
                    a(b(((PolygonHoleOptions) baseHoleOptions).getPoints()), mapConfig.getS_x(), mapConfig.getS_y());
                } else if (baseHoleOptions instanceof CircleHoleOptions) {
                    CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
                    this.c.f();
                    a(circleHoleOptions);
                }
                if (this.E != null && this.C > 0) {
                    if (this.y == null || this.y.c()) {
                        b();
                    }
                    if (baseHoleOptions instanceof PolygonHoleOptions) {
                        Cdo.a(this.y, -1, this.i, this.E, this.g, this.F, this.C, this.D, this.c.u());
                    } else if (baseHoleOptions instanceof CircleHoleOptions) {
                        Cdo.a(this.y, Color.argb(200, 80, 1, 1), Color.argb(200, 1, 1, 1), this.E, 5.0f, this.C, this.c.u(), 0, 0);
                    }
                }
            }
            GLES20.glColorMask(true, true, true, true);
            GLES20.glStencilFunc(517, 1, 255);
            GLES20.glStencilMask(0);
        }
    }

    private void f() throws RemoteException {
        GLES20.glClearStencil(0);
        GLES20.glClear(1024);
        GLES20.glDisable(2960);
        MapConfig mapConfig = this.c.getMapConfig();
        if (this.l != null && this.l.size() > 0) {
            for (int i2 = 0; i2 < this.l.size(); i2++) {
                BaseHoleOptions baseHoleOptions = (BaseHoleOptions) this.l.get(i2);
                if (baseHoleOptions instanceof PolygonHoleOptions) {
                    a(b(((PolygonHoleOptions) baseHoleOptions).getPoints()), mapConfig.getS_x(), mapConfig.getS_y());
                } else if (baseHoleOptions instanceof CircleHoleOptions) {
                    CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
                    this.c.f();
                    a(circleHoleOptions);
                }
                if (this.E != null && this.C > 0) {
                    if (this.y == null || this.y.c()) {
                        b();
                    }
                    if (baseHoleOptions instanceof PolygonHoleOptions) {
                        Cdo.b(this.y, 0, this.i, this.E, this.g, this.F, this.C, this.D, this.c.u());
                    } else if (baseHoleOptions instanceof CircleHoleOptions) {
                        Cdo.a(this.y, 0, this.i, this.E, this.g, this.C, this.c.u());
                    }
                }
            }
        }
    }

    private float a(double d2) {
        return (float) ((Math.cos((3.141592653589793d * d2) / 180.0d) * ((double) z)) / ((double) (A << B)));
    }

    private double b(double d2) {
        return 1.0d / ((double) a(d2));
    }

    public void a(CircleHoleOptions circleHoleOptions) throws RemoteException {
        if (circleHoleOptions.getCenter() != null) {
            IPoint obtain = IPoint.obtain();
            FPoint obtain2 = FPoint.obtain();
            GLMapState.lonlat2Geo(circleHoleOptions.getCenter().longitude, circleHoleOptions.getCenter().latitude, obtain);
            float[] fArr = new float[1086];
            double b2 = b(circleHoleOptions.getCenter().latitude) * circleHoleOptions.getRadius();
            GLMapState c2 = this.c.c();
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
                obtain2.x = (float) (i3 - this.c.getMapConfig().getS_x());
                obtain2.y = (float) (cos - this.c.getMapConfig().getS_y());
                fArr[(i2 + 1) * 3] = obtain2.x;
                fArr[((i2 + 1) * 3) + 1] = obtain2.y;
                fArr[((i2 + 1) * 3) + 2] = 0.0f;
            }
            this.C = fArr.length / 3;
            this.E = ee.a(fArr);
            obtain.recycle();
            obtain2.recycle();
        }
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
                if (G == 1.0E10d) {
                    G = 1.0E8d;
                } else {
                    G = 1.0E10d;
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
            this.C = iPointArr.length;
            this.D = a2.length;
            this.E = ee.a(fArr);
            this.F = ee.a(fArr2);
        }
    }

    private boolean a(Rectangle rectangle) {
        this.x = this.c.g();
        g();
        if (this.x <= 10.0f || rectangle == null) {
            return false;
        }
        try {
            if (!rectangle.contains(this.b)) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    private void b(List<IPoint> list, int i2, int i3) throws RemoteException {
        g();
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        if (size >= 2) {
            IPoint iPoint = (IPoint) list.get(0);
            arrayList.add(iPoint);
            int i4 = 1;
            while (true) {
                int i5 = i4;
                IPoint iPoint2 = iPoint;
                if (i5 >= size - 1) {
                    break;
                }
                iPoint = (IPoint) list.get(i5);
                if (a(iPoint2, iPoint)) {
                    arrayList.add(iPoint);
                } else {
                    iPoint = iPoint2;
                }
                i4 = i5 + 1;
            }
            arrayList.add(list.get(size - 1));
            float[] fArr = new float[(arrayList.size() * 3)];
            IPoint[] iPointArr = new IPoint[arrayList.size()];
            Iterator it = arrayList.iterator();
            int i6 = 0;
            while (it.hasNext()) {
                IPoint iPoint3 = (IPoint) it.next();
                fArr[i6 * 3] = (float) (iPoint3.x - i2);
                fArr[(i6 * 3) + 1] = (float) (iPoint3.y - i3);
                fArr[(i6 * 3) + 2] = 0.0f;
                iPointArr[i6] = iPoint3;
                i6++;
            }
            IPoint[] a2 = a(iPointArr);
            if (a2.length == 0) {
                if (G == 1.0E10d) {
                    G = 1.0E8d;
                } else {
                    G = 1.0E10d;
                }
                a2 = a(iPointArr);
            }
            float[] fArr2 = new float[(a2.length * 3)];
            int i7 = 0;
            for (IPoint iPoint4 : a2) {
                fArr2[i7 * 3] = (float) (iPoint4.x - i2);
                fArr2[(i7 * 3) + 1] = (float) (iPoint4.y - i3);
                fArr2[(i7 * 3) + 2] = 0.0f;
                i7++;
            }
            this.q = iPointArr.length;
            this.r = a2.length;
            this.o = ee.a(fArr);
            this.p = ee.a(fArr2);
        }
    }

    private List<IPoint> b(List<LatLng> list) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            LatLng latLng = null;
            for (LatLng latLng2 : list) {
                if (!latLng2.equals(latLng)) {
                    IPoint obtain = IPoint.obtain();
                    this.c.a(latLng2.latitude, latLng2.longitude, obtain);
                    arrayList.add(obtain);
                    ee.b(this.b, obtain.x, obtain.y);
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

    private boolean a(IPoint iPoint, IPoint iPoint2) {
        return ((float) (iPoint2.x - iPoint.x)) >= this.u || ((float) (iPoint2.x - iPoint.x)) <= (-this.u) || ((float) (iPoint2.y - iPoint.y)) >= this.u || ((float) (iPoint2.y - iPoint.y)) <= (-this.u);
    }

    private void g() {
        float g2 = this.c.g();
        if (this.k.size() <= 5000) {
            this.u = this.c.c().getMapLenWithWin(2);
        } else if (g2 <= 12.0f) {
            float f2 = (g2 / 2.0f) + (this.g / 2.0f);
            if (f2 > 200.0f) {
                f2 = 200.0f;
            }
            this.u = this.c.c().getMapLenWithWin((int) f2);
        } else {
            this.u = this.c.c().getMapLenWithWin(10);
        }
    }

    public void setStrokeWidth(float f2) throws RemoteException {
        this.g = f2;
        this.c.setRunLowFrame(false);
    }

    public float getStrokeWidth() throws RemoteException {
        return this.g;
    }

    public void setFillColor(int i2) throws RemoteException {
        this.h = i2;
        this.c.setRunLowFrame(false);
    }

    public int getFillColor() throws RemoteException {
        return this.h;
    }

    public void setStrokeColor(int i2) throws RemoteException {
        this.i = i2;
        this.c.setRunLowFrame(false);
    }

    public int getStrokeColor() throws RemoteException {
        return this.i;
    }

    public void setHoleOptions(List<BaseHoleOptions> list) {
        try {
            this.m = list;
            if (this.l == null) {
                this.l = new ArrayList();
            } else {
                this.l.clear();
            }
            if (list != null) {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    BaseHoleOptions baseHoleOptions = (BaseHoleOptions) list.get(i2);
                    if (baseHoleOptions instanceof PolygonHoleOptions) {
                        PolygonHoleOptions polygonHoleOptions = (PolygonHoleOptions) baseHoleOptions;
                        if (a(polygonHoleOptions) && !ee.a(this.l, polygonHoleOptions)) {
                            this.l.add(polygonHoleOptions);
                        }
                    } else if (baseHoleOptions instanceof CircleHoleOptions) {
                        CircleHoleOptions circleHoleOptions = (CircleHoleOptions) baseHoleOptions;
                        if (b(circleHoleOptions) && !ee.a(this.l, circleHoleOptions)) {
                            this.l.add(circleHoleOptions);
                        }
                    }
                }
            } else {
                this.l.clear();
            }
        } catch (Throwable th) {
            gf.b(th, "PolygonDelegateImp", "setHoleOptions");
            ThrowableExtension.printStackTrace(th);
        }
        this.c.setRunLowFrame(false);
    }

    private boolean b(CircleHoleOptions circleHoleOptions) {
        try {
            if (!ee.b(getPoints(), circleHoleOptions) && contains(circleHoleOptions.getCenter())) {
                return true;
            }
        } catch (Throwable th) {
            gf.b(th, "PolygonDelegateImp", "isCircleInPolygon");
            ThrowableExtension.printStackTrace(th);
        }
        return false;
    }

    private boolean a(PolygonHoleOptions polygonHoleOptions) {
        boolean z2 = true;
        try {
            List points = polygonHoleOptions.getPoints();
            int i2 = 0;
            while (i2 < points.size()) {
                boolean a2 = ee.a((LatLng) points.get(i2), getPoints());
                if (!a2) {
                    return a2;
                }
                i2++;
                z2 = a2;
            }
            return z2;
        } catch (Throwable th) {
            Throwable th2 = th;
            gf.b(th2, "PolygonDelegateImp", "isPolygonInPolygon");
            ThrowableExtension.printStackTrace(th2);
            return true;
        }
    }

    public List<BaseHoleOptions> getHoleOptions() {
        return this.l;
    }

    static IPoint[] a(IPoint[] iPointArr) {
        int length = iPointArr.length;
        double[] dArr = new double[(length * 2)];
        for (int i2 = 0; i2 < length; i2++) {
            dArr[i2 * 2] = ((double) iPointArr[i2].x) * G;
            dArr[(i2 * 2) + 1] = ((double) iPointArr[i2].y) * G;
        }
        ec a2 = new dn().a(dArr);
        int i3 = a2.b;
        IPoint[] iPointArr2 = new IPoint[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            iPointArr2[i4] = new IPoint();
            iPointArr2[i4].x = (int) (dArr[a2.a(i4) * 2] / G);
            iPointArr2[i4].y = (int) (dArr[(a2.a(i4) * 2) + 1] / G);
        }
        return iPointArr2;
    }

    public void destroy() {
        try {
            if (this.o != null) {
                this.o.clear();
                this.o = null;
            }
            if (this.p != null) {
                this.p = null;
            }
            if (this.E != null) {
                this.E.clear();
                this.E = null;
            }
            if (this.F != null) {
                this.F.clear();
                this.F = null;
            }
            if (this.l != null) {
                this.l.clear();
            }
            if (this.m != null) {
                this.m.clear();
            }
            this.l = null;
            this.m = null;
        } catch (Throwable th) {
            gf.b(th, "PolygonDelegateImp", "destroy");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public boolean contains(LatLng latLng) throws RemoteException {
        if (latLng == null) {
            return false;
        }
        try {
            if (this.l != null && this.l.size() > 0) {
                for (BaseHoleOptions a2 : this.l) {
                    if (ee.a(a2, latLng)) {
                        return false;
                    }
                }
            }
            return ee.a(latLng, getPoints());
        } catch (Throwable th) {
            gf.b(th, "PolygonDelegateImp", "contains");
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public boolean d() {
        return this.t;
    }

    public boolean isAboveMaskLayer() {
        return false;
    }

    public void setAboveMaskLayer(boolean z2) {
    }
}
