package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLES20;
import com.amap.api.mapcore.util.cx.e;
import com.amap.api.mapcore.util.dj.d;
import com.amap.api.mapcore.util.ei.c;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.TileOverlayOptions;
import com.amap.api.maps.model.TileProvider;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.ITileOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import java.lang.ref.WeakReference;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: TileOverlayDelegateImp */
public class cv implements cn {
    private static int h = 0;
    e a;
    private v b;
    private TileProvider c;
    private Float d;
    private boolean e;
    private boolean f = false;
    /* access modifiers changed from: private */
    public l g;
    private int i = 256;
    private int j = 256;
    private int k = -1;
    private eg l;
    private List<a> m = new ArrayList();
    private boolean n = false;
    private b o = null;
    private String p;
    private String q = null;
    private FloatBuffer r = null;

    /* compiled from: TileOverlayDelegateImp */
    public static class a implements Cloneable {
        public int a;
        public int b;
        public int c;
        public int d;
        public IPoint e;
        public int f = 0;
        public boolean g = false;
        public FloatBuffer h = null;
        public Bitmap i = null;
        public com.amap.api.mapcore.util.ei.a j = null;
        public int k = 0;
        private final int l = 3;
        private l m;
        private v n;
        private eg o;

        public a(int i2, int i3, int i4, int i5, l lVar, v vVar, eg egVar) {
            this.a = i2;
            this.b = i3;
            this.c = i4;
            this.d = i5;
            this.m = lVar;
            this.n = vVar;
            this.o = egVar;
        }

        public a(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.e = aVar.e;
            this.h = aVar.h;
            this.k = 0;
            this.n = aVar.n;
            this.m = aVar.m;
            this.o = aVar.o;
        }

        /* renamed from: a */
        public a clone() {
            try {
                a aVar = (a) super.clone();
                aVar.a = this.a;
                aVar.b = this.b;
                aVar.c = this.c;
                aVar.d = this.d;
                aVar.e = (IPoint) this.e.clone();
                aVar.h = this.h.asReadOnlyBuffer();
                this.k = 0;
            } catch (CloneNotSupportedException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
            return new a(this);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.a == aVar.a && this.b == aVar.b && this.c == aVar.c && this.d == aVar.d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.a * 7) + (this.b * 11) + (this.c * 13) + this.d;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.a);
            sb.append("-");
            sb.append(this.b);
            sb.append("-");
            sb.append(this.c);
            sb.append("-");
            sb.append(this.d);
            return sb.toString();
        }

        public synchronized void a(Bitmap bitmap) {
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    try {
                        this.j = null;
                        this.i = bitmap;
                        this.m.setRunLowFrame(false);
                    } catch (Throwable th) {
                        gf.b(th, "TileOverlayDelegateImp", "setBitmap");
                        ThrowableExtension.printStackTrace(th);
                        if (this.k < 3) {
                            this.k++;
                            if (this.o != null) {
                                this.o.a(true, this);
                            }
                        }
                    }
                }
            }
            if (this.k < 3) {
                this.k++;
                if (this.o != null) {
                    this.o.a(true, this);
                }
            }
        }

        public void b() {
            try {
                ei.a(this);
                if (this.g) {
                    this.n.a(this.f);
                }
                this.g = false;
                this.f = 0;
                if (this.i != null && !this.i.isRecycled()) {
                    this.i.recycle();
                }
                this.i = null;
                if (this.h != null) {
                    this.h.clear();
                }
                this.h = null;
                this.j = null;
                this.k = 0;
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    /* compiled from: TileOverlayDelegateImp */
    private static class b extends dj<Void, Void, List<a>> {
        private int d;
        private boolean e;
        private int f = 256;
        private int g = 256;
        private int h = 0;
        private WeakReference<l> i;
        private List<a> j;
        private boolean k;
        private WeakReference<v> l;
        private WeakReference<eg> m;

        public b(boolean z, l lVar, int i2, int i3, int i4, List<a> list, boolean z2, v vVar, eg egVar) {
            this.e = z;
            this.i = new WeakReference<>(lVar);
            this.f = i2;
            this.g = i3;
            this.h = i4;
            this.j = list;
            this.k = z2;
            this.l = new WeakReference<>(vVar);
            this.m = new WeakReference<>(egVar);
        }

        /* access modifiers changed from: protected */
        public List<a> a(Void... voidArr) {
            try {
                l lVar = (l) this.i.get();
                if (lVar == null) {
                    return null;
                }
                int mapWidth = lVar.getMapWidth();
                int mapHeight = lVar.getMapHeight();
                this.d = (int) lVar.g();
                if (mapWidth <= 0 || mapHeight <= 0) {
                    return null;
                }
                return cv.b(lVar, this.d, this.f, this.g, this.h, (v) this.l.get(), (eg) this.m.get());
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return null;
            }
        }

        /* access modifiers changed from: protected */
        public void a(List<a> list) {
            if (list != null) {
                try {
                    if (list.size() > 0) {
                        cv.b((l) this.i.get(), list, this.d, this.e, this.j, this.k, (v) this.l.get(), (eg) this.m.get());
                        list.clear();
                    }
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
    }

    private static String b(String str) {
        h++;
        return str + h;
    }

    public cv(TileOverlayOptions tileOverlayOptions, v vVar, boolean z) {
        com.amap.api.mapcore.util.ef.a aVar;
        this.b = vVar;
        this.c = tileOverlayOptions.getTileProvider();
        this.i = this.c.getTileWidth();
        this.j = this.c.getTileHeight();
        this.r = ee.a(new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f});
        this.d = Float.valueOf(tileOverlayOptions.getZIndex());
        this.e = tileOverlayOptions.isVisible();
        this.f = z;
        if (this.f) {
            this.q = "TileOverlay0";
        } else {
            this.q = getId();
        }
        this.g = this.b.a();
        this.k = Integer.parseInt(this.q.substring("TileOverlay".length()));
        if (z) {
            try {
                aVar = new com.amap.api.mapcore.util.ef.a(this.b.e(), this.q, vVar.a().getMapConfig().getMapLanguage());
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return;
            }
        } else {
            aVar = new com.amap.api.mapcore.util.ef.a(this.b.e(), this.q);
        }
        aVar.a(tileOverlayOptions.getMemoryCacheEnabled());
        if (this.f) {
            aVar.i = false;
        }
        aVar.b(tileOverlayOptions.getDiskCacheEnabled());
        aVar.a(tileOverlayOptions.getMemCacheSize());
        aVar.a(tileOverlayOptions.getDiskCacheSize());
        String diskCacheDir = tileOverlayOptions.getDiskCacheDir();
        if (diskCacheDir != null && !diskCacheDir.equals("")) {
            aVar.a(diskCacheDir);
        }
        this.l = new eg(this.b.e(), this.i, this.j);
        this.l.a(this.c);
        this.l.a(aVar);
        this.l.a((c) new c() {
            public void a() {
                cv.this.g.resetRenderTimeLongLong();
            }
        });
    }

    public void remove() {
        this.b.b((cn) this);
        this.g.setRunLowFrame(false);
    }

    public void destroy(boolean z) {
        d();
        synchronized (this.m) {
            int size = this.m.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((a) this.m.get(i2)).b();
            }
            this.m.clear();
        }
        if (this.l != null) {
            this.l.h();
            this.l.a(true);
            this.l.a((TileProvider) null);
        }
        if (z) {
            remove();
        }
    }

    public void clearTileCache() {
        if (this.l != null) {
            this.l.g();
        }
    }

    public String getId() {
        if (this.q == null) {
            this.q = b("TileOverlay");
        }
        return this.q;
    }

    public void setZIndex(float f2) {
        this.d = Float.valueOf(f2);
        this.b.d();
    }

    public float getZIndex() {
        return this.d.floatValue();
    }

    public void setVisible(boolean z) {
        this.e = z;
        this.g.setRunLowFrame(false);
        if (z) {
            a(true);
        }
    }

    public boolean isVisible() {
        return this.e;
    }

    public boolean equalsRemote(ITileOverlay iTileOverlay) {
        if (equals(iTileOverlay) || iTileOverlay.getId().equals(getId())) {
            return true;
        }
        return false;
    }

    public int hashCodeRemote() {
        return super.hashCode();
    }

    private boolean a(a aVar) {
        GLMapState c2 = this.g.c();
        float f2 = (float) aVar.c;
        int i2 = this.i;
        int i3 = this.j;
        int i4 = aVar.e.x;
        int i5 = aVar.e.y + ((1 << (20 - ((int) f2))) * i3);
        FPoint obtain = FPoint.obtain();
        c2.geo2Map(i4, i5, obtain);
        FPoint obtain2 = FPoint.obtain();
        c2.geo2Map(((1 << (20 - ((int) f2))) * i2) + i4, i5, obtain2);
        FPoint obtain3 = FPoint.obtain();
        c2.geo2Map((i2 * (1 << (20 - ((int) f2)))) + i4, i5 - ((1 << (20 - ((int) f2))) * i3), obtain3);
        FPoint obtain4 = FPoint.obtain();
        c2.geo2Map(i4, i5 - ((1 << (20 - ((int) f2))) * i3), obtain4);
        float[] fArr = {obtain.x, obtain.y, 0.0f, obtain2.x, obtain2.y, 0.0f, obtain3.x, obtain3.y, 0.0f, obtain4.x, obtain4.y, 0.0f};
        if (aVar.h == null) {
            aVar.h = ee.a(fArr);
        } else {
            aVar.h = ee.a(fArr, aVar.h);
        }
        obtain.recycle();
        obtain4.recycle();
        obtain2.recycle();
        obtain3.recycle();
        return true;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
            r7 = this;
            java.util.List<com.amap.api.mapcore.util.cv$a> r0 = r7.m
            if (r0 == 0) goto L_0x0010
            java.util.List<com.amap.api.mapcore.util.cv$a> r3 = r7.m
            monitor-enter(r3)
            java.util.List<com.amap.api.mapcore.util.cv$a> r0 = r7.m     // Catch:{ all -> 0x0066 }
            int r0 = r0.size()     // Catch:{ all -> 0x0066 }
            if (r0 != 0) goto L_0x0011
            monitor-exit(r3)     // Catch:{ all -> 0x0066 }
        L_0x0010:
            return
        L_0x0011:
            java.util.List<com.amap.api.mapcore.util.cv$a> r0 = r7.m     // Catch:{ all -> 0x0066 }
            int r4 = r0.size()     // Catch:{ all -> 0x0066 }
            r0 = 0
            r2 = r0
        L_0x0019:
            if (r2 >= r4) goto L_0x0069
            java.util.List<com.amap.api.mapcore.util.cv$a> r0 = r7.m     // Catch:{ all -> 0x0066 }
            java.lang.Object r0 = r0.get(r2)     // Catch:{ all -> 0x0066 }
            com.amap.api.mapcore.util.cv$a r0 = (com.amap.api.mapcore.util.cv.a) r0     // Catch:{ all -> 0x0066 }
            boolean r1 = r0.g     // Catch:{ all -> 0x0066 }
            if (r1 != 0) goto L_0x0049
            com.autonavi.amap.mapcore.IPoint r1 = r0.e     // Catch:{ Throwable -> 0x005d }
            android.graphics.Bitmap r5 = r0.i     // Catch:{ Throwable -> 0x005d }
            if (r5 == 0) goto L_0x0049
            android.graphics.Bitmap r5 = r0.i     // Catch:{ Throwable -> 0x005d }
            boolean r5 = r5.isRecycled()     // Catch:{ Throwable -> 0x005d }
            if (r5 != 0) goto L_0x0049
            if (r1 == 0) goto L_0x0049
            android.graphics.Bitmap r1 = r0.i     // Catch:{ Throwable -> 0x005d }
            int r1 = com.amap.api.mapcore.util.ee.a(r1)     // Catch:{ Throwable -> 0x005d }
            r0.f = r1     // Catch:{ Throwable -> 0x005d }
            int r1 = r0.f     // Catch:{ Throwable -> 0x005d }
            if (r1 == 0) goto L_0x0046
            r1 = 1
            r0.g = r1     // Catch:{ Throwable -> 0x005d }
        L_0x0046:
            r1 = 0
            r0.i = r1     // Catch:{ Throwable -> 0x005d }
        L_0x0049:
            boolean r1 = r0.g     // Catch:{ all -> 0x0066 }
            if (r1 == 0) goto L_0x0059
            r7.a(r0)     // Catch:{ all -> 0x0066 }
            int r1 = r0.f     // Catch:{ all -> 0x0066 }
            java.nio.FloatBuffer r0 = r0.h     // Catch:{ all -> 0x0066 }
            java.nio.FloatBuffer r5 = r7.r     // Catch:{ all -> 0x0066 }
            r7.a(r1, r0, r5)     // Catch:{ all -> 0x0066 }
        L_0x0059:
            int r0 = r2 + 1
            r2 = r0
            goto L_0x0019
        L_0x005d:
            r1 = move-exception
            java.lang.String r5 = "TileOverlayDelegateImp"
            java.lang.String r6 = "drawTiles"
            com.amap.api.mapcore.util.gf.b(r1, r5, r6)     // Catch:{ all -> 0x0066 }
            goto L_0x0049
        L_0x0066:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0066 }
            throw r0
        L_0x0069:
            monitor-exit(r3)     // Catch:{ all -> 0x0066 }
            goto L_0x0010
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.cv.a():void");
    }

    /* access modifiers changed from: private */
    public static ArrayList<a> b(l lVar, int i2, int i3, int i4, int i5, v vVar, eg egVar) {
        GLMapState c2 = lVar.c();
        Rect rect = lVar.getMapConfig().getGeoRectangle().getRect();
        IPoint obtain = IPoint.obtain();
        IPoint obtain2 = IPoint.obtain();
        obtain.x = rect.left;
        obtain.y = rect.top;
        int min = Math.min(Integer.MAX_VALUE, obtain.x);
        int max = Math.max(0, obtain.x);
        int min2 = Math.min(Integer.MAX_VALUE, obtain.y);
        int max2 = Math.max(0, obtain.y);
        obtain.x = rect.right;
        obtain.y = rect.top;
        int min3 = Math.min(min, obtain.x);
        int max3 = Math.max(max, obtain.x);
        int min4 = Math.min(min2, obtain.y);
        int max4 = Math.max(max2, obtain.y);
        obtain.x = rect.left;
        obtain.y = rect.bottom;
        int min5 = Math.min(min3, obtain.x);
        int max5 = Math.max(max3, obtain.x);
        int min6 = Math.min(min4, obtain.y);
        int max6 = Math.max(max4, obtain.y);
        obtain.x = rect.right;
        obtain.y = rect.bottom;
        int min7 = Math.min(min5, obtain.x);
        int max7 = Math.max(max5, obtain.x);
        int min8 = Math.min(min6, obtain.y);
        int max8 = Math.max(max6, obtain.y);
        int i6 = min7 - ((1 << (20 - i2)) * i3);
        int i7 = min8 - ((1 << (20 - i2)) * i4);
        c2.getGeoCenter(obtain2);
        int i8 = (obtain2.x >> (20 - i2)) / i3;
        int i9 = (obtain2.y >> (20 - i2)) / i4;
        int i10 = (i8 << (20 - i2)) * i3;
        int i11 = (i9 << (20 - i2)) * i4;
        a aVar = new a(i8, i9, i2, i5, lVar, vVar, egVar);
        aVar.e = IPoint.obtain(i10, i11);
        obtain.recycle();
        obtain2.recycle();
        ArrayList<a> arrayList = new ArrayList<>();
        arrayList.add(aVar);
        int i12 = 1;
        while (true) {
            int i13 = i12;
            boolean z = false;
            for (int i14 = i8 - i13; i14 <= i8 + i13; i14++) {
                int i15 = i9 + i13;
                IPoint iPoint = new IPoint((i14 << (20 - i2)) * i3, (i15 << (20 - i2)) * i4);
                if (iPoint.x < max7 && iPoint.x > i6 && iPoint.y < max8 && iPoint.y > i7) {
                    if (!z) {
                        z = true;
                    }
                    a aVar2 = new a(i14, i15, i2, i5, lVar, vVar, egVar);
                    aVar2.e = iPoint;
                    arrayList.add(aVar2);
                }
                int i16 = i9 - i13;
                IPoint iPoint2 = new IPoint((i14 << (20 - i2)) * i3, (i16 << (20 - i2)) * i4);
                if (iPoint2.x < max7 && iPoint2.x > i6 && iPoint2.y < max8 && iPoint2.y > i7) {
                    if (!z) {
                        z = true;
                    }
                    a aVar3 = new a(i14, i16, i2, i5, lVar, vVar, egVar);
                    aVar3.e = iPoint2;
                    arrayList.add(aVar3);
                }
            }
            for (int i17 = (i9 + i13) - 1; i17 > i9 - i13; i17--) {
                int i18 = i8 + i13;
                IPoint iPoint3 = new IPoint((i18 << (20 - i2)) * i3, (i17 << (20 - i2)) * i4);
                if (iPoint3.x < max7 && iPoint3.x > i6 && iPoint3.y < max8 && iPoint3.y > i7) {
                    if (!z) {
                        z = true;
                    }
                    a aVar4 = new a(i18, i17, i2, i5, lVar, vVar, egVar);
                    aVar4.e = iPoint3;
                    arrayList.add(aVar4);
                }
                int i19 = i8 - i13;
                IPoint iPoint4 = new IPoint((i19 << (20 - i2)) * i3, (i17 << (20 - i2)) * i4);
                if (iPoint4.x < max7 && iPoint4.x > i6 && iPoint4.y < max8 && iPoint4.y > i7) {
                    if (!z) {
                        z = true;
                    }
                    a aVar5 = new a(i19, i17, i2, i5, lVar, vVar, egVar);
                    aVar5.e = iPoint4;
                    arrayList.add(aVar5);
                }
            }
            if (!z) {
                return arrayList;
            }
            i12 = i13 + 1;
        }
    }

    public void b() {
        if (this.m != null) {
            synchronized (this.m) {
                this.m.clear();
            }
        }
    }

    /* access modifiers changed from: private */
    public static boolean b(l lVar, List<a> list, int i2, boolean z, List<a> list2, boolean z2, v vVar, eg egVar) {
        boolean z3;
        if (list == null) {
            return false;
        }
        if (list2 == null) {
            return false;
        }
        synchronized (list2) {
            for (a aVar : list2) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z3 = false;
                        break;
                    }
                    a aVar2 = (a) it.next();
                    if (aVar.equals(aVar2) && aVar.g) {
                        aVar2.g = aVar.g;
                        aVar2.f = aVar.f;
                        z3 = true;
                        break;
                    }
                }
                if (!z3) {
                    aVar.b();
                }
            }
            list2.clear();
        }
        if (i2 > ((int) lVar.getMaxZoomLevel()) || i2 < ((int) lVar.getMinZoomLevel())) {
            return false;
        }
        int size = list.size();
        if (size <= 0) {
            return false;
        }
        for (int i3 = 0; i3 < size; i3++) {
            a aVar3 = (a) list.get(i3);
            if (aVar3 != null) {
                if (z2) {
                    if (vVar.a().getMapConfig().getMapLanguage().equals("zh_cn")) {
                        if (MapsInitializer.isLoadWorldGridMap()) {
                            if (aVar3.c >= 7) {
                                if (dy.a(aVar3.a, aVar3.b, aVar3.c)) {
                                }
                            }
                        }
                    } else if (!MapsInitializer.isLoadWorldGridMap() && aVar3.c >= 7 && !dy.a(aVar3.a, aVar3.b, aVar3.c)) {
                    }
                }
                list2.add(aVar3);
                if (!aVar3.g && egVar != null) {
                    egVar.a(z, aVar3);
                }
            }
        }
        return true;
    }

    public void a(boolean z) {
        if (!this.n) {
            d();
            c(z);
        }
    }

    private void d() {
        if (this.o != null && this.o.a() == d.RUNNING) {
            this.o.a(true);
        }
    }

    private void c(boolean z) {
        this.o = new b(z, this.g, this.i, this.j, this.k, this.m, this.f, this.b, this.l);
        this.o.c((Params[]) new Void[0]);
    }

    public void c() {
        d();
        synchronized (this.m) {
            int size = this.m.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((a) this.m.get(i2)).b();
            }
            this.m.clear();
        }
    }

    public void b(boolean z) {
        if (this.n != z) {
            this.n = z;
            if (this.l != null) {
                this.l.a(z);
            }
        }
    }

    public void a(String str) {
        this.p = str;
        d();
        b();
        if (this.l != null) {
            this.l.a(true);
            this.l.a(str);
            this.l.a(false);
        }
        c(true);
    }

    private void e() {
        if (this.b != null && this.b.a() != null) {
            this.a = (e) this.b.a().t(0);
        }
    }

    private void a(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (floatBuffer != null && floatBuffer2 != null && i2 != 0) {
            if (this.a == null || this.a.c()) {
                e();
            }
            this.a.a();
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(1, MessageCmdID.CID_MSG_READ_ACK_VALUE);
            GLES20.glBlendColor(1.0f, 1.0f, 1.0f, 1.0f);
            GLES20.glBindTexture(3553, i2);
            GLES20.glEnableVertexAttribArray(this.a.b);
            GLES20.glVertexAttribPointer(this.a.b, 3, 5126, false, 12, floatBuffer);
            GLES20.glEnableVertexAttribArray(this.a.c);
            GLES20.glVertexAttribPointer(this.a.c, 2, 5126, false, 8, floatBuffer2);
            GLES20.glUniformMatrix4fv(this.a.a, 1, false, this.b.g(), 0);
            GLES20.glDrawArrays(6, 0, 4);
            GLES20.glDisableVertexAttribArray(this.a.b);
            GLES20.glDisableVertexAttribArray(this.a.c);
            GLES20.glBindTexture(3553, 0);
            GLES20.glUseProgram(0);
            GLES20.glDisable(3042);
        }
    }
}
