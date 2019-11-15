package com.amap.api.mapcore.util;

import android.opengl.GLES20;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.maps.model.ArcOptions;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.GroundOverlayOptions;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.NavigateArrowOptions;
import com.amap.api.maps.model.PolygonOptions;
import com.amap.api.maps.model.PolylineOptions;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.Serializable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

/* compiled from: GLOverlayLayer */
public class i {
    l a;
    a b = new a();
    private int c = 0;
    /* access modifiers changed from: private */
    public List<ci> d = new Vector(500);
    private List<Integer> e = new Vector();
    private Handler f = new Handler(Looper.getMainLooper());
    private Runnable g = new Runnable() {
        public synchronized void run() {
            try {
                synchronized (i.this) {
                    if (i.this.d != null && i.this.d.size() > 0) {
                        Collections.sort(i.this.d, i.this.b);
                    }
                }
            } catch (Throwable th) {
                gf.b(th, "MapOverlayImageView", "changeOverlayIndex");
            }
            return;
        }
    };

    /* compiled from: GLOverlayLayer */
    static class a implements Serializable, Comparator<Object> {
        a() {
        }

        public int compare(Object obj, Object obj2) {
            ci ciVar = (ci) obj;
            ci ciVar2 = (ci) obj2;
            if (!(ciVar == null || ciVar2 == null)) {
                try {
                    if (ciVar.getZIndex() > ciVar2.getZIndex()) {
                        return 1;
                    }
                    if (ciVar.getZIndex() < ciVar2.getZIndex()) {
                        return -1;
                    }
                } catch (Throwable th) {
                    gf.b(th, "GLOverlayLayer", "compare");
                    ThrowableExtension.printStackTrace(th);
                }
            }
            return 0;
        }
    }

    public synchronized String a(String str) {
        this.c++;
        return str + this.c;
    }

    public i(l lVar) {
        this.a = lVar;
    }

    public synchronized void b(String str) {
        ci ciVar;
        if (str != null) {
            try {
                if (str.trim().length() != 0) {
                    Iterator it = this.d.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            ciVar = null;
                            break;
                        }
                        ciVar = (ci) it.next();
                        if (str.equals(ciVar.getId())) {
                            break;
                        }
                    }
                    this.d.clear();
                    if (ciVar != null) {
                        this.d.add(ciVar);
                    }
                }
            } catch (Throwable th) {
                gf.b(th, "GLOverlayLayer", "clear");
                ThrowableExtension.printStackTrace(th);
                Log.d("amapApi", "GLOverlayLayer clear erro" + th.getMessage());
            }
        }
        this.d.clear();
        a();
        return;
    }

    public synchronized void a() {
        this.c = 0;
    }

    public synchronized void b() {
        try {
            for (ci destroy : this.d) {
                destroy.destroy();
            }
            b(null);
        } catch (Throwable th) {
            gf.b(th, "GLOverlayLayer", "destory");
            ThrowableExtension.printStackTrace(th);
            Log.d("amapApi", "GLOverlayLayer destory erro" + th.getMessage());
        }
        return;
    }

    /* access modifiers changed from: 0000 */
    public synchronized ci c(String str) throws RemoteException {
        ci ciVar;
        Iterator it = this.d.iterator();
        while (true) {
            if (!it.hasNext()) {
                ciVar = null;
                break;
            }
            ciVar = (ci) it.next();
            if (ciVar != null && ciVar.getId().equals(str)) {
                break;
            }
        }
        return ciVar;
    }

    public synchronized cl a(PolylineOptions polylineOptions) throws RemoteException {
        cs csVar;
        if (polylineOptions == null) {
            csVar = null;
        } else {
            csVar = new cs(this, polylineOptions);
            a((ci) csVar);
        }
        return csVar;
    }

    public synchronized ch a(NavigateArrowOptions navigateArrowOptions) throws RemoteException {
        cq cqVar;
        if (navigateArrowOptions == null) {
            cqVar = null;
        } else {
            cqVar = new cq(this.a);
            cqVar.setTopColor(navigateArrowOptions.getTopColor());
            cqVar.setPoints(navigateArrowOptions.getPoints());
            cqVar.setVisible(navigateArrowOptions.isVisible());
            cqVar.setWidth(navigateArrowOptions.getWidth());
            cqVar.setZIndex(navigateArrowOptions.getZIndex());
            a((ci) cqVar);
        }
        return cqVar;
    }

    public synchronized ck a(PolygonOptions polygonOptions) throws RemoteException {
        cr crVar;
        if (polygonOptions == null) {
            crVar = null;
        } else {
            crVar = new cr(this.a);
            crVar.setFillColor(polygonOptions.getFillColor());
            crVar.setPoints(polygonOptions.getPoints());
            crVar.setHoleOptions(polygonOptions.getHoleOptions());
            crVar.setVisible(polygonOptions.isVisible());
            crVar.setStrokeWidth(polygonOptions.getStrokeWidth());
            crVar.setZIndex(polygonOptions.getZIndex());
            crVar.setStrokeColor(polygonOptions.getStrokeColor());
            a((ci) crVar);
        }
        return crVar;
    }

    public synchronized ce a(CircleOptions circleOptions) throws RemoteException {
        ca caVar;
        if (circleOptions == null) {
            caVar = null;
        } else {
            caVar = new ca(this.a);
            caVar.setFillColor(circleOptions.getFillColor());
            caVar.setCenter(circleOptions.getCenter());
            caVar.setVisible(circleOptions.isVisible());
            caVar.setHoleOptions(circleOptions.getHoleOptions());
            caVar.setStrokeWidth(circleOptions.getStrokeWidth());
            caVar.setZIndex(circleOptions.getZIndex());
            caVar.setStrokeColor(circleOptions.getStrokeColor());
            caVar.setRadius(circleOptions.getRadius());
            a((ci) caVar);
        }
        return caVar;
    }

    public synchronized cd a(ArcOptions arcOptions) throws RemoteException {
        bz bzVar;
        if (arcOptions == null) {
            bzVar = null;
        } else {
            bzVar = new bz(this.a);
            bzVar.setStrokeColor(arcOptions.getStrokeColor());
            bzVar.a(arcOptions.getStart());
            bzVar.b(arcOptions.getPassed());
            bzVar.c(arcOptions.getEnd());
            bzVar.setVisible(arcOptions.isVisible());
            bzVar.setStrokeWidth(arcOptions.getStrokeWidth());
            bzVar.setZIndex(arcOptions.getZIndex());
            a((ci) bzVar);
        }
        return bzVar;
    }

    public synchronized cf a(GroundOverlayOptions groundOverlayOptions) throws RemoteException {
        cc ccVar;
        if (groundOverlayOptions == null) {
            ccVar = null;
        } else {
            ccVar = new cc(this.a);
            ccVar.a(groundOverlayOptions.getAnchorU(), groundOverlayOptions.getAnchorV());
            ccVar.setDimensions(groundOverlayOptions.getWidth(), groundOverlayOptions.getHeight());
            ccVar.setImage(groundOverlayOptions.getImage());
            ccVar.setPosition(groundOverlayOptions.getLocation());
            ccVar.setPositionFromBounds(groundOverlayOptions.getBounds());
            ccVar.setBearing(groundOverlayOptions.getBearing());
            ccVar.setTransparency(groundOverlayOptions.getTransparency());
            ccVar.setVisible(groundOverlayOptions.isVisible());
            ccVar.setZIndex(groundOverlayOptions.getZIndex());
            a((ci) ccVar);
        }
        return ccVar;
    }

    private void a(ci ciVar) throws RemoteException {
        this.d.add(ciVar);
        c();
    }

    public synchronized boolean d(String str) throws RemoteException {
        boolean z;
        ci c2 = c(str);
        if (c2 != null) {
            z = this.d.remove(c2);
        } else {
            z = false;
        }
        return z;
    }

    public synchronized void c() {
        this.f.removeCallbacks(this.g);
        this.f.postDelayed(this.g, 10);
    }

    public synchronized void a(boolean z, int i) {
        try {
            for (Integer intValue : this.e) {
                GLES20.glDeleteTextures(1, new int[]{intValue.intValue()}, 0);
            }
            this.e.clear();
            int size = this.d.size();
            for (ci ciVar : this.d) {
                if (ciVar.isVisible()) {
                    if (size > 20) {
                        if (ciVar.a()) {
                            if (z) {
                                if (ciVar.getZIndex() <= ((float) i)) {
                                    ciVar.c();
                                }
                            } else if (ciVar.getZIndex() > ((float) i)) {
                                ciVar.c();
                            }
                        }
                    } else if (z) {
                        if (ciVar.getZIndex() <= ((float) i)) {
                            ciVar.c();
                        }
                    } else if (ciVar.getZIndex() > ((float) i)) {
                        ciVar.c();
                    }
                }
            }
        } catch (Throwable th) {
            gf.b(th, "GLOverlayLayer", "draw");
            ThrowableExtension.printStackTrace(th);
        }
        return;
    }

    public void a(Integer num) {
        if (num.intValue() != 0) {
            this.e.add(num);
        }
    }

    public synchronized ci a(LatLng latLng) {
        ci ciVar;
        Iterator it = this.d.iterator();
        while (true) {
            if (!it.hasNext()) {
                ciVar = null;
                break;
            }
            ciVar = (ci) it.next();
            if (ciVar != null && ciVar.d() && (ciVar instanceof cl) && ((cl) ciVar).a(latLng)) {
                break;
            }
        }
        return ciVar;
    }

    public l d() {
        return this.a;
    }

    public float[] e() {
        if (this.a != null) {
            return this.a.u();
        }
        return new float[16];
    }
}
