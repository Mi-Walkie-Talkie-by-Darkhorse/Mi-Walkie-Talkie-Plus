package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.mapcore.util.cx.b;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.DPoint;
import com.autonavi.amap.mapcore.FPointBounds;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GroundOverlayDelegateImp */
public class cc implements cf {
    FPointBounds a = null;
    float[] b = null;
    int c = 10000;
    b d;
    private l e;
    private BitmapDescriptor f;
    private LatLng g;
    private float h;
    private float i;
    private LatLngBounds j;
    private float k;
    private float l;
    private boolean m = true;
    private float n = 0.0f;
    private float o = 1.0f;
    private float p = 0.5f;
    private float q = 0.5f;
    private String r;
    private FloatBuffer s = null;
    private FloatBuffer t;
    private int u;
    private boolean v = false;
    private boolean w = false;
    private List<Float> x = new ArrayList();
    private List<Float> y = new ArrayList();

    public cc(l lVar) {
        this.e = lVar;
        try {
            this.r = getId();
        } catch (RemoteException e2) {
            gf.b((Throwable) e2, "GroundOverlayDelegateImp", "create");
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public void remove() throws RemoteException {
        this.e.a(getId());
        this.e.setRunLowFrame(false);
    }

    public String getId() throws RemoteException {
        if (this.r == null) {
            this.r = this.e.c("GroundOverlay");
        }
        return this.r;
    }

    public void setZIndex(float f2) throws RemoteException {
        this.l = f2;
        this.e.f();
        this.e.setRunLowFrame(false);
    }

    public float getZIndex() throws RemoteException {
        return this.l;
    }

    public void setVisible(boolean z) throws RemoteException {
        this.m = z;
        this.e.setRunLowFrame(false);
    }

    public boolean isVisible() throws RemoteException {
        return this.m;
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

    public boolean b() throws RemoteException {
        this.w = false;
        if (this.g == null) {
            f();
        } else if (this.j == null) {
            e();
        } else {
            g();
        }
        return true;
    }

    private void e() {
        if (this.g != null) {
            double cos = ((double) this.h) / ((6371000.79d * Math.cos(this.g.latitude * 0.01745329251994329d)) * 0.01745329251994329d);
            double d2 = ((double) this.i) / 111194.94043265979d;
            try {
                this.j = new LatLngBounds(new LatLng(this.g.latitude - (((double) (1.0f - this.q)) * d2), this.g.longitude - (((double) this.p) * cos)), new LatLng((d2 * ((double) this.q)) + this.g.latitude, (cos * ((double) (1.0f - this.p))) + this.g.longitude));
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
            g();
        }
    }

    private void f() {
        if (this.j != null) {
            LatLng latLng = this.j.southwest;
            LatLng latLng2 = this.j.northeast;
            this.g = new LatLng(latLng.latitude + (((double) (1.0f - this.q)) * (latLng2.latitude - latLng.latitude)), latLng.longitude + (((double) this.p) * (latLng2.longitude - latLng.longitude)));
            this.h = (float) (6371000.79d * Math.cos(this.g.latitude * 0.01745329251994329d) * (latLng2.longitude - latLng.longitude) * 0.01745329251994329d);
            this.i = (float) ((latLng2.latitude - latLng.latitude) * 6371000.79d * 0.01745329251994329d);
            g();
        }
    }

    private synchronized void g() {
        if (this.j != null) {
            this.b = new float[16];
            IPoint obtain = IPoint.obtain();
            IPoint obtain2 = IPoint.obtain();
            IPoint obtain3 = IPoint.obtain();
            IPoint obtain4 = IPoint.obtain();
            GLMapState.lonlat2Geo(this.j.southwest.longitude, this.j.southwest.latitude, obtain);
            GLMapState.lonlat2Geo(this.j.northeast.longitude, this.j.southwest.latitude, obtain2);
            GLMapState.lonlat2Geo(this.j.northeast.longitude, this.j.northeast.latitude, obtain3);
            GLMapState.lonlat2Geo(this.j.southwest.longitude, this.j.northeast.latitude, obtain4);
            if (this.k != 0.0f) {
                double d2 = (double) (obtain2.x - obtain.x);
                double d3 = (double) (obtain2.y - obtain3.y);
                DPoint obtain5 = DPoint.obtain();
                obtain5.x = ((double) obtain.x) + (((double) this.p) * d2);
                obtain5.y = ((double) obtain.y) - (((double) (1.0f - this.q)) * d3);
                a(obtain5, 0.0d, 0.0d, d2, d3, obtain);
                a(obtain5, d2, 0.0d, d2, d3, obtain2);
                a(obtain5, d2, d3, d2, d3, obtain3);
                a(obtain5, 0.0d, d3, d2, d3, obtain4);
                obtain5.recycle();
            }
            this.b[0] = (float) (obtain.x / this.c);
            this.b[1] = (float) (obtain.y / this.c);
            this.b[2] = (float) (obtain.x % this.c);
            this.b[3] = (float) (obtain.y % this.c);
            this.b[4] = (float) (obtain2.x / this.c);
            this.b[5] = (float) (obtain2.y / this.c);
            this.b[6] = (float) (obtain2.x % this.c);
            this.b[7] = (float) (obtain2.y % this.c);
            this.b[8] = (float) (obtain3.x / this.c);
            this.b[9] = (float) (obtain3.y / this.c);
            this.b[10] = (float) (obtain3.x % this.c);
            this.b[11] = (float) (obtain3.y % this.c);
            this.b[12] = (float) (obtain4.x / this.c);
            this.b[13] = (float) (obtain4.y / this.c);
            this.b[14] = (float) (obtain4.x % this.c);
            this.b[15] = (float) (obtain4.y % this.c);
            if (this.s == null) {
                this.s = ee.a(this.b);
            } else {
                this.s = ee.a(this.b, this.s);
            }
            obtain4.recycle();
            obtain.recycle();
            obtain2.recycle();
            obtain3.recycle();
        }
    }

    private void a(DPoint dPoint, double d2, double d3, double d4, double d5, IPoint iPoint) {
        double d6 = d2 - (((double) this.p) * d4);
        double d7 = (((double) (1.0f - this.q)) * d5) - d3;
        double d8 = ((double) (-this.k)) * 0.01745329251994329d;
        iPoint.x = (int) (dPoint.x + (Math.cos(d8) * d6) + (Math.sin(d8) * d7));
        iPoint.y = (int) (((d7 * Math.cos(d8)) - (d6 * Math.sin(d8))) + dPoint.y);
    }

    private void h() {
        if (this.f != null || (this.f != null && this.f.getBitmap() != null)) {
            int width = this.f.getWidth();
            float width2 = ((float) width) / ((float) this.f.getBitmap().getWidth());
            float height = ((float) this.f.getHeight()) / ((float) this.f.getBitmap().getHeight());
            this.t = ee.a(new float[]{0.0f, height, width2, height, width2, 0.0f, 0.0f, 0.0f});
        }
    }

    public void c() throws RemoteException {
        if (!this.m) {
            return;
        }
        if ((this.g != null || this.j != null) && this.f != null) {
            if (this.b == null) {
                b();
            }
            if (!this.v) {
                Bitmap bitmap = this.f.getBitmap();
                if (bitmap != null && !bitmap.isRecycled()) {
                    if (this.u == 0) {
                        int[] iArr = {0};
                        GLES20.glGenTextures(1, iArr, 0);
                        this.u = iArr[0];
                    } else {
                        GLES20.glDeleteTextures(1, new int[]{this.u}, 0);
                    }
                    ee.b(this.u, bitmap, false);
                }
                this.v = true;
            }
            if (this.h != 0.0f || this.i != 0.0f) {
                a(this.u, this.s, this.t);
                this.w = true;
            }
        }
    }

    public void destroy() {
        try {
            remove();
            if (this.f != null) {
                Bitmap bitmap = this.f.getBitmap();
                if (bitmap != null) {
                    bitmap.recycle();
                    this.f = null;
                }
            }
            if (this.t != null) {
                this.t.clear();
                this.t = null;
            }
            if (this.s != null) {
                this.s.clear();
                this.s = null;
            }
            this.g = null;
            this.j = null;
        } catch (Throwable th) {
            gf.b(th, "GroundOverlayDelegateImp", "destroy");
            ThrowableExtension.printStackTrace(th);
        }
    }

    public boolean a() {
        return true;
    }

    public void setPosition(LatLng latLng) throws RemoteException {
        this.g = latLng;
        e();
        this.e.setRunLowFrame(false);
    }

    public LatLng getPosition() throws RemoteException {
        return this.g;
    }

    public void setDimensions(float f2) throws RemoteException {
        if (f2 <= 0.0f) {
            Log.w("GroundOverlayDelegateImp", "Width must be non-negative");
        }
        if (!this.v || this.h == f2) {
            this.h = f2;
            this.i = f2;
        } else {
            this.h = f2;
            this.i = f2;
            e();
        }
        this.e.setRunLowFrame(false);
    }

    public void setDimensions(float f2, float f3) throws RemoteException {
        if (f2 <= 0.0f || f3 <= 0.0f) {
            Log.w("GroundOverlayDelegateImp", "Width and Height must be non-negative");
        }
        if (!this.v || this.h == f2 || this.i == f3) {
            this.h = f2;
            this.i = f3;
        } else {
            this.h = f2;
            this.i = f3;
            e();
        }
        this.e.setRunLowFrame(false);
    }

    public float getWidth() throws RemoteException {
        return this.h;
    }

    public float getHeight() throws RemoteException {
        return this.i;
    }

    public void setPositionFromBounds(LatLngBounds latLngBounds) throws RemoteException {
        this.j = latLngBounds;
        f();
        this.e.setRunLowFrame(false);
    }

    public LatLngBounds getBounds() throws RemoteException {
        return this.j;
    }

    public void setBearing(float f2) throws RemoteException {
        float f3 = ((f2 % 360.0f) + 360.0f) % 360.0f;
        if (((double) Math.abs(this.k - f3)) > 1.0E-7d) {
            this.k = f3;
            g();
        }
        this.e.setRunLowFrame(false);
    }

    public float getBearing() throws RemoteException {
        return this.k;
    }

    public void setTransparency(float f2) throws RemoteException {
        this.n = (float) Math.min(1.0d, Math.max(0.0d, (double) f2));
        this.o = 1.0f - f2;
        this.e.setRunLowFrame(false);
    }

    public float getTransparency() throws RemoteException {
        return this.n;
    }

    public void setImage(BitmapDescriptor bitmapDescriptor) throws RemoteException {
        if (bitmapDescriptor != null && bitmapDescriptor.getBitmap() != null && !bitmapDescriptor.getBitmap().isRecycled()) {
            this.f = bitmapDescriptor;
            h();
            if (this.v) {
                this.v = false;
            }
            this.e.setRunLowFrame(false);
        }
    }

    public void a(float f2, float f3) throws RemoteException {
        this.p = f2;
        this.q = f3;
        this.e.setRunLowFrame(false);
    }

    public boolean d() {
        return this.w;
    }

    public boolean isAboveMaskLayer() {
        return false;
    }

    public void setAboveMaskLayer(boolean z) {
    }

    private void i() {
        if (this.e != null) {
            this.d = (b) this.e.t(2);
        }
    }

    private void a(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (this.b != null && floatBuffer != null && floatBuffer2 != null) {
            if (this.d == null || this.d.c()) {
                i();
            }
            this.d.a();
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(1, MessageCmdID.CID_MSG_READ_ACK_VALUE);
            GLES20.glBlendColor(1.0f * this.o, 1.0f * this.o, 1.0f * this.o, this.o);
            GLES20.glBindTexture(3553, i2);
            GLES20.glEnableVertexAttribArray(this.d.b);
            GLES20.glVertexAttribPointer(this.d.b, 4, 5126, false, 16, floatBuffer);
            GLES20.glEnableVertexAttribArray(this.d.c);
            GLES20.glVertexAttribPointer(this.d.c, 2, 5126, false, 8, floatBuffer2);
            GLES20.glUniform4f(this.d.g, (float) (this.e.getMapConfig().getS_x() / this.c), (float) (this.e.getMapConfig().getS_y() / this.c), (float) (this.e.getMapConfig().getS_x() % this.c), (float) (this.e.getMapConfig().getS_y() % this.c));
            GLES20.glUniform4f(this.d.h, 1.0f * this.o, 1.0f * this.o, 1.0f * this.o, this.o);
            GLES20.glUniformMatrix4fv(this.d.a, 1, false, this.e.u(), 0);
            GLES20.glDrawArrays(6, 0, 4);
            GLES20.glBindTexture(3553, 0);
            GLES20.glDisableVertexAttribArray(this.d.b);
            GLES20.glDisableVertexAttribArray(this.d.c);
            GLES20.glDisable(3042);
            GLES20.glUseProgram(0);
        }
    }
}
