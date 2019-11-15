package com.amap.api.mapcore.util;

import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.RemoteException;
import android.util.Log;
import android.view.animation.AnimationUtils;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.animation.Animation;
import com.amap.api.maps.model.animation.Animation.AnimationListener;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.animation.GLAnimation;
import com.autonavi.amap.mapcore.animation.GLAnimationSet;
import com.autonavi.amap.mapcore.animation.GLTransformation;
import com.autonavi.amap.mapcore.animation.GLTranslateAnimation;
import com.autonavi.amap.mapcore.interfaces.IAnimation;
import com.autonavi.amap.mapcore.interfaces.IMarkerAction;
import com.autonavi.amap.mapcore.interfaces.IOverlayImage;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MarkerDelegateImp */
public class co implements cg, IAnimation, IMarkerAction {
    private static int h = 0;
    private MarkerOptions A;
    private boolean B = false;
    private boolean C = true;
    private int D = 5;
    private boolean E = true;
    private boolean F = true;
    private boolean G = false;
    private boolean H = false;
    private boolean I = false;
    private boolean J = true;
    private FPoint K = FPoint.obtain();
    private Point L = new Point();
    private float M;
    private float N;
    private int O = 0;
    private int P = 0;
    private s Q;
    private s[] R = null;
    private boolean S = false;
    private String T;
    private LatLng U;
    private LatLng V;
    private String W;
    private String X;
    private float Y = 0.5f;
    private float Z = 1.0f;
    float[] a;
    private boolean aa = false;
    private boolean ab = true;
    private q ac;
    private Object ad;
    private boolean ae = false;
    private List<BitmapDescriptor> af = new CopyOnWriteArrayList();
    private boolean ag = false;
    private boolean ah = false;
    private boolean ai = true;
    private int aj = 0;
    private int ak = 20;
    private boolean al = false;
    private int am;
    private int an;
    private long ao = 0;
    private float ap = Float.MAX_VALUE;
    private float aq = Float.MIN_VALUE;
    private float ar = Float.MIN_VALUE;
    private float as = Float.MAX_VALUE;
    float[] b;
    Rect c = new Rect(0, 0, 0, 0);
    int d = 9;
    GLAnimation e;
    GLAnimation f;
    Object g = new Object();
    private boolean i = false;
    private boolean j = false;
    private boolean k = false;
    private float l = 0.0f;
    private float m = 0.0f;
    private boolean n = false;
    private int o = 0;
    private int p = 0;
    private int q = 0;
    private int r = 0;
    private int s;
    private int t;
    private FPoint u = FPoint.obtain();
    private float[] v = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    private float w = 0.0f;
    private float x = 1.0f;
    private float y = 1.0f;
    private float z = 1.0f;

    private static String a(String str) {
        h++;
        return str + h;
    }

    public void setRotateAngle(float f2) {
        this.A.rotateAngle(f2);
        this.m = f2;
        this.l = (((-f2) % 360.0f) + 360.0f) % 360.0f;
        this.k = true;
        r();
    }

    public void destroy(boolean z2) {
        try {
            this.S = true;
            if (z2) {
                remove();
            }
            if (this.ac != null) {
                int i2 = 0;
                while (this.R != null && i2 < this.R.length) {
                    s sVar = this.R[i2];
                    if (sVar != null) {
                        this.ac.a(sVar);
                        this.ac.c().b(sVar.j());
                    }
                    i2++;
                }
            }
            int i3 = 0;
            while (this.af != null && i3 < this.af.size()) {
                ((BitmapDescriptor) this.af.get(i3)).recycle();
                i3++;
            }
            this.U = null;
            this.ad = null;
            this.R = null;
        } catch (Throwable th) {
            gf.b(th, "MarkerDelegateImp", "destroy");
            ThrowableExtension.printStackTrace(th);
            Log.d("destroy erro", "MarkerDelegateImp destroy");
        }
    }

    /* access modifiers changed from: 0000 */
    public synchronized void m() {
        if (this.af != null) {
            this.af.clear();
        }
    }

    public synchronized void a(ArrayList<BitmapDescriptor> arrayList) {
        m();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                BitmapDescriptor bitmapDescriptor = (BitmapDescriptor) it.next();
                if (bitmapDescriptor != null) {
                    this.af.add(bitmapDescriptor);
                }
            }
        }
        if (this.af.size() > 0) {
            this.O = ((BitmapDescriptor) this.af.get(0)).getWidth();
            this.P = ((BitmapDescriptor) this.af.get(0)).getHeight();
        } else {
            this.af.add(BitmapDescriptorFactory.defaultMarker());
            this.O = ((BitmapDescriptor) this.af.get(0)).getWidth();
            this.P = ((BitmapDescriptor) this.af.get(0)).getHeight();
        }
    }

    public co(MarkerOptions markerOptions, q qVar) {
        this.ac = qVar;
        setMarkerOptions(markerOptions);
    }

    public int n() {
        try {
            return this.O;
        } catch (Throwable th) {
            return 0;
        }
    }

    public int o() {
        try {
            return this.P;
        } catch (Throwable th) {
            return 0;
        }
    }

    public Rect h() {
        if (this.v == null) {
            this.c.set(0, 0, 0, 0);
            return this.c;
        }
        try {
            GLMapState c2 = this.ac.c().c();
            int n2 = n();
            int o2 = o();
            IPoint obtain = IPoint.obtain();
            c2.map2Win(this.u.x, this.u.y, obtain);
            Matrix.setIdentityM(this.a, 0);
            Matrix.rotateM(this.a, 0, -this.l, 0.0f, 0.0f, 1.0f);
            if (this.n) {
                Matrix.rotateM(this.a, 0, this.ac.c().getMapConfig().getS_c(), 1.0f, 0.0f, 0.0f);
                Matrix.rotateM(this.a, 0, this.ac.c().getMapConfig().getS_r(), 0.0f, 0.0f, 1.0f);
            }
            float[] fArr = new float[4];
            this.b[0] = ((float) (-n2)) * this.Y;
            this.b[1] = ((float) o2) * this.Z;
            this.b[2] = 0.0f;
            this.b[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.a, 0, this.b, 0);
            this.c.set((int) (((float) obtain.x) + fArr[0]), (int) (((float) obtain.y) - fArr[1]), (int) (((float) obtain.x) + fArr[0]), (int) (((float) obtain.y) - fArr[1]));
            this.b[0] = ((float) n2) * (1.0f - this.Y);
            this.b[1] = ((float) o2) * this.Z;
            this.b[2] = 0.0f;
            this.b[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.a, 0, this.b, 0);
            this.c.union((int) (((float) obtain.x) + fArr[0]), (int) (((float) obtain.y) - fArr[1]));
            this.b[0] = ((float) n2) * (1.0f - this.Y);
            this.b[1] = ((float) (-o2)) * (1.0f - this.Z);
            this.b[2] = 0.0f;
            this.b[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.a, 0, this.b, 0);
            this.c.union((int) (((float) obtain.x) + fArr[0]), (int) (((float) obtain.y) - fArr[1]));
            this.b[0] = ((float) (-n2)) * this.Y;
            this.b[1] = ((float) (-o2)) * (1.0f - this.Z);
            this.b[2] = 0.0f;
            this.b[3] = 1.0f;
            Matrix.multiplyMV(fArr, 0, this.a, 0, this.b, 0);
            this.c.union((int) (((float) obtain.x) + fArr[0]), (int) (((float) obtain.y) - fArr[1]));
            this.q = this.c.centerX() - obtain.x;
            this.r = this.c.top - obtain.y;
            obtain.recycle();
            return this.c;
        } catch (Throwable th) {
            gf.b(th, "MarkerDelegateImp", "getRect");
            ThrowableExtension.printStackTrace(th);
            return new Rect(0, 0, 0, 0);
        }
    }

    public boolean remove() {
        r();
        this.ab = false;
        if (this.ac != null) {
            return this.ac.a((cj) this);
        }
        return false;
    }

    private void r() {
        if (this.ac.c() != null) {
            this.ac.c().setRunLowFrame(false);
        }
    }

    public LatLng getPosition() {
        if (!this.al || this.u == null) {
            return this.U;
        }
        DPoint obtain = DPoint.obtain();
        IPoint obtain2 = IPoint.obtain();
        p();
        this.ac.c().a(this.u.x, this.u.y, obtain2);
        GLMapState.geo2LonLat(obtain2.x, obtain2.y, obtain);
        LatLng latLng = new LatLng(obtain.y, obtain.x);
        obtain2.recycle();
        obtain.recycle();
        return latLng;
    }

    public String getId() {
        if (this.T == null) {
            this.T = a("Marker");
        }
        return this.T;
    }

    public void setPosition(LatLng latLng) {
        if (latLng == null) {
            gf.b((Throwable) new AMapException("非法坐标值 latlng is null"), "setPosition", "Marker");
            return;
        }
        this.U = latLng;
        IPoint obtain = IPoint.obtain();
        if (this.ag) {
            try {
                double[] a2 = ig.a(latLng.longitude, latLng.latitude);
                this.V = new LatLng(a2[1], a2[0]);
                GLMapState.lonlat2Geo(a2[0], a2[1], obtain);
            } catch (Throwable th) {
                this.V = latLng;
            }
        } else {
            GLMapState.lonlat2Geo(latLng.longitude, latLng.latitude, obtain);
        }
        this.s = obtain.x;
        this.t = obtain.y;
        this.al = false;
        p();
        r();
        this.k = true;
        obtain.recycle();
    }

    public void setTitle(String str) {
        this.W = str;
        r();
        this.A.title(str);
    }

    public String getTitle() {
        return this.W;
    }

    public void setSnippet(String str) {
        this.X = str;
        r();
        this.A.snippet(str);
    }

    public String getSnippet() {
        return this.X;
    }

    public void setDraggable(boolean z2) {
        this.aa = z2;
        this.A.draggable(z2);
        r();
    }

    public synchronized void setIcons(ArrayList<BitmapDescriptor> arrayList) {
        if (arrayList != null) {
            try {
                if (this.af != null) {
                    a(arrayList);
                    this.ah = false;
                    this.i = false;
                    this.G = false;
                    r();
                    this.k = true;
                }
            } catch (Throwable th) {
                gf.b(th, "MarkerDelegateImp", "setIcons");
                ThrowableExtension.printStackTrace(th);
            }
        }
        return;
    }

    public synchronized ArrayList<BitmapDescriptor> getIcons() {
        ArrayList<BitmapDescriptor> arrayList;
        if (this.af == null || this.af.size() <= 0) {
            arrayList = null;
        } else {
            ArrayList<BitmapDescriptor> arrayList2 = new ArrayList<>();
            for (BitmapDescriptor add : this.af) {
                arrayList2.add(add);
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setIcon(com.amap.api.maps.model.BitmapDescriptor r4) {
        /*
            r3 = this;
            if (r4 == 0) goto L_0x0006
            java.util.List<com.amap.api.maps.model.BitmapDescriptor> r0 = r3.af     // Catch:{ Throwable -> 0x0032 }
            if (r0 != 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            monitor-enter(r3)     // Catch:{ Throwable -> 0x0032 }
            java.util.List<com.amap.api.maps.model.BitmapDescriptor> r0 = r3.af     // Catch:{ all -> 0x002f }
            r0.clear()     // Catch:{ all -> 0x002f }
            java.util.List<com.amap.api.maps.model.BitmapDescriptor> r0 = r3.af     // Catch:{ all -> 0x002f }
            r0.add(r4)     // Catch:{ all -> 0x002f }
            r0 = 0
            r3.G = r0     // Catch:{ all -> 0x002f }
            r0 = 0
            r3.ah = r0     // Catch:{ all -> 0x002f }
            r0 = 0
            r3.i = r0     // Catch:{ all -> 0x002f }
            r3.r()     // Catch:{ all -> 0x002f }
            r0 = 1
            r3.k = r0     // Catch:{ all -> 0x002f }
            int r0 = r4.getWidth()     // Catch:{ all -> 0x002f }
            r3.O = r0     // Catch:{ all -> 0x002f }
            int r0 = r4.getHeight()     // Catch:{ all -> 0x002f }
            r3.P = r0     // Catch:{ all -> 0x002f }
            monitor-exit(r3)     // Catch:{ all -> 0x002f }
            goto L_0x0006
        L_0x002f:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x002f }
            throw r0     // Catch:{ Throwable -> 0x0032 }
        L_0x0032:
            r0 = move-exception
            java.lang.String r1 = "MarkerDelegateImp"
            java.lang.String r2 = "setIcon"
            com.amap.api.mapcore.util.gf.b(r0, r1, r2)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.co.setIcon(com.amap.api.maps.model.BitmapDescriptor):void");
    }

    private void s() {
        try {
            this.v[(this.d * 0) + 4] = this.Q.b();
            this.v[(0 * this.d) + 5] = this.Q.d();
            this.v[(this.d * 1) + 4] = this.Q.c();
            this.v[(this.d * 1) + 5] = this.Q.d();
            this.v[(this.d * 2) + 4] = this.Q.c();
            this.v[(this.d * 2) + 5] = this.Q.a();
            this.v[(this.d * 3) + 4] = this.Q.b();
            this.v[(this.d * 3) + 5] = this.Q.a();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public boolean isDraggable() {
        return this.aa;
    }

    public boolean isRemoved() {
        try {
            return !this.ac.c(this);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public void showInfoWindow() {
        if (this.ab && isInfoWindowEnable()) {
            this.ac.b((cg) this);
            r();
        }
    }

    public void hideInfoWindow() {
        if (isInfoWindowShown()) {
            this.ac.b((cj) this);
            r();
            this.j = false;
        }
        this.k = false;
    }

    public void a(boolean z2) {
        this.j = z2;
        this.k = true;
    }

    public boolean isInfoWindowShown() {
        return this.j;
    }

    public void setVisible(boolean z2) {
        if (this.ab != z2) {
            this.A.visible(z2);
            this.ab = z2;
            if (!z2) {
                this.I = false;
                if (isInfoWindowShown()) {
                    this.ac.b((cj) this);
                }
            }
            r();
        }
    }

    public boolean isVisible() {
        return this.ab;
    }

    public void setAnchor(float f2, float f3) {
        if (this.Y != f2 || this.Z != f3) {
            this.A.anchor(f2, f3);
            this.Y = f2;
            this.Z = f3;
            this.k = true;
            r();
        }
    }

    public float getAnchorU() {
        return this.Y;
    }

    public float getAnchorV() {
        return this.Z;
    }

    public boolean equalsRemote(IOverlayImage iOverlayImage) throws RemoteException {
        if (equals(iOverlayImage) || iOverlayImage.getId().equals(getId())) {
            return true;
        }
        return false;
    }

    public int hashCodeRemote() {
        return super.hashCode();
    }

    public boolean p() {
        try {
            if (this.ac == null || this.ac.c() == null || this.ac.c().c() == null) {
                return false;
            }
            if (this.u == null) {
                this.u = FPoint.obtain();
            }
            if (this.al) {
                this.ac.c().b(this.am, this.an, (PointF) this.u);
            } else {
                this.ac.c().a(this.t, this.s, this.u);
            }
            return true;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    private void a(l lVar, float f2) throws RemoteException {
        float f3 = 0.0f;
        float n2 = ((float) ((int) (this.x * ((float) n())))) * f2;
        float o2 = ((float) ((int) (this.y * ((float) o())))) * f2;
        float f4 = this.u.x;
        float f5 = this.u.y;
        float s_c = lVar.getMapConfig().getS_c();
        float f6 = this.l;
        if (this.n) {
            f6 -= lVar.getMapConfig().getS_r();
            s_c = 0.0f;
        }
        float f7 = this.z;
        if (f7 >= 0.0f) {
            f3 = f7;
        }
        if (f3 > 1.0f) {
            f3 = 1.0f;
        }
        this.v[(this.d * 0) + 0] = f4 - (this.Y * n2);
        this.v[(this.d * 0) + 1] = ((1.0f - this.Z) * o2) + f5;
        this.v[(this.d * 0) + 2] = f4;
        this.v[(this.d * 0) + 3] = f5;
        this.v[(this.d * 0) + 6] = f6;
        this.v[(this.d * 0) + 7] = s_c;
        this.v[(this.d * 0) + 8] = f3;
        this.v[(this.d * 1) + 0] = ((1.0f - this.Y) * n2) + f4;
        this.v[(this.d * 1) + 1] = ((1.0f - this.Z) * o2) + f5;
        this.v[(this.d * 1) + 2] = f4;
        this.v[(this.d * 1) + 3] = f5;
        this.v[(this.d * 1) + 6] = f6;
        this.v[(this.d * 1) + 7] = s_c;
        this.v[(this.d * 1) + 8] = f3;
        this.v[(this.d * 2) + 0] = ((1.0f - this.Y) * n2) + f4;
        this.v[(this.d * 2) + 1] = f5 - (this.Z * o2);
        this.v[(this.d * 2) + 2] = f4;
        this.v[(this.d * 2) + 3] = f5;
        this.v[(this.d * 2) + 6] = f6;
        this.v[(this.d * 2) + 7] = s_c;
        this.v[(this.d * 2) + 8] = f3;
        this.v[(this.d * 3) + 0] = f4 - (n2 * this.Y);
        this.v[(this.d * 3) + 1] = f5 - (this.Z * o2);
        this.v[(this.d * 3) + 2] = f4;
        this.v[(this.d * 3) + 3] = f5;
        this.v[(this.d * 3) + 6] = f6;
        this.v[(this.d * 3) + 7] = s_c;
        this.v[(this.d * 3) + 8] = f3;
        if (this.af != null && this.af.size() > 0) {
            this.aj++;
            if (this.aj >= this.ak * this.af.size()) {
                this.aj = 0;
            }
            if (this.ak == 0) {
                this.ak = 1;
            }
            this.Q = this.R[this.aj / this.ak];
            if (!this.ai) {
                r();
            }
        }
    }

    public void a(l lVar, float[] fArr, int i2, float f2) {
        if (this.S) {
            return;
        }
        if ((this.U != null || this.al) && this.af != null) {
            this.u.x = (float) (this.s - lVar.getMapConfig().getS_x());
            this.u.y = (float) (this.t - lVar.getMapConfig().getS_y());
            try {
                if (!this.i) {
                    this.ao = System.currentTimeMillis();
                    this.i = true;
                }
                if (this.al && this.F) {
                    lVar.b(this.am, this.an, (PointF) this.u);
                }
                t();
                a(lVar, f2);
                if (!this.G || !this.ai) {
                    s();
                    this.G = true;
                }
                a(fArr, i2);
                if (this.k && isInfoWindowShown()) {
                    this.ac.c().j();
                    if (System.currentTimeMillis() - this.ao > 1000) {
                        this.k = false;
                    }
                }
            } catch (Throwable th) {
                gf.b(th, "MarkerDelegateImp", "drawMarker");
            }
        }
    }

    private void a(float[] fArr, int i2) {
        if (this.R != null && this.R.length > 0) {
            System.arraycopy(this.v, 0, fArr, i2, this.v.length);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x003e A[Catch:{ Throwable -> 0x00aa }] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0045 A[Catch:{ Throwable -> 0x00aa }] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0079 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(com.amap.api.mapcore.util.l r12) {
        /*
            r11 = this;
            r6 = 1
            r3 = 0
            boolean r0 = r11.ah
            if (r0 != 0) goto L_0x00b3
            monitor-enter(r11)
            java.util.List<com.amap.api.maps.model.BitmapDescriptor> r0 = r11.af     // Catch:{ Throwable -> 0x00aa }
            if (r0 == 0) goto L_0x00d4
            java.util.List<com.amap.api.maps.model.BitmapDescriptor> r0 = r11.af     // Catch:{ Throwable -> 0x00aa }
            int r0 = r0.size()     // Catch:{ Throwable -> 0x00aa }
            com.amap.api.mapcore.util.s[] r0 = new com.amap.api.mapcore.util.s[r0]     // Catch:{ Throwable -> 0x00aa }
            r11.R = r0     // Catch:{ Throwable -> 0x00aa }
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch:{ Throwable -> 0x00aa }
            r1 = 12
            if (r0 < r1) goto L_0x0084
            r5 = r6
        L_0x001c:
            java.util.List<com.amap.api.maps.model.BitmapDescriptor> r0 = r11.af     // Catch:{ Throwable -> 0x00aa }
            java.util.Iterator r7 = r0.iterator()     // Catch:{ Throwable -> 0x00aa }
            r4 = r3
        L_0x0023:
            boolean r0 = r7.hasNext()     // Catch:{ Throwable -> 0x00aa }
            if (r0 == 0) goto L_0x00c3
            java.lang.Object r0 = r7.next()     // Catch:{ Throwable -> 0x00aa }
            com.amap.api.maps.model.BitmapDescriptor r0 = (com.amap.api.maps.model.BitmapDescriptor) r0     // Catch:{ Throwable -> 0x00aa }
            r1 = 0
            if (r5 == 0) goto L_0x00dd
            com.amap.api.mapcore.util.s r1 = r12.a(r0)     // Catch:{ Throwable -> 0x00aa }
            if (r1 == 0) goto L_0x00dd
            int r2 = r1.f()     // Catch:{ Throwable -> 0x00aa }
        L_0x003c:
            if (r1 != 0) goto L_0x0043
            com.amap.api.mapcore.util.s r1 = new com.amap.api.mapcore.util.s     // Catch:{ Throwable -> 0x00aa }
            r1.<init>(r0, r2)     // Catch:{ Throwable -> 0x00aa }
        L_0x0043:
            if (r2 != 0) goto L_0x0079
            android.graphics.Bitmap r0 = r0.getBitmap()     // Catch:{ Throwable -> 0x00aa }
            if (r0 == 0) goto L_0x0079
            boolean r2 = r0.isRecycled()     // Catch:{ Throwable -> 0x00aa }
            if (r2 != 0) goto L_0x0079
            int r2 = r0.getWidth()     // Catch:{ Throwable -> 0x00aa }
            r11.O = r2     // Catch:{ Throwable -> 0x00aa }
            int r2 = r0.getHeight()     // Catch:{ Throwable -> 0x00aa }
            r11.P = r2     // Catch:{ Throwable -> 0x00aa }
            com.amap.api.mapcore.util.q r2 = r11.ac     // Catch:{ Throwable -> 0x00aa }
            com.amap.api.mapcore.util.l r2 = r2.c()     // Catch:{ Throwable -> 0x00aa }
            int r2 = r2.e()     // Catch:{ Throwable -> 0x00aa }
            if (r2 != 0) goto L_0x0086
            int r2 = r11.u()     // Catch:{ Throwable -> 0x00aa }
            r1.a(r2)     // Catch:{ Throwable -> 0x00aa }
            if (r5 == 0) goto L_0x0075
            r12.a(r1)     // Catch:{ Throwable -> 0x00aa }
        L_0x0075:
            r8 = 0
            com.amap.api.mapcore.util.ee.b(r2, r0, r8)     // Catch:{ Throwable -> 0x00aa }
        L_0x0079:
            r1.g()     // Catch:{ Throwable -> 0x00aa }
            com.amap.api.mapcore.util.s[] r0 = r11.R     // Catch:{ Throwable -> 0x00aa }
            r0[r4] = r1     // Catch:{ Throwable -> 0x00aa }
            int r0 = r4 + 1
            r4 = r0
            goto L_0x0023
        L_0x0084:
            r5 = r3
            goto L_0x001c
        L_0x0086:
            com.amap.api.mapcore.util.q r8 = r11.ac     // Catch:{ Throwable -> 0x00aa }
            boolean r8 = r8.a(r0, r1)     // Catch:{ Throwable -> 0x00aa }
            if (r8 == 0) goto L_0x00b4
            float r8 = r1.b()     // Catch:{ Throwable -> 0x00aa }
            r9 = 1140850688(0x44000000, float:512.0)
            float r8 = r8 * r9
            int r8 = (int) r8     // Catch:{ Throwable -> 0x00aa }
            float r9 = r1.a()     // Catch:{ Throwable -> 0x00aa }
            r10 = 1149239296(0x44800000, float:1024.0)
            float r9 = r9 * r10
            int r9 = (int) r9     // Catch:{ Throwable -> 0x00aa }
            com.amap.api.mapcore.util.ee.a(r2, r0, r8, r9)     // Catch:{ Throwable -> 0x00aa }
            r1.a(r2)     // Catch:{ Throwable -> 0x00aa }
        L_0x00a4:
            if (r5 == 0) goto L_0x0079
            r12.a(r1)     // Catch:{ Throwable -> 0x00aa }
            goto L_0x0079
        L_0x00aa:
            r0 = move-exception
            java.lang.String r1 = "MarkerDelegateImp"
            java.lang.String r2 = "loadtexture"
            com.amap.api.mapcore.util.gf.b(r0, r1, r2)     // Catch:{ all -> 0x00c0 }
            monitor-exit(r11)     // Catch:{ all -> 0x00c0 }
        L_0x00b3:
            return
        L_0x00b4:
            int r2 = r11.u()     // Catch:{ Throwable -> 0x00aa }
            r8 = 0
            com.amap.api.mapcore.util.ee.b(r2, r0, r8)     // Catch:{ Throwable -> 0x00aa }
            r1.a(r2)     // Catch:{ Throwable -> 0x00aa }
            goto L_0x00a4
        L_0x00c0:
            r0 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x00c0 }
            throw r0
        L_0x00c3:
            java.util.List<com.amap.api.maps.model.BitmapDescriptor> r0 = r11.af     // Catch:{ Throwable -> 0x00aa }
            int r0 = r0.size()     // Catch:{ Throwable -> 0x00aa }
            if (r0 != r6) goto L_0x00d9
            r0 = 1
            r11.ai = r0     // Catch:{ Throwable -> 0x00aa }
        L_0x00ce:
            r0 = 0
            r11.G = r0     // Catch:{ Throwable -> 0x00aa }
            r0 = 1
            r11.ah = r0     // Catch:{ Throwable -> 0x00aa }
        L_0x00d4:
            r11.p()     // Catch:{ all -> 0x00c0 }
            monitor-exit(r11)     // Catch:{ all -> 0x00c0 }
            goto L_0x00b3
        L_0x00d9:
            r0 = 0
            r11.ai = r0     // Catch:{ Throwable -> 0x00aa }
            goto L_0x00ce
        L_0x00dd:
            r2 = r3
            goto L_0x003c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.co.a(com.amap.api.mapcore.util.l):void");
    }

    private void t() {
        if (this.J || this.e == null || this.e.hasEnded()) {
            this.x = 1.0f;
            this.y = 1.0f;
            this.J = true;
            return;
        }
        r();
        synchronized (this.g) {
            GLTransformation gLTransformation = new GLTransformation();
            this.e.getTransformation(AnimationUtils.currentAnimationTimeMillis(), gLTransformation);
            if (gLTransformation != null) {
                if (!Double.isNaN(gLTransformation.scale_x) && !Double.isNaN(gLTransformation.scale_y)) {
                    this.x = (float) gLTransformation.scale_x;
                    this.y = (float) gLTransformation.scale_y;
                }
                if (!Double.isNaN(gLTransformation.rotate)) {
                    setRotateAngle((float) gLTransformation.rotate);
                }
                if (!Double.isNaN(gLTransformation.x) && !Double.isNaN(gLTransformation.y)) {
                    double d2 = gLTransformation.x;
                    double d3 = gLTransformation.y;
                    if (this.al) {
                        FPoint obtain = FPoint.obtain();
                        this.ac.c().c().win2Map((int) d2, (int) d3, obtain);
                        IPoint obtain2 = IPoint.obtain();
                        this.ac.c().c().map2Geo(obtain.x, obtain.y, obtain2);
                        a(obtain2.x, obtain2.y);
                        obtain.recycle();
                        obtain2.recycle();
                        this.al = true;
                    } else {
                        a((int) d2, (int) d3);
                    }
                }
                if (!Double.isNaN(gLTransformation.alpha)) {
                    this.z = (float) gLTransformation.alpha;
                }
            }
        }
        this.k = true;
        this.ai = false;
    }

    private int u() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    public boolean i() {
        return this.ai;
    }

    public void setPeriod(int i2) {
        if (i2 <= 1) {
            this.ak = 1;
        } else {
            this.ak = i2;
        }
    }

    public void setObject(Object obj) {
        this.ad = obj;
    }

    public Object getObject() {
        return this.ad;
    }

    public void setPerspective(boolean z2) {
        this.ae = z2;
    }

    public boolean isPerspective() {
        return this.ae;
    }

    public int k() {
        try {
            if (this.af == null || this.af.size() <= 0) {
                return 0;
            }
            return this.Q.f();
        } catch (Throwable th) {
            return 0;
        }
    }

    public int getPeriod() {
        return this.ak;
    }

    public LatLng b() {
        if (!this.al) {
            return this.ag ? this.V : this.U;
        }
        this.ac.c().c().win2Map(this.am, this.an, this.u);
        DPoint obtain = DPoint.obtain();
        this.ac.c().b(this.am, this.an, obtain);
        LatLng latLng = new LatLng(obtain.y, obtain.y);
        obtain.recycle();
        return latLng;
    }

    public void set2Top() {
        this.ac.a((cg) this);
    }

    public void setFlat(boolean z2) throws RemoteException {
        this.n = z2;
        r();
        this.A.setFlat(z2);
    }

    public boolean isFlat() {
        return this.n;
    }

    public float getRotateAngle() {
        r();
        return this.m;
    }

    public int c() {
        return this.o;
    }

    public int d() {
        return this.p;
    }

    public void setPositionByPixels(int i2, int i3) {
        this.am = i2;
        this.an = i3;
        this.al = true;
        p();
        r();
        this.k = true;
    }

    public int e() {
        return this.q;
    }

    public int f() {
        return this.r;
    }

    public FPoint a() {
        return this.u;
    }

    public boolean g() {
        return this.al;
    }

    public void setZIndex(float f2) {
        this.w = f2;
        this.A.zIndex(f2);
        this.ac.f();
    }

    public float getZIndex() {
        return this.w;
    }

    public boolean j() {
        if (this.al) {
            return true;
        }
        if (this.u != null) {
            if (!this.J) {
                return true;
            }
            this.L.x = this.s;
            this.L.y = this.t;
            if (this.ac.c().getMapConfig().getGeoRectangle().contains(this.s, this.t)) {
                return true;
            }
            v();
            this.K.x = this.u.x;
            this.K.y = this.u.y;
            FPoint[] mapRect = this.ac.c().getMapConfig().getMapRect();
            a(mapRect);
            if (ee.a(this.K, mapRect)) {
                return true;
            }
        }
        return false;
    }

    public void setGeoPoint(IPoint iPoint) {
        this.al = false;
        a(iPoint.x, iPoint.y);
    }

    private void a(int i2, int i3) {
        this.s = i2;
        this.t = i3;
        DPoint obtain = DPoint.obtain();
        GLMapState.geo2LonLat(this.s, this.t, obtain);
        this.U = new LatLng(obtain.y, obtain.x, false);
        this.ac.c().c().geo2Map(this.s, this.t, this.u);
        obtain.recycle();
        r();
    }

    public IPoint getGeoPoint() {
        IPoint obtain = IPoint.obtain();
        if (this.al) {
            this.ac.c().a(this.am, this.an, obtain);
        } else {
            obtain.set(this.s, this.t);
        }
        return obtain;
    }

    public void setAnimation(Animation animation) {
        IAnimation q2 = q();
        if (q2 != null) {
            q2.setAnimation(animation == null ? null : animation.glAnimation);
        }
    }

    public void setAnimation(GLAnimation gLAnimation) {
        if (gLAnimation != null) {
            this.f = gLAnimation;
        }
    }

    public boolean startAnimation() {
        if (this.f != null) {
            synchronized (this.g) {
                if (this.f instanceof GLAnimationSet) {
                    GLAnimationSet gLAnimationSet = (GLAnimationSet) this.f;
                    for (GLAnimation gLAnimation : gLAnimationSet.getAnimations()) {
                        a(gLAnimation);
                        gLAnimation.setDuration(gLAnimationSet.getDuration());
                    }
                } else {
                    a(this.f);
                }
                this.J = false;
                this.e = this.f;
                this.e.start();
            }
            r();
        }
        return false;
    }

    private void a(GLAnimation gLAnimation) {
        if (gLAnimation instanceof GLTranslateAnimation) {
            if (this.al) {
                this.U = getPosition();
                setPosition(this.U);
                this.al = true;
            }
            if (this.al) {
                ((GLTranslateAnimation) gLAnimation).mFromXDelta = (double) this.am;
                ((GLTranslateAnimation) gLAnimation).mFromYDelta = (double) this.an;
                IPoint obtain = IPoint.obtain();
                this.ac.c().b(((GLTranslateAnimation) gLAnimation).mToYDelta, ((GLTranslateAnimation) gLAnimation).mToXDelta, obtain);
                ((GLTranslateAnimation) gLAnimation).mToXDelta = (double) obtain.x;
                ((GLTranslateAnimation) gLAnimation).mToYDelta = (double) obtain.y;
                obtain.recycle();
                return;
            }
            ((GLTranslateAnimation) gLAnimation).mFromXDelta = (double) this.s;
            ((GLTranslateAnimation) gLAnimation).mFromYDelta = (double) this.t;
            IPoint obtain2 = IPoint.obtain();
            GLMapState.lonlat2Geo(((GLTranslateAnimation) gLAnimation).mToXDelta, ((GLTranslateAnimation) gLAnimation).mToYDelta, obtain2);
            ((GLTranslateAnimation) gLAnimation).mToXDelta = (double) obtain2.x;
            ((GLTranslateAnimation) gLAnimation).mToYDelta = (double) obtain2.y;
            obtain2.recycle();
        }
    }

    public void setAnimationListener(AnimationListener animationListener) {
        if (this.e != null) {
            this.e.setAnimationListener(animationListener);
        }
    }

    public IAnimation q() {
        return this;
    }

    public IMarkerAction getIMarkerAction() {
        return this;
    }

    public float getAlpha() {
        return this.z;
    }

    public void setAlpha(float f2) {
        this.z = f2;
        this.A.alpha(f2);
    }

    public int getDisplayLevel() {
        return this.D;
    }

    public MarkerOptions getOptions() {
        return this.A;
    }

    public void setMarkerOptions(MarkerOptions markerOptions) {
        if (markerOptions != null) {
            this.A = markerOptions;
            this.U = this.A.getPosition();
            IPoint obtain = IPoint.obtain();
            this.ag = this.A.isGps();
            if (this.A.getPosition() != null) {
                if (this.ag) {
                    try {
                        double[] a2 = ig.a(this.A.getPosition().longitude, this.A.getPosition().latitude);
                        this.V = new LatLng(a2[1], a2[0]);
                        GLMapState.lonlat2Geo(a2[0], a2[1], obtain);
                    } catch (Throwable th) {
                        gf.b(th, "MarkerDelegateImp", "create");
                        this.V = this.A.getPosition();
                    }
                } else {
                    GLMapState.lonlat2Geo(this.U.longitude, this.U.latitude, obtain);
                }
            }
            this.s = obtain.x;
            this.t = obtain.y;
            this.Y = this.A.getAnchorU();
            this.Z = this.A.getAnchorV();
            this.o = this.A.getInfoWindowOffsetX();
            this.p = this.A.getInfoWindowOffsetY();
            this.ak = this.A.getPeriod();
            this.w = this.A.getZIndex();
            this.H = this.A.isBelowMaskLayer();
            p();
            a(this.A.getIcons());
            this.ab = this.A.isVisible();
            this.X = this.A.getSnippet();
            this.W = this.A.getTitle();
            this.aa = this.A.isDraggable();
            this.T = getId();
            this.ae = this.A.isPerspective();
            this.n = this.A.isFlat();
            this.H = this.A.isBelowMaskLayer();
            this.z = this.A.getAlpha();
            setRotateAngle(this.A.getRotateAngle());
            this.D = this.A.getDisplayLevel();
            this.B = this.A.isInfoWindowAutoOverturn();
            this.C = this.A.isInfoWindowEnable();
            this.a = new float[16];
            this.b = new float[4];
            obtain.recycle();
        }
    }

    public boolean isClickable() {
        return this.E;
    }

    public boolean isInfoWindowAutoOverturn() {
        return this.B;
    }

    public boolean isInfoWindowEnable() {
        return this.C;
    }

    public void b(boolean z2) {
        this.I = z2;
    }

    public boolean l() {
        return this.I;
    }

    public void setInfoWindowEnable(boolean z2) {
        this.C = z2;
        if (!z2) {
            hideInfoWindow();
        }
        this.A.infoWindowEnable(z2);
    }

    public void setAutoOverturnInfoWindow(boolean z2) {
        this.B = z2;
        this.A.autoOverturnInfoWindow(z2);
    }

    public void setClickable(boolean z2) {
        this.E = z2;
    }

    public void setDisplayLevel(int i2) {
        this.D = i2;
        this.A.displayLevel(i2);
    }

    public void setFixingPointEnable(boolean z2) {
        this.F = z2;
        if (!z2) {
            boolean z3 = false;
            if (this.al) {
                z3 = true;
            }
            this.U = getPosition();
            setPosition(this.U);
            if (z3) {
                this.al = true;
            }
        } else if (this.al && this.U != null) {
            IPoint obtain = IPoint.obtain();
            this.ac.c().c().map2Win(this.u.x, this.u.y, obtain);
            this.am = obtain.x;
            this.an = obtain.y;
            obtain.recycle();
        }
    }

    public void setPositionNotUpdate(LatLng latLng) {
        setPosition(latLng);
    }

    public void setRotateAngleNotUpdate(float f2) {
    }

    public void setBelowMaskLayer(boolean z2) {
        this.H = z2;
    }

    private void a(FPoint[] fPointArr) {
        if (fPointArr != null) {
            v();
            if (this.M > 0.0f && this.N > 0.0f && fPointArr.length == 4) {
                this.ap = Math.min(fPointArr[0].x, fPointArr[1].x);
                this.ap = Math.min(this.ap, fPointArr[2].x);
                this.ap = Math.min(this.ap, fPointArr[3].x);
                this.aq = Math.max(fPointArr[0].x, fPointArr[1].x);
                this.aq = Math.max(this.aq, fPointArr[2].x);
                this.aq = Math.max(this.aq, fPointArr[3].x);
                this.as = Math.min(fPointArr[0].y, fPointArr[1].y);
                this.as = Math.min(this.as, fPointArr[2].y);
                this.as = Math.min(this.as, fPointArr[3].y);
                this.ar = Math.max(fPointArr[0].y, fPointArr[1].y);
                this.ar = Math.max(this.ar, fPointArr[2].y);
                this.ar = Math.max(this.ar, fPointArr[3].y);
                if (this.u.x < (this.ap + this.aq) / 2.0f) {
                    this.K.x = this.u.x + (this.M / 2.0f);
                } else {
                    this.K.x = this.u.x - (this.M / 2.0f);
                }
                if (this.u.y < (this.as + this.ar) / 2.0f) {
                    this.K.y = this.u.y;
                    return;
                }
                this.K.y = this.u.y - this.N;
            }
        }
    }

    private void v() {
        if (this.ac.c() != null && this.ac.c().getMapConfig() != null) {
            this.M = this.ac.c().getMapConfig().getMapPerPixelUnitLength() * ((float) n());
            this.N = this.ac.c().getMapConfig().getMapPerPixelUnitLength() * ((float) o());
        }
    }
}
