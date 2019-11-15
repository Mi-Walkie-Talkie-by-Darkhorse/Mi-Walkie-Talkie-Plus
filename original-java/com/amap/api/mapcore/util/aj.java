package com.amap.api.mapcore.util;

import android.graphics.Rect;
import android.opengl.Matrix;
import android.os.RemoteException;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.amap.api.maps.model.MultiPointItem;
import com.amap.api.maps.model.MultiPointOverlayOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapConfig;
import com.autonavi.amap.mapcore.MapProjection;
import com.autonavi.amap.mapcore.interfaces.IMultiPointOverlay;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: MultiPointOverlayDelegate */
public class aj implements IMultiPointOverlay {
    private static int F = 0;
    String A = "//有颜色 没有纹理\nprecision highp float;\nvoid main(){\n  gl_FragColor = vec4(0,0,1,1.0);\n}";
    int B = -1;
    private String C;
    private float[] D = {-0.5f, -0.5f, 0.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.5f, 0.0f, 0.0f, 0.0f, 1.0f, 0.5f, 0.5f, 0.0f, 0.0f, 1.0f, 1.0f, 0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f};
    private boolean E = true;
    private ExecutorService G = null;
    /* access modifiers changed from: private */
    public List<String> H = new ArrayList();
    private int I = 3;
    private float[] J = new float[(ah.a * this.I)];
    BitmapDescriptor a = BitmapDescriptorFactory.defaultMarker();
    BitmapDescriptor b = null;
    float c = 0.0f;
    float d = 0.0f;
    float e = 0.0f;
    float f = 0.5f;
    float g = 0.5f;
    List<MultiPointItem> h;
    al i = null;
    ai j = null;
    ai k = new ai(0, 1, 0, 1);
    List<MultiPointItem> l = new ArrayList();
    IPoint m;
    ak n;
    float[] o = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    List<ah> p = new ArrayList();
    float[] q = new float[16];
    float[] r = new float[4];
    float[] s = new float[4];
    Rect t = new Rect();
    ai u = null;
    ai v = null;
    int w = 0;
    int x = 0;
    float[] y = new float[12];
    String z = "precision highp float;\nattribute vec3 aVertex;//顶点数组,三维坐标\nuniform mat4 aMVPMatrix;//mvp矩阵\nvoid main(){\n  gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n}";

    public aj(MultiPointOverlayOptions multiPointOverlayOptions, ak akVar) {
        this.n = akVar;
        a(multiPointOverlayOptions);
        ah ahVar = new ah(a(), this);
        ahVar.a(akVar.a());
        ahVar.a(this.b);
        this.p.add(ahVar);
    }

    private float[] a() {
        if (this.D == null) {
            return null;
        }
        float[] fArr = (float[]) this.D.clone();
        float f2 = this.f - 0.5f;
        float f3 = this.g - 0.5f;
        fArr[0] = fArr[0] + f2;
        fArr[1] = fArr[1] - f3;
        fArr[6] = fArr[6] + f2;
        fArr[7] = fArr[7] - f3;
        fArr[12] = fArr[12] + f2;
        fArr[13] = fArr[13] - f3;
        fArr[18] = f2 + fArr[18];
        fArr[19] = fArr[19] - f3;
        return fArr;
    }

    private static String a(String str) {
        F++;
        return str + F;
    }

    private void a(MultiPointOverlayOptions multiPointOverlayOptions) {
        if (multiPointOverlayOptions != null) {
            if (multiPointOverlayOptions.getIcon() == null || multiPointOverlayOptions.getIcon().getBitmap() == null || multiPointOverlayOptions.getIcon().getBitmap().isRecycled()) {
                this.b = this.a;
            } else {
                this.b = multiPointOverlayOptions.getIcon();
            }
            this.f = multiPointOverlayOptions.getAnchorU();
            this.g = multiPointOverlayOptions.getAnchorV();
        }
    }

    public void addItems(List<MultiPointItem> list) {
        int i2 = 0;
        try {
            synchronized (this) {
                if (this.h == null) {
                    this.h = new ArrayList();
                }
                this.h.clear();
                this.h.addAll(list);
                int size = this.h.size();
                int i3 = 0;
                while (i3 < size) {
                    if (this.h != null) {
                        MultiPointItem multiPointItem = (MultiPointItem) this.h.get(i3);
                        if (!(multiPointItem == null || multiPointItem.getLatLng() == null || multiPointItem.getIPoint() != null)) {
                            IPoint iPoint = new IPoint();
                            MapProjection.lonlat2Geo(multiPointItem.getLatLng().longitude, multiPointItem.getLatLng().latitude, iPoint);
                            multiPointItem.setIPoint(iPoint);
                        }
                        i3++;
                    } else {
                        return;
                    }
                }
                if (this.i == null) {
                    ai b2 = b();
                    if (b2 != null) {
                        this.i = new al(b2);
                    }
                }
                int size2 = this.h.size();
                while (i2 < size2) {
                    if (this.h != null) {
                        MultiPointItem multiPointItem2 = (MultiPointItem) this.h.get(i2);
                        if (!(multiPointItem2 == null || multiPointItem2.getIPoint() == null || this.i == null)) {
                            this.i.a(multiPointItem2);
                        }
                        i2++;
                    } else {
                        return;
                    }
                }
                d();
            }
        } catch (Throwable th) {
            gf.b(th, "MultiPointOverlayDelegate", "addItems");
        }
    }

    public void addItem(MultiPointItem multiPointItem) {
        synchronized (this) {
        }
        d();
    }

    private ai b() {
        if (this.h == null || this.h.size() == 0) {
            return null;
        }
        Iterator it = this.h.iterator();
        MultiPointItem multiPointItem = (MultiPointItem) it.next();
        int i2 = multiPointItem.getIPoint().x;
        int i3 = multiPointItem.getIPoint().x;
        int i4 = multiPointItem.getIPoint().y;
        int i5 = multiPointItem.getIPoint().y;
        int i6 = i2;
        int i7 = i3;
        int i8 = i4;
        while (true) {
            int i9 = i5;
            if (!it.hasNext()) {
                return new ai(i6, i7, i8, i9);
            }
            MultiPointItem multiPointItem2 = (MultiPointItem) it.next();
            int i10 = multiPointItem2.getIPoint().x;
            i5 = multiPointItem2.getIPoint().y;
            if (i10 < i6) {
                i6 = i10;
            }
            if (i10 > i7) {
                i7 = i10;
            }
            if (i5 < i8) {
                i8 = i5;
            }
            if (i5 <= i9) {
                i5 = i9;
            }
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void draw(com.autonavi.amap.mapcore.MapConfig r13, float[] r14, float[] r15) {
        /*
            r12 = this;
            r9 = 0
            boolean r0 = r12.E     // Catch:{ Throwable -> 0x0103 }
            if (r0 != 0) goto L_0x0006
        L_0x0005:
            return
        L_0x0006:
            r12.c()     // Catch:{ Throwable -> 0x0103 }
            java.util.List<com.amap.api.mapcore.util.ah> r0 = r12.p     // Catch:{ Throwable -> 0x0103 }
            int r0 = r0.size()     // Catch:{ Throwable -> 0x0103 }
            r1 = 1
            if (r0 < r1) goto L_0x0005
            com.amap.api.mapcore.util.al r0 = r12.i     // Catch:{ Throwable -> 0x0103 }
            if (r0 == 0) goto L_0x0005
            float r6 = r13.getS_r()     // Catch:{ Throwable -> 0x0103 }
            float r7 = r13.getS_c()     // Catch:{ Throwable -> 0x0103 }
            double r0 = r13.getChangeRatio()     // Catch:{ Throwable -> 0x0103 }
            r2 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L_0x0030
            java.util.List<com.amap.api.maps.model.MultiPointItem> r0 = r12.l     // Catch:{ Throwable -> 0x0103 }
            int r0 = r0.size()     // Catch:{ Throwable -> 0x0103 }
            if (r0 != 0) goto L_0x0073
        L_0x0030:
            java.util.List<com.amap.api.maps.model.MultiPointItem> r1 = r12.l     // Catch:{ Throwable -> 0x0103 }
            monitor-enter(r1)     // Catch:{ Throwable -> 0x0103 }
            r12.a(r13)     // Catch:{ all -> 0x0100 }
            java.util.List<com.amap.api.maps.model.MultiPointItem> r0 = r12.l     // Catch:{ all -> 0x0100 }
            r0.clear()     // Catch:{ all -> 0x0100 }
            float r0 = r13.getMapPerPixelUnitLength()     // Catch:{ all -> 0x0100 }
            r12.c = r0     // Catch:{ all -> 0x0100 }
            float r0 = r12.c     // Catch:{ all -> 0x0100 }
            com.amap.api.maps.model.BitmapDescriptor r2 = r12.b     // Catch:{ all -> 0x0100 }
            int r2 = r2.getWidth()     // Catch:{ all -> 0x0100 }
            float r2 = (float) r2     // Catch:{ all -> 0x0100 }
            float r0 = r0 * r2
            r12.d = r0     // Catch:{ all -> 0x0100 }
            float r0 = r12.c     // Catch:{ all -> 0x0100 }
            com.amap.api.maps.model.BitmapDescriptor r2 = r12.b     // Catch:{ all -> 0x0100 }
            int r2 = r2.getHeight()     // Catch:{ all -> 0x0100 }
            float r2 = (float) r2     // Catch:{ all -> 0x0100 }
            float r0 = r0 * r2
            r12.e = r0     // Catch:{ all -> 0x0100 }
            float r0 = r12.d     // Catch:{ all -> 0x0100 }
            float r2 = r12.e     // Catch:{ all -> 0x0100 }
            float r0 = r0 * r2
            r2 = 1098907648(0x41800000, float:16.0)
            float r0 = r0 * r2
            double r2 = (double) r0     // Catch:{ all -> 0x0100 }
            float r0 = r12.d     // Catch:{ all -> 0x0100 }
            float r4 = r12.e     // Catch:{ all -> 0x0100 }
            r12.a(r0, r4, r6, r7)     // Catch:{ all -> 0x0100 }
            com.amap.api.mapcore.util.al r0 = r12.i     // Catch:{ all -> 0x0100 }
            com.amap.api.mapcore.util.ai r4 = r12.j     // Catch:{ all -> 0x0100 }
            java.util.List<com.amap.api.maps.model.MultiPointItem> r5 = r12.l     // Catch:{ all -> 0x0100 }
            r0.a(r4, r5, r2)     // Catch:{ all -> 0x0100 }
            monitor-exit(r1)     // Catch:{ all -> 0x0100 }
        L_0x0073:
            com.autonavi.amap.mapcore.IPoint r0 = r12.m     // Catch:{ Throwable -> 0x0103 }
            if (r0 != 0) goto L_0x007e
            com.autonavi.amap.mapcore.IPoint r0 = new com.autonavi.amap.mapcore.IPoint     // Catch:{ Throwable -> 0x0103 }
            r0.<init>()     // Catch:{ Throwable -> 0x0103 }
            r12.m = r0     // Catch:{ Throwable -> 0x0103 }
        L_0x007e:
            com.autonavi.amap.mapcore.IPoint r0 = r12.m     // Catch:{ Throwable -> 0x0103 }
            if (r0 == 0) goto L_0x0094
            if (r13 == 0) goto L_0x0094
            com.autonavi.amap.mapcore.IPoint r0 = r12.m     // Catch:{ Throwable -> 0x0103 }
            int r1 = r13.getS_x()     // Catch:{ Throwable -> 0x0103 }
            r0.x = r1     // Catch:{ Throwable -> 0x0103 }
            com.autonavi.amap.mapcore.IPoint r0 = r12.m     // Catch:{ Throwable -> 0x0103 }
            int r1 = r13.getS_y()     // Catch:{ Throwable -> 0x0103 }
            r0.y = r1     // Catch:{ Throwable -> 0x0103 }
        L_0x0094:
            java.util.List<com.amap.api.mapcore.util.ah> r0 = r12.p     // Catch:{ Throwable -> 0x0103 }
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch:{ Throwable -> 0x0103 }
            com.amap.api.mapcore.util.ah r0 = (com.amap.api.mapcore.util.ah) r0     // Catch:{ Throwable -> 0x0103 }
            java.util.List<com.amap.api.maps.model.MultiPointItem> r10 = r12.l     // Catch:{ Throwable -> 0x0103 }
            monitor-enter(r10)     // Catch:{ Throwable -> 0x0103 }
            java.util.List<com.amap.api.maps.model.MultiPointItem> r1 = r12.l     // Catch:{ all -> 0x011d }
            java.util.Iterator r11 = r1.iterator()     // Catch:{ all -> 0x011d }
            r8 = r9
        L_0x00a7:
            boolean r1 = r11.hasNext()     // Catch:{ all -> 0x011d }
            if (r1 == 0) goto L_0x010d
            java.lang.Object r1 = r11.next()     // Catch:{ all -> 0x011d }
            com.amap.api.maps.model.MultiPointItem r1 = (com.amap.api.maps.model.MultiPointItem) r1     // Catch:{ all -> 0x011d }
            com.autonavi.amap.mapcore.IPoint r1 = r1.getIPoint()     // Catch:{ all -> 0x011d }
            if (r1 == 0) goto L_0x00a7
            int r2 = r1.x     // Catch:{ all -> 0x011d }
            com.autonavi.amap.mapcore.IPoint r3 = r12.m     // Catch:{ all -> 0x011d }
            int r3 = r3.x     // Catch:{ all -> 0x011d }
            int r2 = r2 - r3
            int r1 = r1.y     // Catch:{ all -> 0x011d }
            com.autonavi.amap.mapcore.IPoint r3 = r12.m     // Catch:{ all -> 0x011d }
            int r3 = r3.y     // Catch:{ all -> 0x011d }
            int r1 = r1 - r3
            if (r0 == 0) goto L_0x00a7
            boolean r3 = r0.b()     // Catch:{ all -> 0x011d }
            if (r3 == 0) goto L_0x00a7
            float[] r3 = r12.J     // Catch:{ all -> 0x011d }
            int r4 = r12.I     // Catch:{ all -> 0x011d }
            int r4 = r4 * r8
            int r4 = r4 + 0
            float r2 = (float) r2     // Catch:{ all -> 0x011d }
            r3[r4] = r2     // Catch:{ all -> 0x011d }
            float[] r2 = r12.J     // Catch:{ all -> 0x011d }
            int r3 = r12.I     // Catch:{ all -> 0x011d }
            int r3 = r3 * r8
            int r3 = r3 + 1
            float r1 = (float) r1     // Catch:{ all -> 0x011d }
            r2[r3] = r1     // Catch:{ all -> 0x011d }
            float[] r1 = r12.J     // Catch:{ all -> 0x011d }
            int r2 = r12.I     // Catch:{ all -> 0x011d }
            int r2 = r2 * r8
            int r2 = r2 + 2
            r3 = 0
            r1[r2] = r3     // Catch:{ all -> 0x011d }
            int r8 = r8 + 1
            int r1 = com.amap.api.mapcore.util.ah.a     // Catch:{ all -> 0x011d }
            if (r8 < r1) goto L_0x00a7
            float[] r3 = r12.J     // Catch:{ all -> 0x011d }
            float r4 = r12.d     // Catch:{ all -> 0x011d }
            float r5 = r12.e     // Catch:{ all -> 0x011d }
            r1 = r14
            r2 = r15
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch:{ all -> 0x011d }
            r8 = r9
            goto L_0x00a7
        L_0x0100:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0100 }
            throw r0     // Catch:{ Throwable -> 0x0103 }
        L_0x0103:
            r0 = move-exception
            java.lang.String r1 = "MultiPointOverlayDelegate"
            java.lang.String r2 = "draw"
            com.amap.api.mapcore.util.gf.b(r0, r1, r2)
            goto L_0x0005
        L_0x010d:
            monitor-exit(r10)     // Catch:{ all -> 0x011d }
            if (r8 <= 0) goto L_0x0005
            float[] r3 = r12.J     // Catch:{ Throwable -> 0x0103 }
            float r4 = r12.d     // Catch:{ Throwable -> 0x0103 }
            float r5 = r12.e     // Catch:{ Throwable -> 0x0103 }
            r1 = r14
            r2 = r15
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch:{ Throwable -> 0x0103 }
            goto L_0x0005
        L_0x011d:
            r0 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x011d }
            throw r0     // Catch:{ Throwable -> 0x0103 }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.aj.draw(com.autonavi.amap.mapcore.MapConfig, float[], float[]):void");
    }

    private void c() {
        if (this.G == null) {
            this.G = Executors.newSingleThreadExecutor();
        }
        for (final ah ahVar : this.p) {
            if (ahVar != null && !ahVar.b()) {
                final String str = ahVar.hashCode() + "";
                if (!this.H.contains(str)) {
                    this.H.add(str);
                    this.G.execute(new Runnable() {
                        public void run() {
                            if (!ahVar.b()) {
                                ahVar.a();
                                aj.this.H.remove(str);
                            }
                        }
                    });
                }
            }
        }
    }

    private void a(MapConfig mapConfig) {
        if (mapConfig != null) {
            Rect rect = mapConfig.getGeoRectangle().getRect();
            if (this.j == null) {
                this.j = new ai(rect.left, rect.right, rect.top, rect.bottom);
            } else {
                this.j.a(rect.left, rect.right, rect.top, rect.bottom);
            }
        }
    }

    private void a(float f2, float f3, float f4, float f5) {
        if (this.k == null) {
            this.k = new ai(0, 1, 0, 1);
        }
        this.t.set(0, 0, 0, 0);
        IPoint iPoint = new IPoint();
        float f6 = this.f;
        float f7 = this.g;
        Matrix.setIdentityM(this.q, 0);
        Matrix.rotateM(this.q, 0, -f4, 0.0f, 0.0f, 1.0f);
        this.s[0] = 0.0f;
        this.s[1] = 0.0f;
        this.s[2] = 0.0f;
        this.s[3] = 0.0f;
        this.r[0] = (-f2) * f6;
        this.r[1] = f3 * f7;
        this.r[2] = 0.0f;
        this.r[3] = 1.0f;
        Matrix.multiplyMV(this.s, 0, this.q, 0, this.r, 0);
        this.t.set((int) (((float) iPoint.x) + this.s[0]), (int) (((float) iPoint.y) - this.s[1]), (int) (((float) iPoint.x) + this.s[0]), (int) (((float) iPoint.y) - this.s[1]));
        this.r[0] = (1.0f - f6) * f2;
        this.r[1] = f3 * f7;
        this.r[2] = 0.0f;
        this.r[3] = 1.0f;
        Matrix.multiplyMV(this.s, 0, this.q, 0, this.r, 0);
        this.t.union((int) (((float) iPoint.x) + this.s[0]), (int) (((float) iPoint.y) - this.s[1]));
        this.r[0] = (1.0f - f6) * f2;
        this.r[1] = (-f3) * (1.0f - f7);
        this.r[2] = 0.0f;
        this.r[3] = 1.0f;
        Matrix.multiplyMV(this.s, 0, this.q, 0, this.r, 0);
        this.t.union((int) (((float) iPoint.x) + this.s[0]), (int) (((float) iPoint.y) - this.s[1]));
        this.r[0] = (-f2) * f6;
        this.r[1] = (-f3) * (1.0f - f7);
        this.r[2] = 0.0f;
        this.r[3] = 1.0f;
        Matrix.multiplyMV(this.s, 0, this.q, 0, this.r, 0);
        this.t.union((int) (((float) iPoint.x) + this.s[0]), (int) (((float) iPoint.y) - this.s[1]));
        this.k.a(this.t.left, this.t.right, this.t.top, this.t.bottom);
    }

    public MultiPointItem onClick(IPoint iPoint) {
        if (!this.E || this.i == null) {
            return null;
        }
        if (this.u == null) {
            this.u = new ai(0, 1, 0, 1);
        }
        int i2 = (int) (this.c * 8.0f);
        this.u.a(iPoint.x - i2, iPoint.x + i2, iPoint.y - i2, i2 + iPoint.y);
        synchronized (this.l) {
            for (int size = this.l.size() - 1; size >= 0; size--) {
                MultiPointItem multiPointItem = (MultiPointItem) this.l.get(size);
                IPoint iPoint2 = multiPointItem.getIPoint();
                if (iPoint2 != null) {
                    if (this.k == null) {
                        return null;
                    }
                    if (this.v == null) {
                        this.v = new ai(0, 1, 0, 1);
                    }
                    this.v.a(iPoint2.x + this.k.a, iPoint2.x + this.k.c, iPoint2.y + this.k.b, iPoint2.y + this.k.d);
                    if (this.v.a(this.u)) {
                        return multiPointItem;
                    }
                }
            }
            return null;
        }
    }

    public void setAnchor(float f2, float f3) {
        this.f = f2;
        this.g = f3;
        d();
    }

    public String getId() throws RemoteException {
        if (this.C == null) {
            this.C = a("MultiPointOverlay");
        }
        return this.C;
    }

    public void remove(boolean z2) {
        this.E = false;
        this.w = 0;
        this.x = 0;
        if (this.a != null) {
            this.a.recycle();
        }
        if (this.h != null) {
            this.h.clear();
            this.h = null;
        }
        if (this.i != null) {
            this.i.a();
            this.i = null;
        }
        if (this.l != null) {
            this.l.clear();
        }
        if (this.G != null) {
            this.G.shutdownNow();
            this.G = null;
        }
        if (this.H != null) {
            this.H.clear();
        }
        if (this.p != null) {
            for (ah ahVar : this.p) {
                if (ahVar != null) {
                    ahVar.c();
                }
            }
            this.p.clear();
        }
        if (z2 && this.n != null) {
            this.n.a(this);
            this.n.d();
        }
        this.n = null;
        this.D = null;
    }

    public void setVisible(boolean z2) {
        if (this.E != z2) {
            d();
        }
        this.E = z2;
    }

    private void d() {
        if (this.n != null) {
            this.n.d();
        }
    }

    public void destroy(boolean z2) {
        remove(z2);
        if (this.b != null) {
            this.b.recycle();
        }
    }
}
