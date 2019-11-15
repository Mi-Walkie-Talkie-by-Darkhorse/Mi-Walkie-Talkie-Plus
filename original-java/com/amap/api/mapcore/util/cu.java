package com.amap.api.mapcore.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Cap;
import android.graphics.Paint.FontMetrics;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.opengl.GLES20;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.TextOptions;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.Rectangle;
import com.autonavi.amap.mapcore.interfaces.IMarkerAction;
import com.autonavi.amap.mapcore.interfaces.IOverlayImage;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: TextDelegateImp */
public class cu implements cm {
    private static int b = 0;
    private int A;
    private int B;
    private boolean C = false;
    private boolean D = false;
    private boolean E = false;
    private float[] F = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    int a = 9;
    private float c = 0.0f;
    private float d = 0.0f;
    private int e = 4;
    private int f = 32;
    private FPoint g = FPoint.obtain();
    private int h;
    private Bitmap i;
    private int j;
    private int k;
    private String l;
    private LatLng m;
    private float n = 0.5f;
    private float o = 1.0f;
    private boolean p = true;
    private q q;
    private Object r;
    private String s;
    private int t;
    private int u;
    private int v;
    private Typeface w;
    private float x;
    private Rect y = new Rect();
    private Paint z = new Paint();

    private static String a(String str) {
        b++;
        return str + b;
    }

    public void setRotateAngle(float f2) {
        this.d = f2;
        this.c = (((-f2) % 360.0f) + 360.0f) % 360.0f;
        c();
    }

    public void destroy(boolean z2) {
        try {
            this.D = true;
            if (z2) {
                remove();
            }
            if (this.i != null) {
                this.i.recycle();
                this.i = null;
            }
            this.m = null;
            this.r = null;
        } catch (Throwable th) {
            gf.b(th, "TextDelegateImp", "destroy");
            ThrowableExtension.printStackTrace(th);
            Log.d("destroy erro", "TextDelegateImp destroy");
        }
    }

    public cu(TextOptions textOptions, q qVar) throws RemoteException {
        this.q = qVar;
        if (textOptions.getPosition() != null) {
            this.m = textOptions.getPosition();
        }
        setAlign(textOptions.getAlignX(), textOptions.getAlignY());
        this.p = textOptions.isVisible();
        this.s = textOptions.getText();
        this.t = textOptions.getBackgroundColor();
        this.u = textOptions.getFontColor();
        this.v = textOptions.getFontSize();
        this.r = textOptions.getObject();
        this.x = textOptions.getZIndex();
        this.w = textOptions.getTypeface();
        this.l = getId();
        setRotateAngle(textOptions.getRotate());
        b();
        a();
    }

    private void b() {
        if (this.s != null && this.s.trim().length() > 0) {
            try {
                this.z.setTypeface(this.w);
                this.z.setSubpixelText(true);
                this.z.setAntiAlias(true);
                this.z.setStrokeWidth(5.0f);
                this.z.setStrokeCap(Cap.ROUND);
                this.z.setTextSize((float) this.v);
                this.z.setTextAlign(Align.CENTER);
                this.z.setColor(this.u);
                FontMetrics fontMetrics = this.z.getFontMetrics();
                int i2 = (int) (fontMetrics.descent - fontMetrics.ascent);
                int i3 = (int) (((((float) i2) - fontMetrics.bottom) - fontMetrics.top) / 2.0f);
                this.z.getTextBounds(this.s, 0, this.s.length(), this.y);
                Bitmap createBitmap = Bitmap.createBitmap(this.y.width() + 6, i2, Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                canvas.drawColor(this.t);
                canvas.drawText(this.s, (float) (this.y.centerX() + 3), (float) i3, this.z);
                this.i = createBitmap;
                this.j = this.i.getWidth();
                this.k = this.i.getHeight();
            } catch (Throwable th) {
                gf.b(th, "TextDelegateImp", "initBitmap");
            }
        }
    }

    public synchronized boolean remove() {
        c();
        this.p = false;
        return this.q.a((cj) this);
    }

    private void c() {
        if (this.q.c() != null) {
            this.q.c().setRunLowFrame(false);
        }
    }

    public LatLng getPosition() {
        return this.m;
    }

    public String getId() {
        if (this.l == null) {
            this.l = a("Text");
        }
        return this.l;
    }

    public void setPosition(LatLng latLng) {
        this.m = latLng;
        a();
        c();
    }

    public boolean isInfoWindowShown() {
        return false;
    }

    public void setVisible(boolean z2) {
        if (this.p != z2) {
            this.p = z2;
            c();
        }
    }

    public boolean isVisible() {
        return this.p;
    }

    public void setZIndex(float f2) {
        this.x = f2;
        this.q.f();
    }

    public float getZIndex() {
        return this.x;
    }

    public void setAnchor(float f2, float f3) {
    }

    public float getAnchorU() {
        return this.n;
    }

    public float getAnchorV() {
        return this.o;
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

    public boolean a() {
        if (this.m == null) {
            return false;
        }
        IPoint obtain = IPoint.obtain();
        GLMapState.lonlat2Geo(this.m.longitude, this.m.latitude, obtain);
        this.A = obtain.x;
        this.B = obtain.y;
        this.q.c().a(this.m.latitude, this.m.longitude, this.g);
        obtain.recycle();
        return true;
    }

    private void b(l lVar, float[] fArr, int i2, float f2) throws RemoteException {
        float f3 = ((float) this.j) * f2;
        float f4 = ((float) this.k) * f2;
        float f5 = this.g.x;
        float f6 = this.g.y;
        float s_c = lVar.getMapConfig().getS_c();
        this.F[(this.a * 0) + 0] = f5 - (this.n * f3);
        this.F[(this.a * 0) + 1] = ((1.0f - this.o) * f4) + f6;
        this.F[(this.a * 0) + 2] = f5;
        this.F[(this.a * 0) + 3] = f6;
        this.F[(this.a * 0) + 6] = this.c;
        this.F[(this.a * 0) + 7] = s_c;
        this.F[(this.a * 1) + 0] = ((1.0f - this.n) * f3) + f5;
        this.F[(this.a * 1) + 1] = ((1.0f - this.o) * f4) + f6;
        this.F[(this.a * 1) + 2] = f5;
        this.F[(this.a * 1) + 3] = f6;
        this.F[(this.a * 1) + 6] = this.c;
        this.F[(this.a * 1) + 7] = s_c;
        this.F[(this.a * 2) + 0] = ((1.0f - this.n) * f3) + f5;
        this.F[(this.a * 2) + 1] = f6 - (this.o * f4);
        this.F[(this.a * 2) + 2] = f5;
        this.F[(this.a * 2) + 3] = f6;
        this.F[(this.a * 2) + 6] = this.c;
        this.F[(this.a * 2) + 7] = s_c;
        this.F[(this.a * 3) + 0] = f5 - (f3 * this.n);
        this.F[(this.a * 3) + 1] = f6 - (f4 * this.o);
        this.F[(this.a * 3) + 2] = f5;
        this.F[(this.a * 3) + 3] = f6;
        this.F[(this.a * 3) + 6] = this.c;
        this.F[(this.a * 3) + 7] = s_c;
        System.arraycopy(this.F, 0, fArr, i2, this.F.length);
    }

    public void a(l lVar, float[] fArr, int i2, float f2) {
        if (this.p && !this.D && this.m != null && this.i != null) {
            this.g.x = (float) (this.A - lVar.getMapConfig().getS_x());
            this.g.y = (float) (this.B - lVar.getMapConfig().getS_y());
            try {
                b(lVar, fArr, i2, f2);
            } catch (Throwable th) {
                gf.b(th, "TextDelegateImp", "drawMarker");
            }
        }
    }

    public void a(l lVar) {
        if (!this.E) {
            try {
                if (this.i != null && !this.i.isRecycled()) {
                    if (this.h == 0) {
                        this.h = d();
                    }
                    ee.b(this.h, this.i, false);
                    this.E = true;
                    this.i.recycle();
                }
            } catch (Throwable th) {
                gf.b(th, "TextDelegateImp", "loadtexture");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    private int d() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    public boolean i() {
        return true;
    }

    public void setObject(Object obj) {
        this.r = obj;
    }

    public Object getObject() {
        return this.r;
    }

    public int k() {
        try {
            return this.h;
        } catch (Throwable th) {
            return 0;
        }
    }

    public float getRotateAngle() {
        return this.d;
    }

    public Rect h() {
        return null;
    }

    public void setText(String str) throws RemoteException {
        this.s = str;
        e();
    }

    public String getText() throws RemoteException {
        return this.s;
    }

    public void setBackgroundColor(int i2) throws RemoteException {
        this.t = i2;
        e();
    }

    public int getBackgroundColor() throws RemoteException {
        return this.t;
    }

    public void setFontColor(int i2) throws RemoteException {
        this.u = i2;
        e();
    }

    public int getFontColor() throws RemoteException {
        return this.u;
    }

    public void setFontSize(int i2) throws RemoteException {
        this.v = i2;
        e();
    }

    public int getFontSize() throws RemoteException {
        return this.v;
    }

    public void setTypeface(Typeface typeface) throws RemoteException {
        this.w = typeface;
        e();
    }

    public Typeface getTypeface() throws RemoteException {
        return this.w;
    }

    public void setAlign(int i2, int i3) throws RemoteException {
        this.e = i2;
        switch (i2) {
            case 1:
                this.n = 0.0f;
                break;
            case 2:
                this.n = 1.0f;
                break;
            case 4:
                this.n = 0.5f;
                break;
            default:
                this.n = 0.5f;
                break;
        }
        this.f = i3;
        switch (i3) {
            case 8:
                this.o = 0.0f;
                break;
            case 16:
                this.o = 1.0f;
                break;
            case 32:
                this.o = 0.5f;
                break;
            default:
                this.o = 0.5f;
                break;
        }
        c();
    }

    public int getAlignX() throws RemoteException {
        return this.e;
    }

    public int getAlignY() {
        return this.f;
    }

    private synchronized void e() {
        b();
        this.E = false;
        c();
    }

    public boolean j() {
        Rectangle geoRectangle = this.q.c().getMapConfig().getGeoRectangle();
        if (geoRectangle == null || !geoRectangle.contains(this.A, this.B)) {
            return false;
        }
        return true;
    }

    public IMarkerAction getIMarkerAction() {
        return null;
    }

    public void b(boolean z2) {
        this.C = z2;
    }

    public boolean l() {
        return this.C;
    }
}
