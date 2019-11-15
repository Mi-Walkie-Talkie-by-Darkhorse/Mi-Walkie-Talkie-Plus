package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.RemoteException;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.TileOverlay;
import com.amap.api.maps.model.TileOverlayOptions;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: TileOverlayView */
public class v {
    List<cn> a = new ArrayList();
    a b = new a();
    List<Integer> c = new ArrayList();
    cv d = null;
    float[] e = new float[16];
    private l f;
    private Context g;

    /* compiled from: TileOverlayView */
    static class a implements Serializable, Comparator<Object> {
        a() {
        }

        public int compare(Object obj, Object obj2) {
            cn cnVar = (cn) obj;
            cn cnVar2 = (cn) obj2;
            if (!(cnVar == null || cnVar2 == null)) {
                try {
                    if (cnVar.getZIndex() > cnVar2.getZIndex()) {
                        return 1;
                    }
                    if (cnVar.getZIndex() < cnVar2.getZIndex()) {
                        return -1;
                    }
                } catch (Throwable th) {
                    gf.b(th, "TileOverlayView", "compare");
                    ThrowableExtension.printStackTrace(th);
                }
            }
            return 0;
        }
    }

    public v(Context context, l lVar) {
        this.f = lVar;
        this.g = context;
        TileOverlayOptions tileProvider = new TileOverlayOptions().tileProvider(new dk(256, 256, this.f.getMapConfig()));
        tileProvider.memCacheSize(10485760);
        tileProvider.diskCacheSize(20480);
        this.d = new cv(tileProvider, this, true);
    }

    public l a() {
        return this.f;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b() {
        /*
            r5 = this;
            java.util.List<java.lang.Integer> r0 = r5.c     // Catch:{ Throwable -> 0x001a }
            java.util.Iterator r1 = r0.iterator()     // Catch:{ Throwable -> 0x001a }
        L_0x0006:
            boolean r0 = r1.hasNext()     // Catch:{ Throwable -> 0x001a }
            if (r0 == 0) goto L_0x001c
            java.lang.Object r0 = r1.next()     // Catch:{ Throwable -> 0x001a }
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch:{ Throwable -> 0x001a }
            int r0 = r0.intValue()     // Catch:{ Throwable -> 0x001a }
            com.amap.api.mapcore.util.ee.b(r0)     // Catch:{ Throwable -> 0x001a }
            goto L_0x0006
        L_0x001a:
            r0 = move-exception
        L_0x001b:
            return
        L_0x001c:
            java.util.List<java.lang.Integer> r0 = r5.c     // Catch:{ Throwable -> 0x001a }
            r0.clear()     // Catch:{ Throwable -> 0x001a }
            boolean r0 = r5.i()     // Catch:{ Throwable -> 0x001a }
            if (r0 == 0) goto L_0x0030
            com.amap.api.mapcore.util.cv r0 = r5.d     // Catch:{ Throwable -> 0x001a }
            if (r0 == 0) goto L_0x0030
            com.amap.api.mapcore.util.cv r0 = r5.d     // Catch:{ Throwable -> 0x001a }
            r0.a()     // Catch:{ Throwable -> 0x001a }
        L_0x0030:
            java.util.List<com.amap.api.mapcore.util.cn> r2 = r5.a     // Catch:{ Throwable -> 0x001a }
            monitor-enter(r2)     // Catch:{ Throwable -> 0x001a }
            java.util.List<com.amap.api.mapcore.util.cn> r0 = r5.a     // Catch:{ all -> 0x0054 }
            int r3 = r0.size()     // Catch:{ all -> 0x0054 }
            r0 = 0
            r1 = r0
        L_0x003b:
            if (r1 >= r3) goto L_0x0052
            java.util.List<com.amap.api.mapcore.util.cn> r0 = r5.a     // Catch:{ all -> 0x0054 }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ all -> 0x0054 }
            com.amap.api.mapcore.util.cn r0 = (com.amap.api.mapcore.util.cn) r0     // Catch:{ all -> 0x0054 }
            boolean r4 = r0.isVisible()     // Catch:{ all -> 0x0054 }
            if (r4 == 0) goto L_0x004e
            r0.a()     // Catch:{ all -> 0x0054 }
        L_0x004e:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x003b
        L_0x0052:
            monitor-exit(r2)     // Catch:{ all -> 0x0054 }
            goto L_0x001b
        L_0x0054:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0054 }
            throw r0     // Catch:{ Throwable -> 0x001a }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.v.b():void");
    }

    public void c() {
        synchronized (this.a) {
            int size = this.a.size();
            for (int i = 0; i < size; i++) {
                cn cnVar = (cn) this.a.get(i);
                if (cnVar != null) {
                    cnVar.destroy(false);
                }
            }
            this.a.clear();
        }
    }

    public void d() {
        synchronized (this.a) {
            Collections.sort(this.a, this.b);
        }
    }

    public TileOverlay a(TileOverlayOptions tileOverlayOptions) throws RemoteException {
        if (tileOverlayOptions == null || tileOverlayOptions.getTileProvider() == null) {
            return null;
        }
        try {
            cv cvVar = new cv(tileOverlayOptions, this, false);
            a((cn) cvVar);
            cvVar.a(true);
            this.f.setRunLowFrame(false);
            return new TileOverlay(cvVar);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public void a(cn cnVar) {
        synchronized (this.a) {
            b(cnVar);
            this.a.add(cnVar);
        }
        d();
    }

    public boolean b(cn cnVar) {
        boolean remove;
        synchronized (this.a) {
            remove = this.a.remove(cnVar);
        }
        return remove;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(boolean r6) {
        /*
            r5 = this;
            boolean r0 = r5.i()     // Catch:{ Throwable -> 0x005b }
            if (r0 == 0) goto L_0x002d
            com.amap.api.mapcore.util.l r0 = r5.f     // Catch:{ Throwable -> 0x005b }
            com.amap.api.maps.model.CameraPosition r0 = r0.getCameraPosition()     // Catch:{ Throwable -> 0x005b }
            if (r0 != 0) goto L_0x000f
        L_0x000e:
            return
        L_0x000f:
            boolean r1 = r0.isAbroad     // Catch:{ Throwable -> 0x005b }
            if (r1 == 0) goto L_0x0064
            float r0 = r0.zoom     // Catch:{ Throwable -> 0x005b }
            r1 = 1086324736(0x40c00000, float:6.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0064
            com.amap.api.mapcore.util.l r0 = r5.f     // Catch:{ Throwable -> 0x005b }
            int r0 = r0.getMapType()     // Catch:{ Throwable -> 0x005b }
            r1 = 1
            if (r0 != r1) goto L_0x0051
            com.amap.api.mapcore.util.cv r0 = r5.d     // Catch:{ Throwable -> 0x005b }
            if (r0 == 0) goto L_0x002d
            com.amap.api.mapcore.util.cv r0 = r5.d     // Catch:{ Throwable -> 0x005b }
            r0.a(r6)     // Catch:{ Throwable -> 0x005b }
        L_0x002d:
            java.util.List<com.amap.api.mapcore.util.cn> r2 = r5.a     // Catch:{ Throwable -> 0x005b }
            monitor-enter(r2)     // Catch:{ Throwable -> 0x005b }
            java.util.List<com.amap.api.mapcore.util.cn> r0 = r5.a     // Catch:{ all -> 0x0088 }
            int r3 = r0.size()     // Catch:{ all -> 0x0088 }
            r0 = 0
            r1 = r0
        L_0x0038:
            if (r1 >= r3) goto L_0x0086
            java.util.List<com.amap.api.mapcore.util.cn> r0 = r5.a     // Catch:{ all -> 0x0088 }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ all -> 0x0088 }
            com.amap.api.mapcore.util.cn r0 = (com.amap.api.mapcore.util.cn) r0     // Catch:{ all -> 0x0088 }
            if (r0 == 0) goto L_0x004d
            boolean r4 = r0.isVisible()     // Catch:{ all -> 0x0088 }
            if (r4 == 0) goto L_0x004d
            r0.a(r6)     // Catch:{ all -> 0x0088 }
        L_0x004d:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x0038
        L_0x0051:
            com.amap.api.mapcore.util.cv r0 = r5.d     // Catch:{ Throwable -> 0x005b }
            if (r0 == 0) goto L_0x002d
            com.amap.api.mapcore.util.cv r0 = r5.d     // Catch:{ Throwable -> 0x005b }
            r0.b()     // Catch:{ Throwable -> 0x005b }
            goto L_0x002d
        L_0x005b:
            r0 = move-exception
            java.lang.String r1 = "TileOverlayView"
            java.lang.String r2 = "refresh"
            com.amap.api.mapcore.util.gf.b(r0, r1, r2)
            goto L_0x000e
        L_0x0064:
            com.amap.api.mapcore.util.cv r0 = r5.d     // Catch:{ Throwable -> 0x005b }
            if (r0 == 0) goto L_0x002d
            com.amap.api.mapcore.util.l r0 = r5.f     // Catch:{ Throwable -> 0x005b }
            com.autonavi.amap.mapcore.MapConfig r0 = r0.getMapConfig()     // Catch:{ Throwable -> 0x005b }
            java.lang.String r0 = r0.getMapLanguage()     // Catch:{ Throwable -> 0x005b }
            java.lang.String r1 = "en"
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x005b }
            if (r0 == 0) goto L_0x0080
            com.amap.api.mapcore.util.cv r0 = r5.d     // Catch:{ Throwable -> 0x005b }
            r0.a(r6)     // Catch:{ Throwable -> 0x005b }
            goto L_0x002d
        L_0x0080:
            com.amap.api.mapcore.util.cv r0 = r5.d     // Catch:{ Throwable -> 0x005b }
            r0.b()     // Catch:{ Throwable -> 0x005b }
            goto L_0x002d
        L_0x0086:
            monitor-exit(r2)     // Catch:{ all -> 0x0088 }
            goto L_0x000e
        L_0x0088:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0088 }
            throw r0     // Catch:{ Throwable -> 0x005b }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.v.a(boolean):void");
    }

    private boolean i() {
        if (this.f == null) {
            return false;
        }
        if (MapsInitializer.isLoadWorldGridMap() || this.f.getMapConfig().getMapLanguage().equals("en")) {
            return true;
        }
        return false;
    }

    public void b(boolean z) {
        if (this.d != null) {
            this.d.b(z);
        }
        synchronized (this.a) {
            int size = this.a.size();
            for (int i = 0; i < size; i++) {
                cn cnVar = (cn) this.a.get(i);
                if (cnVar != null) {
                    cnVar.b(z);
                }
            }
        }
    }

    public Context e() {
        return this.g;
    }

    public void a(int i) {
        this.c.add(Integer.valueOf(i));
    }

    public void f() {
        c();
        if (this.d != null) {
            this.d.c();
            this.d.remove();
        }
        this.d = null;
    }

    public float[] g() {
        if (this.f != null) {
            return this.f.u();
        }
        return this.e;
    }

    public void a(String str) {
        if (this.d != null) {
            this.d.a(str);
        }
    }

    public void h() {
        if (this.d != null) {
            this.d.clearTileCache();
            dw.a().a(System.currentTimeMillis());
        }
        synchronized (this.a) {
            int size = this.a.size();
            for (int i = 0; i < size; i++) {
                cn cnVar = (cn) this.a.get(i);
                if (cnVar != null) {
                    cnVar.clearTileCache();
                }
            }
        }
    }
}
