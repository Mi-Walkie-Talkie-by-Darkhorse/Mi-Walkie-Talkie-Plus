package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.os.Build.VERSION;
import android.os.RemoteException;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.amap.api.mapcore.util.cx.d;
import com.amap.api.maps.AMapUtils;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.LatLngBounds.Builder;
import com.amap.api.maps.model.PolylineOptions;
import com.autonavi.amap.mapcore.AMapNativeRenderer;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.FPoint3;
import com.autonavi.amap.mapcore.FPointBounds;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapConfig;
import com.autonavi.amap.mapcore.Rectangle;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: PolylineDelegateImp */
public class cs implements cl {
    private boolean A = false;
    private boolean B = false;
    private boolean C = false;
    private boolean D = true;
    private int E = 0;
    private int F = 0;
    private int G = ViewCompat.MEASURED_STATE_MASK;
    private int H = 0;
    private int I = 0;
    private float J = 10.0f;
    private float K = 0.0f;
    private float L = 0.0f;
    private float M;
    private float N;
    private float O;
    private float P;
    private float Q = 1.0f;
    private float R = 0.0f;
    private float[] S;
    private int[] T;
    private int[] U;
    private double V = 5.0d;
    private boolean W = false;
    private final int X = 2;
    private FPointBounds Y = null;
    private PolylineOptions Z;
    Rect a = null;
    private int aa = 0;
    private int ab = 2;
    private d ac;
    int b = 0;
    int c = 0;
    ArrayList<FPoint> d = new ArrayList<>();
    long e = 0;
    private i f;
    private String g;
    private List<IPoint> h = new ArrayList();
    private List<FPoint> i = new ArrayList();
    private List<LatLng> j = new ArrayList();
    private List<BitmapDescriptor> k = new ArrayList();
    private List<s> l = new ArrayList();
    private List<Integer> m = new ArrayList();
    private List<Integer> n = new ArrayList();
    private List<Integer> o = new ArrayList();
    private List<Integer> p = new ArrayList();
    private FloatBuffer q;
    private BitmapDescriptor r = null;
    private LatLngBounds s = null;
    private Object t = new Object();
    private boolean u = true;
    private boolean v = true;
    private boolean w = false;
    private boolean x = false;
    private boolean y = false;
    private boolean z = true;

    public void a(boolean z2) {
        this.D = z2;
        this.f.d().setRunLowFrame(false);
    }

    public void setGeodesic(boolean z2) throws RemoteException {
        this.w = z2;
        this.f.d().setRunLowFrame(false);
    }

    public boolean isGeodesic() {
        return this.w;
    }

    public void setDottedLine(boolean z2) {
        if (this.E == 2 || this.E == 0) {
            this.x = z2;
            if (z2 && this.v) {
                this.E = 2;
            }
            this.f.d().setRunLowFrame(false);
        }
    }

    public void a(int i2) {
        this.I = i2;
    }

    public boolean isDottedLine() {
        return this.x;
    }

    public cs(i iVar, PolylineOptions polylineOptions) {
        this.f = iVar;
        setOptions(polylineOptions);
        try {
            this.g = getId();
        } catch (RemoteException e2) {
            gf.b((Throwable) e2, "PolylineDelegateImp", "create");
            ThrowableExtension.printStackTrace(e2);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(List<LatLng> list) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        Builder builder = LatLngBounds.builder();
        if (list != null) {
            LatLng latLng = null;
            Iterator it = list.iterator();
            while (true) {
                LatLng latLng2 = latLng;
                if (!it.hasNext()) {
                    break;
                }
                latLng = (LatLng) it.next();
                if (!this.w) {
                    IPoint obtain = IPoint.obtain();
                    this.f.d().a(latLng.latitude, latLng.longitude, obtain);
                    arrayList.add(obtain);
                    builder.include(latLng);
                } else if (latLng2 != null) {
                    if (Math.abs(latLng.longitude - latLng2.longitude) < 0.01d) {
                        IPoint obtain2 = IPoint.obtain();
                        this.f.d().a(latLng2.latitude, latLng2.longitude, obtain2);
                        arrayList.add(obtain2);
                        builder.include(latLng2);
                        IPoint obtain3 = IPoint.obtain();
                        this.f.d().a(latLng.latitude, latLng.longitude, obtain3);
                        arrayList.add(obtain3);
                        builder.include(latLng);
                    } else {
                        a(latLng2, latLng, arrayList, builder);
                    }
                }
            }
        }
        this.h = arrayList;
        this.H = 0;
        if (this.h.size() > 0) {
            this.s = builder.build();
        }
        if (this.a == null) {
            this.a = new Rect();
        }
        ee.a(this.a);
        for (IPoint iPoint : this.h) {
            ee.b(this.a, iPoint.x, iPoint.y);
        }
        this.a.sort();
        this.f.d().setRunLowFrame(false);
    }

    /* access modifiers changed from: 0000 */
    public IPoint a(IPoint iPoint, IPoint iPoint2, IPoint iPoint3, double d2, int i2) {
        IPoint obtain = IPoint.obtain();
        double d3 = (double) (iPoint2.x - iPoint.x);
        double d4 = (double) (iPoint2.y - iPoint.y);
        obtain.y = (int) (((((double) i2) * d2) / Math.sqrt(((d4 * d4) / (d3 * d3)) + 1.0d)) + ((double) iPoint3.y));
        obtain.x = (int) (((d4 * ((double) (iPoint3.y - obtain.y))) / d3) + ((double) iPoint3.x));
        return obtain;
    }

    /* access modifiers changed from: 0000 */
    public void a(List<IPoint> list, List<IPoint> list2, double d2) {
        if (list.size() == 3) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 <= 10) {
                    float f2 = ((float) i3) / 10.0f;
                    IPoint obtain = IPoint.obtain();
                    double d3 = ((1.0d - ((double) f2)) * (1.0d - ((double) f2)) * ((double) ((IPoint) list.get(0)).x)) + (((double) (2.0f * f2)) * (1.0d - ((double) f2)) * ((double) ((IPoint) list.get(1)).x) * d2) + ((double) (((float) ((IPoint) list.get(2)).x) * f2 * f2));
                    double d4 = ((1.0d - ((double) f2)) * (1.0d - ((double) f2)) * ((double) ((IPoint) list.get(0)).y)) + (((double) (2.0f * f2)) * (1.0d - ((double) f2)) * ((double) ((IPoint) list.get(1)).y) * d2) + ((double) (((float) ((IPoint) list.get(2)).y) * f2 * f2));
                    double d5 = ((1.0d - ((double) f2)) * (1.0d - ((double) f2))) + (((double) (2.0f * f2)) * (1.0d - ((double) f2)) * d2) + ((double) (f2 * f2));
                    obtain.x = (int) (d3 / ((((1.0d - ((double) f2)) * (1.0d - ((double) f2))) + ((((double) (2.0f * f2)) * (1.0d - ((double) f2))) * d2)) + ((double) (f2 * f2))));
                    obtain.y = (int) (d4 / d5);
                    list2.add(obtain);
                    i2 = (int) (((float) i3) + 1.0f);
                } else {
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(LatLng latLng, LatLng latLng2, List<IPoint> list, Builder builder) {
        double abs = (Math.abs(latLng.longitude - latLng2.longitude) * 3.141592653589793d) / 180.0d;
        LatLng latLng3 = new LatLng((latLng2.latitude + latLng.latitude) / 2.0d, (latLng2.longitude + latLng.longitude) / 2.0d, false);
        builder.include(latLng).include(latLng3).include(latLng2);
        int i2 = latLng3.latitude > 0.0d ? -1 : 1;
        IPoint obtain = IPoint.obtain();
        this.f.d().a(latLng.latitude, latLng.longitude, obtain);
        IPoint obtain2 = IPoint.obtain();
        this.f.d().a(latLng2.latitude, latLng2.longitude, obtain2);
        IPoint obtain3 = IPoint.obtain();
        this.f.d().a(latLng3.latitude, latLng3.longitude, obtain3);
        double cos = Math.cos(0.5d * abs);
        IPoint a2 = a(obtain, obtain2, obtain3, Math.hypot((double) (obtain.x - obtain2.x), (double) (obtain.y - obtain2.y)) * 0.5d * Math.tan(0.5d * abs), i2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(obtain);
        arrayList.add(a2);
        arrayList.add(obtain2);
        a((List<IPoint>) arrayList, list, cos);
        obtain.recycle();
        a2.recycle();
        obtain2.recycle();
    }

    public void remove() throws RemoteException {
        this.f.d(getId());
        setVisible(false);
        this.f.d().setRunLowFrame(false);
    }

    public String getId() throws RemoteException {
        if (this.g == null) {
            this.g = this.f.a("Polyline");
        }
        return this.g;
    }

    public void setPoints(List<LatLng> list) throws RemoteException {
        try {
            this.j = list;
            synchronized (this.t) {
                a(list);
            }
            this.z = true;
            this.f.d().setRunLowFrame(false);
            this.Z.setPoints(list);
        } catch (Throwable th) {
            gf.b(th, "PolylineDelegateImp", "setPoints");
            this.h.clear();
            ThrowableExtension.printStackTrace(th);
        }
    }

    public List<LatLng> getPoints() throws RemoteException {
        return this.j;
    }

    public void setWidth(float f2) throws RemoteException {
        this.J = f2;
        this.f.d().setRunLowFrame(false);
        this.Z.width(f2);
    }

    public float getWidth() throws RemoteException {
        return this.J;
    }

    public void setColor(int i2) {
        if (this.E == 0 || this.E == 2) {
            this.G = i2;
            this.M = ((float) Color.alpha(i2)) / 255.0f;
            this.N = ((float) Color.red(i2)) / 255.0f;
            this.O = ((float) Color.green(i2)) / 255.0f;
            this.P = ((float) Color.blue(i2)) / 255.0f;
            if (this.v) {
                if (this.x) {
                    this.E = 2;
                } else {
                    this.E = 0;
                }
            }
            this.f.d().setRunLowFrame(false);
        }
        this.Z.color(i2);
    }

    public int getColor() throws RemoteException {
        return this.G;
    }

    public void setZIndex(float f2) throws RemoteException {
        this.K = f2;
        this.f.c();
        this.f.d().setRunLowFrame(false);
        if (this.Z != null) {
            this.Z.zIndex(f2);
        }
    }

    public float getZIndex() throws RemoteException {
        return this.K;
    }

    public void setVisible(boolean z2) throws RemoteException {
        this.u = z2;
        this.f.d().setRunLowFrame(false);
        if (this.Z != null) {
            this.Z.visible(z2);
        }
    }

    public boolean isVisible() throws RemoteException {
        return this.u;
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
        Rectangle geoRectangle = this.f.d().getMapConfig().getGeoRectangle();
        if (this.a == null || geoRectangle == null || geoRectangle.isOverlap(this.a)) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
        r8.Y = r3.build();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean b() throws android.os.RemoteException {
        /*
            r8 = this;
            r0 = 0
            java.lang.Object r2 = r8.t
            monitor-enter(r2)
            com.autonavi.amap.mapcore.FPointBounds$Builder r3 = new com.autonavi.amap.mapcore.FPointBounds$Builder     // Catch:{ all -> 0x00ac }
            r3.<init>()     // Catch:{ all -> 0x00ac }
            java.util.List<com.autonavi.amap.mapcore.FPoint> r1 = r8.i     // Catch:{ all -> 0x00ac }
            r1.clear()     // Catch:{ all -> 0x00ac }
            r1 = 0
            r8.C = r1     // Catch:{ all -> 0x00ac }
            java.util.List<com.autonavi.amap.mapcore.IPoint> r1 = r8.h     // Catch:{ all -> 0x00ac }
            int r1 = r1.size()     // Catch:{ all -> 0x00ac }
            int r1 = r1 * 3
            float[] r1 = new float[r1]     // Catch:{ all -> 0x00ac }
            r8.S = r1     // Catch:{ all -> 0x00ac }
            float[] r1 = r8.S     // Catch:{ all -> 0x00ac }
            int r1 = r1.length     // Catch:{ all -> 0x00ac }
            r8.b = r1     // Catch:{ all -> 0x00ac }
            java.util.List<com.autonavi.amap.mapcore.IPoint> r1 = r8.h     // Catch:{ all -> 0x00ac }
            java.util.Iterator r4 = r1.iterator()     // Catch:{ all -> 0x00ac }
            r1 = r0
        L_0x0029:
            boolean r0 = r4.hasNext()     // Catch:{ all -> 0x00ac }
            if (r0 == 0) goto L_0x00af
            java.lang.Object r0 = r4.next()     // Catch:{ all -> 0x00ac }
            com.autonavi.amap.mapcore.IPoint r0 = (com.autonavi.amap.mapcore.IPoint) r0     // Catch:{ all -> 0x00ac }
            com.autonavi.amap.mapcore.FPoint3 r5 = new com.autonavi.amap.mapcore.FPoint3     // Catch:{ all -> 0x00ac }
            r5.<init>()     // Catch:{ all -> 0x00ac }
            com.amap.api.mapcore.util.i r6 = r8.f     // Catch:{ all -> 0x00ac }
            com.amap.api.mapcore.util.l r6 = r6.d()     // Catch:{ all -> 0x00ac }
            int r7 = r0.y     // Catch:{ all -> 0x00ac }
            int r0 = r0.x     // Catch:{ all -> 0x00ac }
            r6.a(r7, r0, r5)     // Catch:{ all -> 0x00ac }
            float[] r0 = r8.S     // Catch:{ all -> 0x00ac }
            int r6 = r1 * 3
            float r7 = r5.x     // Catch:{ all -> 0x00ac }
            r0[r6] = r7     // Catch:{ all -> 0x00ac }
            float[] r0 = r8.S     // Catch:{ all -> 0x00ac }
            int r6 = r1 * 3
            int r6 = r6 + 1
            float r7 = r5.y     // Catch:{ all -> 0x00ac }
            r0[r6] = r7     // Catch:{ all -> 0x00ac }
            float[] r0 = r8.S     // Catch:{ all -> 0x00ac }
            int r6 = r1 * 3
            int r6 = r6 + 2
            r7 = 0
            r0[r6] = r7     // Catch:{ all -> 0x00ac }
            java.util.List<java.lang.Integer> r6 = r8.m     // Catch:{ all -> 0x00ac }
            monitor-enter(r6)     // Catch:{ all -> 0x00ac }
            java.util.List<java.lang.Integer> r0 = r8.m     // Catch:{ all -> 0x00a9 }
            if (r0 == 0) goto L_0x008d
            java.util.List<java.lang.Integer> r0 = r8.m     // Catch:{ all -> 0x00a9 }
            int r0 = r0.size()     // Catch:{ all -> 0x00a9 }
            if (r0 <= r1) goto L_0x008d
            java.util.List<java.lang.Integer> r0 = r8.m     // Catch:{ all -> 0x00a9 }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ all -> 0x00a9 }
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch:{ all -> 0x00a9 }
            int r0 = r0.intValue()     // Catch:{ all -> 0x00a9 }
            r5.setColorIndex(r0)     // Catch:{ all -> 0x00a9 }
        L_0x0080:
            monitor-exit(r6)     // Catch:{ all -> 0x00a9 }
            java.util.List<com.autonavi.amap.mapcore.FPoint> r0 = r8.i     // Catch:{ all -> 0x00ac }
            r0.add(r5)     // Catch:{ all -> 0x00ac }
            r3.include(r5)     // Catch:{ all -> 0x00ac }
            int r0 = r1 + 1
            r1 = r0
            goto L_0x0029
        L_0x008d:
            java.util.List<java.lang.Integer> r0 = r8.n     // Catch:{ all -> 0x00a9 }
            if (r0 == 0) goto L_0x0080
            java.util.List<java.lang.Integer> r0 = r8.n     // Catch:{ all -> 0x00a9 }
            int r0 = r0.size()     // Catch:{ all -> 0x00a9 }
            if (r0 <= r1) goto L_0x0080
            java.util.List<java.lang.Integer> r0 = r8.n     // Catch:{ all -> 0x00a9 }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ all -> 0x00a9 }
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch:{ all -> 0x00a9 }
            int r0 = r0.intValue()     // Catch:{ all -> 0x00a9 }
            r5.setColorIndex(r0)     // Catch:{ all -> 0x00a9 }
            goto L_0x0080
        L_0x00a9:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x00a9 }
            throw r0     // Catch:{ all -> 0x00ac }
        L_0x00ac:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00ac }
            throw r0
        L_0x00af:
            com.autonavi.amap.mapcore.FPointBounds r0 = r3.build()     // Catch:{ all -> 0x00ac }
            r8.Y = r0     // Catch:{ all -> 0x00ac }
            monitor-exit(r2)     // Catch:{ all -> 0x00ac }
            boolean r0 = r8.D
            if (r0 != 0) goto L_0x00c2
            float[] r0 = r8.S
            java.nio.FloatBuffer r0 = com.amap.api.mapcore.util.ee.a(r0)
            r8.q = r0
        L_0x00c2:
            java.util.List<com.autonavi.amap.mapcore.IPoint> r0 = r8.h
            int r0 = r0.size()
            r8.H = r0
            r8.f()
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.cs.b():boolean");
    }

    private void f() {
        if (this.H <= 5000) {
            this.R = this.f.d().c().getMapLenWithWin(2);
        } else if (this.L <= 12.0f) {
            float f2 = (this.J / 2.0f) + (this.L / 2.0f);
            if (f2 > 200.0f) {
                f2 = 200.0f;
            }
            this.R = this.f.d().c().getMapLenWithWin((int) f2);
        } else {
            this.R = this.f.d().c().getMapLenWithWin(10);
        }
    }

    private void d(List<FPoint> list) throws RemoteException {
        int i2 = 0;
        this.d.clear();
        int size = list.size();
        if (size >= 2) {
            FPoint fPoint = (FPoint) list.get(0);
            this.d.add(fPoint);
            int i3 = 1;
            while (true) {
                FPoint fPoint2 = fPoint;
                if (i3 >= size - 1) {
                    break;
                }
                fPoint = (FPoint) list.get(i3);
                if (i3 == 1 || a(fPoint2, fPoint)) {
                    this.d.add(fPoint);
                } else {
                    this.d.set(this.d.size() - 1, fPoint);
                    fPoint = fPoint2;
                }
                i3++;
            }
            this.d.add(list.get(size - 1));
            int size2 = this.d.size() * 3;
            this.b = size2;
            if (this.S == null || this.S.length < this.b) {
                this.S = new float[size2];
            }
            if (this.E == 5 || this.E == 3) {
                int[] iArr = new int[this.d.size()];
                ArrayList arrayList = new ArrayList();
                int i4 = 0;
                int i5 = 0;
                for (int i6 = 0; i6 < size2 / 3; i6++) {
                    FPoint3 fPoint3 = (FPoint3) this.d.get(i6);
                    this.S[i6 * 3] = fPoint3.x;
                    this.S[(i6 * 3) + 1] = fPoint3.y;
                    this.S[(i6 * 3) + 2] = 0.0f;
                    int i7 = fPoint3.colorIndex;
                    if (i6 == 0) {
                        arrayList.add(Integer.valueOf(i7));
                    } else if (i7 == i5) {
                    } else {
                        if (i7 != -1) {
                            i5 = i7;
                        }
                        arrayList.add(Integer.valueOf(i5));
                        i7 = i5;
                    }
                    iArr[i4] = i6;
                    i4++;
                    i5 = i7;
                }
                this.T = new int[arrayList.size()];
                System.arraycopy(iArr, 0, this.T, 0, this.T.length);
                synchronized (this.o) {
                    this.o = arrayList;
                }
                this.p = arrayList;
                return;
            }
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                FPoint fPoint4 = (FPoint) it.next();
                this.S[i2 * 3] = fPoint4.x;
                this.S[(i2 * 3) + 1] = fPoint4.y;
                this.S[(i2 * 3) + 2] = 0.0f;
                i2++;
            }
        }
    }

    private boolean a(FPoint fPoint, FPoint fPoint2) {
        return Math.abs(fPoint2.x - fPoint.x) >= this.R || Math.abs(fPoint2.y - fPoint.y) >= this.R;
    }

    public void setCustomTexture(BitmapDescriptor bitmapDescriptor) {
        long nanoTime = System.nanoTime();
        if (nanoTime - this.e >= 16) {
            this.e = nanoTime;
            if (bitmapDescriptor != null) {
                synchronized (this) {
                    this.v = false;
                    this.y = false;
                    this.E = 1;
                    this.r = bitmapDescriptor;
                    this.f.d().setRunLowFrame(false);
                    if (this.Z != null) {
                        this.Z.setCustomTexture(bitmapDescriptor);
                    }
                }
            }
        }
    }

    private void g() {
        if (this.f != null) {
            l d2 = this.f.d();
            if (d2 != null) {
                this.ac = (d) d2.t(3);
            }
        }
    }

    public void c() throws RemoteException {
        if (this.h != null && this.h.size() != 0 && this.J > 0.0f && this.f.d() != null) {
            synchronized (this.t) {
                int s_x = this.f.d().getMapConfig().getS_x();
                int s_y = this.f.d().getMapConfig().getS_y();
                int size = this.i.size();
                int size2 = this.h.size();
                if (size == size2) {
                    for (int i2 = 0; i2 < size2; i2++) {
                        IPoint iPoint = (IPoint) this.h.get(i2);
                        FPoint fPoint = (FPoint) this.i.get(i2);
                        fPoint.x = (float) (iPoint.x - s_x);
                        fPoint.y = (float) (iPoint.y - s_y);
                    }
                } else {
                    this.i.clear();
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < size2) {
                        IPoint iPoint2 = (IPoint) this.h.get(i3);
                        FPoint3 fPoint3 = new FPoint3();
                        synchronized (this.m) {
                            if (this.m != null && this.m.size() > i4) {
                                fPoint3.setColorIndex(((Integer) this.m.get(i4)).intValue());
                            }
                        }
                        fPoint3.x = (float) (iPoint2.x - s_x);
                        fPoint3.y = (float) (iPoint2.y - s_y);
                        this.i.add(fPoint3);
                        i3++;
                        i4++;
                    }
                }
            }
            if (this.z) {
                b();
                this.z = false;
            } else if (this.A) {
                synchronized (this.t) {
                    int size3 = this.i.size();
                    synchronized (this.m) {
                        int size4 = this.m.size();
                        for (int i5 = 0; i5 < size3; i5++) {
                            if (size4 > i5) {
                                ((FPoint3) this.i.get(i5)).setColorIndex(((Integer) this.m.get(i5)).intValue());
                            }
                        }
                    }
                }
            }
            if (this.S != null && this.H > 0) {
                if (this.D) {
                    a(this.f.d().getMapConfig());
                } else {
                    if (this.q == null) {
                        this.q = ee.a(this.S);
                    }
                    if (this.ac == null || this.ac.c()) {
                        g();
                    }
                    Cdo.a(this.ac, this.G, this.q, this.J, this.H, this.f.e());
                }
            }
            this.C = true;
        }
    }

    private void a(MapConfig mapConfig) {
        float mapLenWithWin = this.f.d().c().getMapLenWithWin((int) this.J);
        switch (this.E) {
            case 0:
                f(mapLenWithWin, mapConfig);
                return;
            case 1:
                d(mapLenWithWin, mapConfig);
                return;
            case 2:
                e(mapLenWithWin, mapConfig);
                return;
            case 3:
                c(mapLenWithWin, mapConfig);
                return;
            case 4:
                b(mapLenWithWin, mapConfig);
                return;
            case 5:
                a(mapLenWithWin, mapConfig);
                return;
            default:
                return;
        }
    }

    private void a(float f2, MapConfig mapConfig) {
        int[] iArr;
        boolean z2;
        if (!this.y) {
            try {
                if (this.k != null) {
                    this.U = new int[this.k.size()];
                    boolean z3 = VERSION.SDK_INT >= 12;
                    int i2 = 0;
                    for (BitmapDescriptor a2 : this.k) {
                        this.U[i2] = a(z3, a2);
                        i2++;
                    }
                    this.y = true;
                }
            } catch (Throwable th) {
                gf.b(th, "MarkerDelegateImp", "loadtexture");
                return;
            }
        }
        FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
        List<FPoint> list = this.i;
        if (a(clipMapRect)) {
            synchronized (this.t) {
                list = ee.b(clipMapRect, this.i, false);
            }
        }
        try {
            if (list.size() >= 2) {
                d(list);
                synchronized (this.o) {
                    iArr = new int[this.o.size()];
                    for (int i3 = 0; i3 < iArr.length; i3++) {
                        int intValue = ((Integer) this.o.get(i3)).intValue();
                        if (intValue < 0) {
                            intValue = 0;
                        }
                        iArr[i3] = this.U[intValue];
                    }
                }
                if (iArr != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((this.T != null) && z2) {
                    AMapNativeRenderer.nativeDrawLineByMultiTextureID(this.S, this.b, f2, iArr, iArr.length, this.T, this.T.length, 1.0f - this.Q, this.f.e());
                }
            }
        } catch (Throwable th2) {
            ThrowableExtension.printStackTrace(th2);
        }
    }

    private int a(boolean z2, BitmapDescriptor bitmapDescriptor) {
        s sVar = null;
        if (z2) {
            sVar = this.f.d().a(bitmapDescriptor);
            if (sVar != null) {
                return sVar.f();
            }
        }
        if (sVar == null) {
            sVar = new s(bitmapDescriptor, 0);
        }
        Bitmap bitmap = bitmapDescriptor.getBitmap();
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        int h2 = h();
        if (z2) {
            this.f.d().a(sVar);
        }
        this.l.add(sVar);
        ee.b(h2, bitmap, true);
        return h2;
    }

    private void b(float f2, MapConfig mapConfig) {
        int[] iArr = new int[this.n.size()];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.n.size()) {
                iArr[i3] = ((Integer) this.n.get(i3)).intValue();
                i2 = i3 + 1;
            } else {
                try {
                    break;
                } catch (RemoteException e2) {
                    ThrowableExtension.printStackTrace(e2);
                }
            }
        }
        b();
        AMapNativeRenderer.nativeDrawGradientColorLine(this.S, this.S.length, f2, iArr, this.n.size(), this.T, this.T.length, this.f.d().d(), this.f.e());
    }

    private void c(float f2, MapConfig mapConfig) {
        boolean z2;
        boolean z3 = false;
        int[] iArr = new int[this.n.size()];
        for (int i2 = 0; i2 < this.n.size(); i2++) {
            iArr[i2] = ((Integer) this.n.get(i2)).intValue();
        }
        FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
        List<FPoint> list = this.i;
        if (a(clipMapRect)) {
            synchronized (this.t) {
                list = ee.b(clipMapRect, this.i, false);
            }
        }
        try {
            if (list.size() >= 2) {
                d(list);
                int[] iArr2 = new int[this.p.size()];
                for (int i3 = 0; i3 < iArr2.length; i3++) {
                    iArr2[i3] = ((Integer) this.p.get(i3)).intValue();
                }
                if (iArr2 != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (this.T != null) {
                    z3 = true;
                }
                if (z2 && z3) {
                    AMapNativeRenderer.nativeDrawLineByMultiColor(this.S, this.b, f2, this.f.d().d(), iArr2, iArr2.length, this.T, this.T.length, this.f.e());
                }
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void d(float f2, MapConfig mapConfig) {
        boolean z2 = true;
        if (!this.y) {
            synchronized (this) {
                try {
                    if (this.r != null) {
                        if (VERSION.SDK_INT < 12) {
                            z2 = false;
                        }
                        this.F = a(z2, this.r);
                        this.y = true;
                    }
                } catch (Throwable th) {
                    gf.b(th, "MarkerDelegateImp", "loadtexture");
                    return;
                }
            }
        }
        try {
            if (mapConfig.getChangeRatio() == 1.0d && this.S != null) {
                this.aa++;
                if (this.aa > this.ab) {
                    AMapNativeRenderer.nativeDrawLineByTextureID(this.S, this.b, f2, this.F, this.N, this.O, this.P, this.M, 1.0f - this.Q, false, false, false, this.f.e());
                    return;
                }
            }
            this.aa = 0;
            FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
            List<FPoint> list = this.i;
            if (a(clipMapRect)) {
                synchronized (this.t) {
                    list = ee.a(clipMapRect, this.i, false);
                }
            }
            if (list.size() >= 2) {
                d(list);
                AMapNativeRenderer.nativeDrawLineByTextureID(this.S, this.b, f2, this.F, this.N, this.O, this.P, this.M, 1.0f - this.Q, false, false, false, this.f.e());
            }
        } catch (Throwable th2) {
        }
    }

    private void e(float f2, MapConfig mapConfig) {
        boolean z2 = true;
        if (!this.y) {
            synchronized (this) {
                try {
                    if (this.r != null) {
                        if (VERSION.SDK_INT < 12) {
                            z2 = false;
                        }
                        this.F = a(z2, this.r);
                        this.y = true;
                    }
                } catch (Throwable th) {
                    gf.b(th, "MarkerDelegateImp", "loadtexture");
                    return;
                }
            }
        }
        try {
            List<FPoint> list = this.i;
            if (this.f.d() != null) {
                if (mapConfig.getChangeRatio() == 1.0d && this.S != null) {
                    this.aa++;
                    if (this.aa > this.ab) {
                        AMapNativeRenderer.nativeDrawLineByTextureID(this.S, this.b, f2, this.f.d().f(this.I), this.N, this.O, this.P, this.M, 0.0f, true, true, false, this.f.e());
                        return;
                    }
                }
                this.aa = 0;
                FPoint[] clipMapRect = mapConfig.getGeoRectangle().getClipMapRect();
                if (a(clipMapRect)) {
                    synchronized (this.t) {
                        list = ee.a(clipMapRect, this.i, false);
                    }
                }
                if (list.size() >= 2) {
                    d(list);
                    AMapNativeRenderer.nativeDrawLineByTextureID(this.S, this.b, f2, this.f.d().f(this.I), this.N, this.O, this.P, this.M, 0.0f, true, true, false, this.f.e());
                }
            }
        } catch (Throwable th2) {
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void f(float r14, com.autonavi.amap.mapcore.MapConfig r15) {
        /*
            r13 = this;
            java.util.List<com.autonavi.amap.mapcore.FPoint> r0 = r13.i     // Catch:{ Throwable -> 0x004a }
            com.amap.api.mapcore.util.i r1 = r13.f     // Catch:{ Throwable -> 0x004a }
            com.amap.api.mapcore.util.l r1 = r1.d()     // Catch:{ Throwable -> 0x004a }
            if (r1 != 0) goto L_0x000b
        L_0x000a:
            return
        L_0x000b:
            double r2 = r15.getChangeRatio()     // Catch:{ Throwable -> 0x004a }
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r1 != 0) goto L_0x004c
            float[] r1 = r13.S     // Catch:{ Throwable -> 0x004a }
            if (r1 == 0) goto L_0x004c
            int r1 = r13.aa     // Catch:{ Throwable -> 0x004a }
            int r1 = r1 + 1
            r13.aa = r1     // Catch:{ Throwable -> 0x004a }
            int r1 = r13.aa     // Catch:{ Throwable -> 0x004a }
            int r2 = r13.ab     // Catch:{ Throwable -> 0x004a }
            if (r1 <= r2) goto L_0x004c
            float[] r0 = r13.S     // Catch:{ Throwable -> 0x004a }
            int r1 = r13.b     // Catch:{ Throwable -> 0x004a }
            com.amap.api.mapcore.util.i r2 = r13.f     // Catch:{ Throwable -> 0x004a }
            com.amap.api.mapcore.util.l r2 = r2.d()     // Catch:{ Throwable -> 0x004a }
            int r3 = r2.d()     // Catch:{ Throwable -> 0x004a }
            float r4 = r13.N     // Catch:{ Throwable -> 0x004a }
            float r5 = r13.O     // Catch:{ Throwable -> 0x004a }
            float r6 = r13.P     // Catch:{ Throwable -> 0x004a }
            float r7 = r13.M     // Catch:{ Throwable -> 0x004a }
            r8 = 0
            r9 = 0
            r10 = 1
            r11 = 0
            com.amap.api.mapcore.util.i r2 = r13.f     // Catch:{ Throwable -> 0x004a }
            float[] r12 = r2.e()     // Catch:{ Throwable -> 0x004a }
            r2 = r14
            com.autonavi.amap.mapcore.AMapNativeRenderer.nativeDrawLineByTextureID(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)     // Catch:{ Throwable -> 0x004a }
            goto L_0x000a
        L_0x004a:
            r0 = move-exception
            goto L_0x000a
        L_0x004c:
            r1 = 0
            r13.aa = r1     // Catch:{ Throwable -> 0x004a }
            com.autonavi.amap.mapcore.Rectangle r1 = r15.getGeoRectangle()     // Catch:{ Throwable -> 0x004a }
            com.autonavi.amap.mapcore.FPoint[] r1 = r1.getClipMapRect()     // Catch:{ Throwable -> 0x004a }
            boolean r2 = r13.a(r1)     // Catch:{ Throwable -> 0x004a }
            if (r2 == 0) goto L_0x0068
            java.lang.Object r2 = r13.t     // Catch:{ Throwable -> 0x004a }
            monitor-enter(r2)     // Catch:{ Throwable -> 0x004a }
            java.util.List<com.autonavi.amap.mapcore.FPoint> r0 = r13.i     // Catch:{ all -> 0x0098 }
            r3 = 0
            java.util.List r0 = com.amap.api.mapcore.util.ee.a(r1, r0, r3)     // Catch:{ all -> 0x0098 }
            monitor-exit(r2)     // Catch:{ all -> 0x0098 }
        L_0x0068:
            int r1 = r0.size()     // Catch:{ Throwable -> 0x004a }
            r2 = 2
            if (r1 < r2) goto L_0x000a
            r13.d(r0)     // Catch:{ Throwable -> 0x004a }
            float[] r0 = r13.S     // Catch:{ Throwable -> 0x004a }
            int r1 = r13.b     // Catch:{ Throwable -> 0x004a }
            com.amap.api.mapcore.util.i r2 = r13.f     // Catch:{ Throwable -> 0x004a }
            com.amap.api.mapcore.util.l r2 = r2.d()     // Catch:{ Throwable -> 0x004a }
            int r3 = r2.d()     // Catch:{ Throwable -> 0x004a }
            float r4 = r13.N     // Catch:{ Throwable -> 0x004a }
            float r5 = r13.O     // Catch:{ Throwable -> 0x004a }
            float r6 = r13.P     // Catch:{ Throwable -> 0x004a }
            float r7 = r13.M     // Catch:{ Throwable -> 0x004a }
            r8 = 0
            r9 = 0
            r10 = 1
            r11 = 0
            com.amap.api.mapcore.util.i r2 = r13.f     // Catch:{ Throwable -> 0x004a }
            float[] r12 = r2.e()     // Catch:{ Throwable -> 0x004a }
            r2 = r14
            com.autonavi.amap.mapcore.AMapNativeRenderer.nativeDrawLineByTextureID(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)     // Catch:{ Throwable -> 0x004a }
            goto L_0x000a
        L_0x0098:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0098 }
            throw r0     // Catch:{ Throwable -> 0x004a }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.cs.f(float, com.autonavi.amap.mapcore.MapConfig):void");
    }

    private int h() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    private boolean a(FPoint[] fPointArr) {
        this.L = this.f.d().g();
        f();
        if (this.L <= 10.0f) {
            return false;
        }
        try {
            if (this.f.d() == null) {
                return false;
            }
            if (!ee.a(this.Y.northeast, fPointArr) || !ee.a(this.Y.southwest, fPointArr)) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    public void destroy() {
        try {
            remove();
            if (this.l != null && this.l.size() > 0) {
                for (int i2 = 0; i2 < this.l.size(); i2++) {
                    s sVar = (s) this.l.get(i2);
                    if (sVar != null) {
                        this.f.a(Integer.valueOf(sVar.f()));
                        this.f.d().b(sVar.j());
                    }
                }
            }
            if (this.S != null) {
                this.S = null;
            }
            if (this.q != null) {
                this.q.clear();
                this.q = null;
            }
            if (this.k != null && this.k.size() > 0) {
                for (BitmapDescriptor recycle : this.k) {
                    recycle.recycle();
                }
            }
            if (this.r != null) {
                this.r.recycle();
            }
            if (this.n != null) {
                this.n.clear();
                this.n = null;
            }
            if (this.m != null) {
                synchronized (this.m) {
                    this.m.clear();
                    this.m = null;
                }
            }
            if (this.j != null) {
                this.j.clear();
                this.j = null;
            }
            this.Z = null;
        } catch (Throwable th) {
            gf.b(th, "PolylineDelegateImp", "destroy");
            ThrowableExtension.printStackTrace(th);
            Log.d("destroy erro", "PolylineDelegateImp destroy");
        }
    }

    public boolean d() {
        return this.C;
    }

    public LatLng getNearestLatLng(LatLng latLng) {
        float calculateLineDistance;
        int i2;
        int i3 = 0;
        if (latLng == null) {
            return null;
        }
        if (this.j == null || this.j.size() == 0) {
            return null;
        }
        float f2 = 0.0f;
        int i4 = 0;
        while (i3 < this.j.size()) {
            try {
                if (i3 == 0) {
                    calculateLineDistance = AMapUtils.calculateLineDistance(latLng, (LatLng) this.j.get(i3));
                    i2 = i4;
                } else {
                    calculateLineDistance = AMapUtils.calculateLineDistance(latLng, (LatLng) this.j.get(i3));
                    if (f2 > calculateLineDistance) {
                        i2 = i3;
                    } else {
                        calculateLineDistance = f2;
                        i2 = i4;
                    }
                }
                i3++;
                i4 = i2;
                f2 = calculateLineDistance;
            } catch (Throwable th) {
                gf.b(th, "PolylineDelegateImp", "getNearestLatLng");
                ThrowableExtension.printStackTrace(th);
                return null;
            }
        }
        return (LatLng) this.j.get(i4);
    }

    public boolean a(LatLng latLng) {
        FPoint fPoint;
        float[] fArr = new float[this.S.length];
        System.arraycopy(this.S, 0, fArr, 0, this.S.length);
        if (fArr.length / 3 < 2) {
            return false;
        }
        try {
            ArrayList i2 = i();
            if (i2 == null || i2.size() < 1) {
                return false;
            }
            double mapLenWithWin = (double) this.f.d().c().getMapLenWithWin(((int) this.J) / 4);
            double mapLenWithWin2 = (double) this.f.d().c().getMapLenWithWin((int) this.V);
            FPoint b2 = b(latLng);
            FPoint fPoint2 = null;
            for (int i3 = 0; i3 < i2.size() - 1; i3++) {
                if (i3 == 0) {
                    fPoint = (FPoint) i2.get(i3);
                } else {
                    fPoint = fPoint2;
                }
                fPoint2 = (FPoint) i2.get(i3 + 1);
                if ((mapLenWithWin2 + mapLenWithWin) - a(b2, fPoint, fPoint2) >= 0.0d) {
                    i2.clear();
                    return true;
                }
            }
            i2.clear();
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    private ArrayList<FPoint> i() {
        ArrayList<FPoint> arrayList = new ArrayList<>();
        int i2 = 0;
        while (i2 < this.S.length) {
            float f2 = this.S[i2];
            int i3 = i2 + 1;
            float f3 = this.S[i3];
            int i4 = i3 + 1;
            arrayList.add(FPoint.obtain(f2, f3));
            i2 = i4 + 1;
        }
        return arrayList;
    }

    private double a(FPoint fPoint, FPoint fPoint2, FPoint fPoint3) {
        return a((double) fPoint.x, (double) fPoint.y, (double) fPoint2.x, (double) fPoint2.y, (double) fPoint3.x, (double) fPoint3.y);
    }

    private FPoint b(LatLng latLng) {
        IPoint obtain = IPoint.obtain();
        this.f.d().a(latLng.latitude, latLng.longitude, obtain);
        FPoint obtain2 = FPoint.obtain();
        this.f.d().a(obtain.y, obtain.x, obtain2);
        obtain.recycle();
        return obtain2;
    }

    private double a(double d2, double d3, double d4, double d5, double d6, double d7) {
        double d8 = ((d6 - d4) * (d2 - d4)) + ((d7 - d5) * (d3 - d5));
        if (d8 <= 0.0d) {
            return Math.sqrt(((d2 - d4) * (d2 - d4)) + ((d3 - d5) * (d3 - d5)));
        }
        double d9 = ((d6 - d4) * (d6 - d4)) + ((d7 - d5) * (d7 - d5));
        if (d8 >= d9) {
            return Math.sqrt(((d2 - d6) * (d2 - d6)) + ((d3 - d7) * (d3 - d7)));
        }
        double d10 = d8 / d9;
        double d11 = ((d6 - d4) * d10) + d4;
        double d12 = (d10 * (d7 - d5)) + d5;
        return Math.sqrt(((d12 - d3) * (d12 - d3)) + ((d2 - d11) * (d2 - d11)));
    }

    public void setTransparency(float f2) {
        this.Q = (float) Math.min(1.0d, Math.max(0.0d, (double) f2));
        this.f.d().setRunLowFrame(false);
    }

    public void b(List<BitmapDescriptor> list) {
        if (list != null && list.size() != 0) {
            if (list.size() > 1) {
                this.v = false;
                this.E = 5;
                this.k = list;
                this.f.d().setRunLowFrame(false);
                return;
            }
            setCustomTexture((BitmapDescriptor) list.get(0));
        }
    }

    public void setCustemTextureIndex(List<Integer> list) {
        if (list != null && list.size() != 0) {
            try {
                synchronized (this.m) {
                    this.m.clear();
                    this.m.addAll(list);
                    synchronized (this.o) {
                        this.o = e(list);
                    }
                    this.A = true;
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void c(List<Integer> list) {
        if (list != null && list.size() != 0) {
            this.n = list;
            if (list.size() > 1) {
                this.v = false;
                this.p = e(list);
                this.E = 3;
                this.f.d().setRunLowFrame(false);
                return;
            }
            setColor(((Integer) list.get(0)).intValue());
        }
    }

    public void b(boolean z2) {
        if (z2 && this.n != null && this.n.size() > 1) {
            this.B = z2;
            this.E = 4;
            this.f.d().setRunLowFrame(false);
        }
    }

    private List<Integer> e(List<Integer> list) {
        int[] iArr = new int[list.size()];
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue = ((Integer) list.get(i4)).intValue();
            if (i4 == 0) {
                arrayList.add(Integer.valueOf(intValue));
            } else if (intValue != i3) {
                arrayList.add(Integer.valueOf(intValue));
            }
            iArr[i2] = i4;
            i2++;
            i3 = intValue;
        }
        this.T = new int[arrayList.size()];
        System.arraycopy(iArr, 0, this.T, 0, this.T.length);
        return arrayList;
    }

    public void e() {
        this.y = false;
        this.F = 0;
        if (this.U != null) {
            Arrays.fill(this.U, 0);
        }
    }

    public void setAboveMaskLayer(boolean z2) {
        this.W = z2;
    }

    public boolean isAboveMaskLayer() {
        return this.W;
    }

    public void setOptions(PolylineOptions polylineOptions) {
        if (polylineOptions != null) {
            this.Z = polylineOptions;
            try {
                setColor(polylineOptions.getColor());
                setGeodesic(polylineOptions.isGeodesic());
                setDottedLine(polylineOptions.isDottedLine());
                a(polylineOptions.getDottedLineType());
                setAboveMaskLayer(polylineOptions.isAboveMaskLayer());
                setVisible(polylineOptions.isVisible());
                setWidth(polylineOptions.getWidth());
                setZIndex(polylineOptions.getZIndex());
                a(polylineOptions.isUseTexture());
                setTransparency(polylineOptions.getTransparency());
                if (polylineOptions.getColorValues() != null) {
                    c(polylineOptions.getColorValues());
                    b(polylineOptions.isUseGradient());
                }
                if (polylineOptions.getCustomTexture() != null) {
                    setCustomTexture(polylineOptions.getCustomTexture());
                    e();
                }
                if (polylineOptions.getCustomTextureList() != null) {
                    b(polylineOptions.getCustomTextureList());
                    setCustemTextureIndex(polylineOptions.getCustomTextureIndex());
                    e();
                }
                setPoints(polylineOptions.getPoints());
            } catch (RemoteException e2) {
                gf.b((Throwable) e2, "PolylineDelegateImp", "setOptions");
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public PolylineOptions getOptions() {
        return this.Z;
    }
}
