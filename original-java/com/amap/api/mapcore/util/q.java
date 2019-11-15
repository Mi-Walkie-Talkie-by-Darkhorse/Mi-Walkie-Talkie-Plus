package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.view.MotionEvent;
import com.amap.api.mapcore.util.cx.c;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.LatLngBounds.Builder;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.Text;
import com.amap.api.maps.model.TextOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapConfig;
import com.autonavi.amap.mapcore.interfaces.IMarker;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import java.io.Serializable;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: MapOverlayImageView */
public class q {
    l a;
    float[] b = new float[180000];
    public c c;
    int d = 0;
    int e = 0;
    /* access modifiers changed from: private */
    public List<cj> f = new ArrayList(500);
    private List<s> g = new ArrayList();
    private List<cj> h = new ArrayList();
    private a i = new a();
    private boolean j = true;
    private IPoint k;
    private cg l;
    private cg m;
    private ek n;
    private du o;
    private FloatBuffer p;
    private Handler q = new Handler(Looper.getMainLooper());
    private int[] r = new int[1];
    private Runnable s = new Runnable() {
        public void run() {
            synchronized (q.this.f) {
                q.this.j();
            }
        }
    };

    /* compiled from: MapOverlayImageView */
    static class a implements Serializable, Comparator<Object> {
        a() {
        }

        public int compare(Object obj, Object obj2) {
            cj cjVar = (cj) obj;
            cj cjVar2 = (cj) obj2;
            if (!(cjVar == null || cjVar2 == null)) {
                try {
                    if (cjVar.getZIndex() > cjVar2.getZIndex()) {
                        return 1;
                    }
                    if (cjVar.getZIndex() < cjVar2.getZIndex()) {
                        return -1;
                    }
                } catch (Throwable th) {
                    gf.b(th, "MapOverlayImageView", "compare");
                    ThrowableExtension.printStackTrace(th);
                }
            }
            return 0;
        }
    }

    public q(Context context, l lVar) {
        this.a = lVar;
        this.n = new ek(512, 1024);
        this.o = new du();
    }

    public Marker a(MarkerOptions markerOptions) throws RemoteException {
        Marker marker;
        if (markerOptions == null) {
            return null;
        }
        co coVar = new co(markerOptions, this);
        synchronized (this.f) {
            d(coVar);
            marker = new Marker(coVar);
        }
        return marker;
    }

    public ArrayList<Marker> a(ArrayList<MarkerOptions> arrayList, boolean z) throws RemoteException {
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        try {
            if (arrayList.size() == 1) {
                MarkerOptions markerOptions = (MarkerOptions) arrayList.get(0);
                if (markerOptions != null) {
                    arrayList2.add(a(markerOptions));
                    if (z && markerOptions.getPosition() != null) {
                        this.a.a(aa.a(markerOptions.getPosition(), 18.0f));
                    }
                    return arrayList2;
                }
            }
            final Builder builder = LatLngBounds.builder();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                MarkerOptions markerOptions2 = (MarkerOptions) arrayList.get(i2);
                if (arrayList.get(i2) != null) {
                    arrayList2.add(a(markerOptions2));
                    if (markerOptions2.getPosition() != null) {
                        builder.include(markerOptions2.getPosition());
                    }
                }
            }
            if (z && arrayList2.size() > 0) {
                this.a.getMainHandler().postDelayed(new Runnable() {
                    public void run() {
                        try {
                            q.this.a.a(aa.a(builder.build(), 50));
                        } catch (Throwable th) {
                        }
                    }
                }, 50);
            }
            return arrayList2;
        } catch (Throwable th) {
            gf.b(th, "AMapDelegateImpGLSurfaceView", "addMarkers");
            ThrowableExtension.printStackTrace(th);
            return arrayList2;
        }
    }

    public Text a(TextOptions textOptions) throws RemoteException {
        Text text;
        if (textOptions == null) {
            return null;
        }
        synchronized (this.f) {
            cu cuVar = new cu(textOptions, this);
            d(cuVar);
            text = new Text(cuVar);
        }
        return text;
    }

    private void d(cj cjVar) {
        try {
            this.f.add(cjVar);
            f();
        } catch (Throwable th) {
            gf.b(th, "MapOverlayImageView", "addMarker");
        }
    }

    public boolean a(cj cjVar) {
        boolean remove;
        synchronized (this.f) {
            try {
                if (this.m != null && this.m.getId().equals(cjVar.getId())) {
                    this.m = null;
                }
                b(cjVar);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            remove = this.f.remove(cjVar);
        }
        return remove;
    }

    public void a(cg cgVar) {
        try {
            if (this.m != null) {
                if (cgVar == null || !cgVar.getId().equals(this.m.getId())) {
                    this.m.b(false);
                } else {
                    return;
                }
            }
            if (this.f.contains(cgVar)) {
                cgVar.b(true);
                this.m = cgVar;
            }
        } catch (Throwable th) {
            gf.b(th, "MapOverlayImageView", "set2Top");
        }
    }

    public void b(cg cgVar) {
        if (this.k == null) {
            this.k = IPoint.obtain();
        }
        Rect h2 = cgVar.h();
        this.k = IPoint.obtain(h2.left + (h2.width() / 2), h2.top);
        this.l = cgVar;
        try {
            this.a.a(this.l);
        } catch (Throwable th) {
            gf.b(th, "MapOverlayImageView", "showInfoWindow");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void b(cj cjVar) {
        try {
            if (cjVar.isInfoWindowShown()) {
                this.a.i();
                this.l = null;
            } else if (this.l != null && this.l.getId() == cjVar.getId()) {
                this.l = null;
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* access modifiers changed from: private */
    public void j() {
        try {
            Collections.sort(this.f, this.i);
        } catch (Throwable th) {
            gf.b(th, "MapOverlayImageView", "changeOverlayIndex");
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:74:?, code lost:
        return;
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
            r13 = this;
            r2 = 0
            com.amap.api.mapcore.util.l r0 = r13.a     // Catch:{ Throwable -> 0x0061 }
            com.autonavi.amap.mapcore.MapConfig r0 = r0.getMapConfig()     // Catch:{ Throwable -> 0x0061 }
            float r8 = r0.getMapPerPixelUnitLength()     // Catch:{ Throwable -> 0x0061 }
            java.util.List<com.amap.api.mapcore.util.cj> r9 = r13.f     // Catch:{ Throwable -> 0x0061 }
            monitor-enter(r9)     // Catch:{ Throwable -> 0x0061 }
            r13.h()     // Catch:{ all -> 0x005e }
            java.util.List<com.amap.api.mapcore.util.cj> r0 = r13.f     // Catch:{ all -> 0x005e }
            int r0 = r0.size()     // Catch:{ all -> 0x005e }
            if (r0 != 0) goto L_0x001b
            monitor-exit(r9)     // Catch:{ all -> 0x005e }
        L_0x001a:
            return
        L_0x001b:
            java.util.List<com.amap.api.mapcore.util.cj> r0 = r13.h     // Catch:{ all -> 0x005e }
            r0.clear()     // Catch:{ all -> 0x005e }
            java.util.List<com.amap.api.mapcore.util.cj> r0 = r13.f     // Catch:{ all -> 0x005e }
            int r3 = r0.size()     // Catch:{ all -> 0x005e }
            r1 = r2
        L_0x0027:
            if (r1 >= r3) goto L_0x0066
            java.util.List<com.amap.api.mapcore.util.cj> r0 = r13.f     // Catch:{ all -> 0x005e }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ all -> 0x005e }
            com.amap.api.mapcore.util.cj r0 = (com.amap.api.mapcore.util.cj) r0     // Catch:{ all -> 0x005e }
            boolean r4 = r0.isVisible()     // Catch:{ all -> 0x005e }
            if (r4 == 0) goto L_0x003d
            boolean r4 = r0.l()     // Catch:{ all -> 0x005e }
            if (r4 == 0) goto L_0x0041
        L_0x003d:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x0027
        L_0x0041:
            boolean r4 = r0.i()     // Catch:{ all -> 0x005e }
            r13.j = r4     // Catch:{ all -> 0x005e }
            boolean r4 = r0.j()     // Catch:{ all -> 0x005e }
            if (r4 != 0) goto L_0x0053
            boolean r4 = r0.isInfoWindowShown()     // Catch:{ all -> 0x005e }
            if (r4 == 0) goto L_0x003d
        L_0x0053:
            java.util.List<com.amap.api.mapcore.util.cj> r4 = r13.h     // Catch:{ Throwable -> 0x0059 }
            r4.add(r0)     // Catch:{ Throwable -> 0x0059 }
            goto L_0x003d
        L_0x0059:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x005e }
            goto L_0x003d
        L_0x005e:
            r0 = move-exception
            monitor-exit(r9)     // Catch:{ all -> 0x005e }
            throw r0     // Catch:{ Throwable -> 0x0061 }
        L_0x0061:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x001a
        L_0x0066:
            com.amap.api.mapcore.util.cg r0 = r13.m     // Catch:{ all -> 0x005e }
            if (r0 == 0) goto L_0x0079
            com.amap.api.mapcore.util.cg r0 = r13.m     // Catch:{ all -> 0x005e }
            boolean r0 = r0.isVisible()     // Catch:{ all -> 0x005e }
            if (r0 == 0) goto L_0x0079
            java.util.List<com.amap.api.mapcore.util.cj> r0 = r13.h     // Catch:{ all -> 0x005e }
            com.amap.api.mapcore.util.cg r1 = r13.m     // Catch:{ all -> 0x005e }
            r0.add(r1)     // Catch:{ all -> 0x005e }
        L_0x0079:
            java.util.List<com.amap.api.mapcore.util.cj> r0 = r13.h     // Catch:{ all -> 0x005e }
            int r0 = r0.size()     // Catch:{ all -> 0x005e }
            if (r0 <= 0) goto L_0x00df
            java.util.List<com.amap.api.mapcore.util.cj> r0 = r13.h     // Catch:{ all -> 0x005e }
            int r10 = r0.size()     // Catch:{ all -> 0x005e }
            r1 = r2
            r3 = r2
            r4 = r2
            r5 = r2
            r6 = r2
        L_0x008c:
            if (r1 >= r10) goto L_0x00da
            java.util.List<com.amap.api.mapcore.util.cj> r0 = r13.h     // Catch:{ all -> 0x005e }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ all -> 0x005e }
            com.amap.api.mapcore.util.cj r0 = (com.amap.api.mapcore.util.cj) r0     // Catch:{ all -> 0x005e }
            monitor-enter(r0)     // Catch:{ all -> 0x005e }
            com.amap.api.mapcore.util.l r7 = r13.a     // Catch:{ all -> 0x00d7 }
            r0.a(r7)     // Catch:{ all -> 0x00d7 }
            if (r1 != 0) goto L_0x00ca
            int r7 = r0.k()     // Catch:{ all -> 0x00d7 }
            r12 = r3
            r3 = r4
            r4 = r12
        L_0x00a5:
            com.amap.api.mapcore.util.l r6 = r13.a     // Catch:{ all -> 0x00d7 }
            float[] r11 = r13.b     // Catch:{ all -> 0x00d7 }
            r0.a(r6, r11, r3, r8)     // Catch:{ all -> 0x00d7 }
            int r6 = r0.k()     // Catch:{ all -> 0x00d7 }
            if (r6 == r7) goto L_0x00e2
            r13.a(r7, r5, r4, r3)     // Catch:{ all -> 0x00d7 }
            r4 = r2
            r5 = r2
        L_0x00b7:
            int r4 = r4 + 36
            int r5 = r5 + 1
            r7 = 5000(0x1388, float:7.006E-42)
            if (r5 != r7) goto L_0x00c5
            r13.a(r6, r5, r3, r4)     // Catch:{ all -> 0x00d7 }
            r3 = r2
            r4 = r2
            r5 = r2
        L_0x00c5:
            monitor-exit(r0)     // Catch:{ all -> 0x00d7 }
            int r0 = r1 + 1
            r1 = r0
            goto L_0x008c
        L_0x00ca:
            int r7 = r0.k()     // Catch:{ all -> 0x00d7 }
            if (r7 == r6) goto L_0x00e7
            r13.a(r6, r5, r3, r4)     // Catch:{ all -> 0x00d7 }
            r4 = r2
            r3 = r2
            r5 = r2
            goto L_0x00a5
        L_0x00d7:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00d7 }
            throw r1     // Catch:{ all -> 0x005e }
        L_0x00da:
            if (r5 <= 0) goto L_0x00df
            r13.a(r6, r5, r3, r4)     // Catch:{ all -> 0x005e }
        L_0x00df:
            monitor-exit(r9)     // Catch:{ all -> 0x005e }
            goto L_0x001a
        L_0x00e2:
            r6 = r7
            r12 = r3
            r3 = r4
            r4 = r12
            goto L_0x00b7
        L_0x00e7:
            r7 = r6
            r12 = r4
            r4 = r3
            r3 = r12
            goto L_0x00a5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.q.a():void");
    }

    private void a(int i2, int i3, int i4, int i5) {
        if (i3 != 0 && i2 != 0) {
            this.p = this.o.c(i3 * 36);
            this.p.put(this.b, i4, i5);
            this.p.flip();
            a(i3);
            a(i2, i5, i3, this.p, this.a.getMapConfig());
            this.o.a();
        }
    }

    private void a(int i2) {
        if (i2 > 5000) {
            i2 = 5000;
        }
        if (this.d == 0) {
            int[] iArr = new int[2];
            GLES20.glGenBuffers(2, iArr, 0);
            this.d = iArr[0];
            this.e = iArr[1];
            ShortBuffer b2 = this.o.b(30000);
            short[] sArr = new short[30000];
            for (int i3 = 0; i3 < 5000; i3++) {
                sArr[(i3 * 6) + 0] = (short) ((i3 * 4) + 0);
                sArr[(i3 * 6) + 1] = (short) ((i3 * 4) + 1);
                sArr[(i3 * 6) + 2] = (short) ((i3 * 4) + 2);
                sArr[(i3 * 6) + 3] = (short) ((i3 * 4) + 0);
                sArr[(i3 * 6) + 4] = (short) ((i3 * 4) + 2);
                sArr[(i3 * 6) + 5] = (short) ((i3 * 4) + 3);
            }
            b2.put(sArr);
            b2.flip();
            GLES20.glBindBuffer(34963, this.e);
            GLES20.glBufferData(34963, 60000, b2, 35044);
        }
        GLES20.glBindBuffer(34962, this.d);
        GLES20.glBufferData(34962, i2 * 36 * 4, this.p, 35044);
    }

    private void k() {
        if (this.c == null && this.a != null) {
            this.c = (c) this.a.t(1);
        }
    }

    private void a(int i2, int i3, int i4, FloatBuffer floatBuffer, MapConfig mapConfig) {
        if (i2 != 0 && floatBuffer != null && i4 != 0) {
            if (this.c == null || this.c.c()) {
                k();
            }
            this.c.a();
            GLES20.glUniform1f(this.c.h, mapConfig.getS_r());
            GLES20.glEnableVertexAttribArray(this.c.b);
            GLES20.glBindBuffer(34962, this.d);
            GLES20.glVertexAttribPointer(this.c.b, 4, 5126, false, 36, 0);
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(1, MessageCmdID.CID_MSG_READ_ACK_VALUE);
            GLES20.glBindTexture(3553, i2);
            GLES20.glEnableVertexAttribArray(this.c.c);
            GLES20.glBindBuffer(34962, this.d);
            GLES20.glVertexAttribPointer(this.c.c, 2, 5126, false, 36, 16);
            GLES20.glEnableVertexAttribArray(this.c.g);
            GLES20.glBindBuffer(34962, this.d);
            GLES20.glVertexAttribPointer(this.c.g, 3, 5126, false, 36, 24);
            GLES20.glUniformMatrix4fv(this.c.a, 1, false, b(), 0);
            GLES20.glBindBuffer(34963, this.e);
            GLES20.glDrawElements(4, i4 * 6, 5123, 0);
            GLES20.glBindBuffer(34962, 0);
            GLES20.glBindBuffer(34963, 0);
            GLES20.glBindTexture(3553, 0);
            GLES20.glDisableVertexAttribArray(this.c.b);
            GLES20.glDisableVertexAttribArray(this.c.c);
            GLES20.glDisable(3042);
            GLES20.glUseProgram(0);
        }
    }

    public synchronized boolean a(Bitmap bitmap, s sVar) {
        boolean z;
        ek.c a2 = this.n.a(bitmap.getWidth(), bitmap.getHeight(), sVar.j());
        if (a2 != null) {
            sVar.b(((float) a2.a) / ((float) this.n.a()));
            sVar.a(((float) a2.b) / ((float) this.n.b()));
            sVar.c(((float) (a2.a + a2.c)) / ((float) this.n.a()));
            sVar.d(((float) (a2.d + a2.b)) / ((float) this.n.b()));
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public float[] b() {
        if (this.a != null) {
            return this.a.u();
        }
        return new float[16];
    }

    public l c() {
        return this.a;
    }

    public cg d() {
        return this.l;
    }

    public cg a(MotionEvent motionEvent) {
        cg cgVar;
        synchronized (this.f) {
            int size = this.f.size() - 1;
            while (true) {
                if (size < 0) {
                    cgVar = null;
                    break;
                }
                cj cjVar = (cj) this.f.get(size);
                if ((cjVar instanceof co) && ee.a(cjVar.h(), (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    this.l = (cg) cjVar;
                    cgVar = this.l;
                    break;
                }
                size--;
            }
        }
        return cgVar;
    }

    public boolean b(MotionEvent motionEvent) throws RemoteException {
        boolean z;
        synchronized (this.f) {
            int size = this.f.size() - 1;
            while (true) {
                if (size < 0) {
                    z = false;
                    break;
                }
                cj cjVar = (cj) this.f.get(size);
                if ((cjVar instanceof co) && cjVar.isVisible() && ((co) cjVar).isClickable()) {
                    Rect h2 = cjVar.h();
                    boolean a2 = ee.a(h2, (int) motionEvent.getX(), (int) motionEvent.getY());
                    if (a2) {
                        this.k = IPoint.obtain(h2.left + (h2.width() / 2), h2.top);
                        this.l = (cg) cjVar;
                        z = a2;
                        break;
                    }
                }
                size--;
            }
        }
        return z;
    }

    public List<Marker> e() {
        ArrayList arrayList;
        synchronized (this.f) {
            arrayList = new ArrayList();
            try {
                for (cj cjVar : this.f) {
                    if ((cjVar instanceof co) && cjVar.j()) {
                        arrayList.add(new Marker((IMarker) cjVar));
                    }
                }
            } catch (Throwable th) {
                gf.b(th, "MapOverlayImageView", "getMapScreenMarkers");
                ThrowableExtension.printStackTrace(th);
            }
        }
        return arrayList;
    }

    public void f() {
        this.q.removeCallbacks(this.s);
        this.q.postDelayed(this.s, 10);
    }

    public boolean c(cj cjVar) {
        boolean contains;
        synchronized (this.f) {
            contains = this.f.contains(cjVar);
        }
        return contains;
    }

    /* access modifiers changed from: protected */
    public int g() {
        int size;
        synchronized (this.f) {
            size = this.f.size();
        }
        return size;
    }

    /* JADX WARNING: Removed duplicated region for block: B:8:0x001b A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.lang.String r7) {
        /*
            r6 = this;
            r1 = 0
            r2 = 0
            if (r7 == 0) goto L_0x000e
            java.lang.String r3 = r7.trim()     // Catch:{ Throwable -> 0x0070 }
            int r3 = r3.length()     // Catch:{ Throwable -> 0x0070 }
            if (r3 != 0) goto L_0x0029
        L_0x000e:
            r3 = 1
        L_0x000f:
            r4 = 0
            r6.l = r4     // Catch:{ Throwable -> 0x0070 }
            r4 = 0
            r6.k = r4     // Catch:{ Throwable -> 0x0070 }
            r4 = 0
            r6.m = r4     // Catch:{ Throwable -> 0x0070 }
            java.util.List<com.amap.api.mapcore.util.cj> r4 = r6.f     // Catch:{ Throwable -> 0x0070 }
            monitor-enter(r4)     // Catch:{ Throwable -> 0x0070 }
            java.util.List<com.amap.api.mapcore.util.cj> r5 = r6.h     // Catch:{ all -> 0x006d }
            r5.clear()     // Catch:{ all -> 0x006d }
            if (r3 == 0) goto L_0x002b
            java.util.List<com.amap.api.mapcore.util.cj> r1 = r6.f     // Catch:{ all -> 0x006d }
            r1.clear()     // Catch:{ all -> 0x006d }
        L_0x0027:
            monitor-exit(r4)     // Catch:{ all -> 0x006d }
        L_0x0028:
            return
        L_0x0029:
            r3 = r1
            goto L_0x000f
        L_0x002b:
            r3 = r1
        L_0x002c:
            java.util.List<com.amap.api.mapcore.util.cj> r1 = r6.f     // Catch:{ all -> 0x006d }
            int r1 = r1.size()     // Catch:{ all -> 0x006d }
            if (r3 >= r1) goto L_0x0050
            java.util.List<com.amap.api.mapcore.util.cj> r1 = r6.f     // Catch:{ all -> 0x006d }
            java.lang.Object r1 = r1.get(r3)     // Catch:{ all -> 0x006d }
            com.amap.api.mapcore.util.cj r1 = (com.amap.api.mapcore.util.cj) r1     // Catch:{ all -> 0x006d }
            java.lang.String r5 = r1.getId()     // Catch:{ all -> 0x006d }
            boolean r5 = r7.equals(r5)     // Catch:{ all -> 0x006d }
            if (r5 == 0) goto L_0x004b
        L_0x0046:
            int r2 = r3 + 1
            r3 = r2
            r2 = r1
            goto L_0x002c
        L_0x004b:
            r1.remove()     // Catch:{ all -> 0x006d }
            r1 = r2
            goto L_0x0046
        L_0x0050:
            java.util.List<com.amap.api.mapcore.util.cj> r1 = r6.f     // Catch:{ all -> 0x006d }
            r1.clear()     // Catch:{ all -> 0x006d }
            if (r2 == 0) goto L_0x0027
            java.util.List<com.amap.api.mapcore.util.cj> r1 = r6.f     // Catch:{ all -> 0x006d }
            r1.add(r2)     // Catch:{ all -> 0x006d }
            boolean r1 = r2.l()     // Catch:{ all -> 0x006d }
            if (r1 == 0) goto L_0x0027
            boolean r1 = r2 instanceof com.amap.api.mapcore.util.cg     // Catch:{ all -> 0x006d }
            if (r1 == 0) goto L_0x0027
            r0 = r2
            com.amap.api.mapcore.util.cg r0 = (com.amap.api.mapcore.util.cg) r0     // Catch:{ all -> 0x006d }
            r1 = r0
            r6.m = r1     // Catch:{ all -> 0x006d }
            goto L_0x0027
        L_0x006d:
            r1 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x006d }
            throw r1     // Catch:{ Throwable -> 0x0070 }
        L_0x0070:
            r1 = move-exception
            java.lang.String r2 = "MapOverlayImageView"
            java.lang.String r3 = "clear"
            com.amap.api.mapcore.util.gf.b(r1, r2, r3)
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.q.a(java.lang.String):void");
    }

    public void a(s sVar) {
        synchronized (this.g) {
            if (sVar != null) {
                this.g.add(sVar);
            }
        }
    }

    public void h() {
        synchronized (this.g) {
            int e2 = this.a.e();
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                s sVar = (s) this.g.get(i2);
                if (sVar != null) {
                    sVar.h();
                    if (sVar.i() == 0) {
                        if (sVar.f() == e2) {
                            this.n.a(sVar.j());
                        } else {
                            this.r[0] = sVar.f();
                            GLES20.glDeleteTextures(1, this.r, 0);
                        }
                    }
                }
            }
        }
    }

    public void i() {
        try {
            for (cj cjVar : this.f) {
                if (cjVar != null) {
                    cjVar.destroy(false);
                }
            }
            a((String) null);
            this.a = null;
        } catch (Throwable th) {
            gf.b(th, "MapOverlayImageView", "destroy");
            ThrowableExtension.printStackTrace(th);
            Log.d("amapApi", "MapOverlayImageView clear erro" + th.getMessage());
        }
    }
}
