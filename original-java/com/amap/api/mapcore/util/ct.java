package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.animation.Animation;
import com.amap.api.maps.model.animation.Animation.AnimationListener;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.animation.GLAnimation;
import com.autonavi.amap.mapcore.animation.GLTransformation;
import com.autonavi.amap.mapcore.interfaces.IInfoWindowManager;
import com.autonavi.amap.mapcore.interfaces.IMarkerAction;
import com.autonavi.amap.mapcore.interfaces.IOverlay;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.nio.FloatBuffer;

/* compiled from: PopupOverlay */
public class ct implements ae, ci, IInfoWindowManager {
    private float A = 0.0f;
    private float B = 0.0f;
    private int C;
    private boolean D = true;
    private Bitmap E = null;
    private Bitmap F = null;
    private Bitmap G = null;
    private Bitmap H = null;
    private boolean I = false;
    /* access modifiers changed from: private */
    public GLAnimation J;
    private GLAnimation K;
    /* access modifiers changed from: private */
    public boolean L = false;
    private boolean M = true;
    l a = null;
    float[] b = new float[12];
    a c;
    float[] d = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    long e = 0;
    long f = FileTracerConfig.FOREVER;
    long g = 100;
    af h;
    private Context i;
    private cg j;
    private boolean k = false;
    private int l = 0;
    private int m = 0;
    private int n = 0;
    private int o = 0;
    private FPoint p;
    private FloatBuffer q = null;
    private String r;
    private boolean s = true;
    private FloatBuffer t;
    private float u = 0.5f;
    private float v = 1.0f;
    private boolean w;
    private Bitmap x;
    private Bitmap y;
    private Rect z = new Rect();

    /* compiled from: PopupOverlay */
    static class a extends cw {
        int a;
        int b;
        int c;

        a(String str) {
            if (a(str)) {
                this.a = c("aMVP");
                this.b = b("aVertex");
                this.c = b("aTextureCoord");
            }
        }
    }

    public boolean e() {
        return this.D;
    }

    public void a(boolean z2) {
        this.D = z2;
    }

    public void a(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            c(this.E);
            this.E = bitmap;
        }
    }

    private synchronized void c(Bitmap bitmap) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                bitmap.recycle();
            }
        }
    }

    private void d(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            c(this.F);
            this.F = bitmap;
        }
    }

    private void e(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            c(this.G);
            this.G = bitmap;
        }
    }

    private void f(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            c(this.H);
            this.H = bitmap;
        }
    }

    private Bitmap l() {
        return this.E;
    }

    private Bitmap m() {
        return this.G;
    }

    public ct(l lVar, Context context) {
        this.i = context;
        this.a = lVar;
        this.r = getId();
    }

    public int f() {
        try {
            return this.x.getWidth();
        } catch (Throwable th) {
            return 0;
        }
    }

    public int g() {
        try {
            return this.x.getHeight();
        } catch (Throwable th) {
            return 0;
        }
    }

    public String getId() {
        if (this.r == null) {
            this.r = "PopupOverlay";
        }
        return this.r;
    }

    public synchronized void b(Bitmap bitmap) {
        if (bitmap != null) {
            try {
                if (!bitmap.isRecycled()) {
                    if (this.x == null || this.x.hashCode() != bitmap.hashCode()) {
                        if (this.x != null) {
                            if (this.E == null && this.F == null && this.G == null && this.H == null) {
                                c(this.y);
                                this.y = this.x;
                            } else if (!g(this.x)) {
                                c(this.y);
                                this.y = this.x;
                            }
                        }
                        this.I = false;
                        this.x = bitmap;
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    private boolean g(Bitmap bitmap) {
        if (this.E != null && bitmap.hashCode() == this.E.hashCode()) {
            return true;
        }
        if (this.G != null && bitmap.hashCode() == this.G.hashCode()) {
            return true;
        }
        if (this.F != null && bitmap.hashCode() == this.F.hashCode()) {
            return true;
        }
        if (this.H == null || bitmap.hashCode() != this.H.hashCode()) {
            return false;
        }
        return true;
    }

    public void setVisible(boolean z2) {
        if (!this.s && z2) {
            this.w = true;
        }
        this.s = z2;
    }

    public boolean isVisible() {
        return this.s;
    }

    public boolean equalsRemote(IOverlay iOverlay) throws RemoteException {
        if (equals(iOverlay) || iOverlay.getId().equals(getId())) {
            return true;
        }
        return false;
    }

    public int hashCodeRemote() {
        return super.hashCode();
    }

    public boolean a(int i2, int i3) {
        GLMapState c2 = this.a.c();
        if (this.p == null || c2 == null) {
            return false;
        }
        IPoint obtain = IPoint.obtain();
        c2.map2Win(this.p.x, this.p.y, obtain);
        int f2 = f();
        int g2 = g();
        int i4 = (int) (((float) (obtain.x + this.l)) - (((float) f2) * this.u));
        int i5 = (int) (((float) (obtain.y + this.m)) + (((float) g2) * (1.0f - this.v)));
        obtain.recycle();
        if (i4 - f2 > i2 || i4 < (-f2) * 2 || i5 < (-g2) * 2 || i5 - g2 > i3) {
            return false;
        }
        if (this.x == null) {
            return false;
        }
        int width = this.x.getWidth();
        int height = this.x.getHeight();
        if (this.t == null) {
            this.t = ee.a(new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f});
        }
        int i6 = (int) (((double) (1.0f - this.A)) * 0.5d * ((double) width));
        this.b[0] = (float) (i4 + i6);
        this.z.left = i4 + i6;
        this.b[1] = (float) (i3 - i5);
        this.b[2] = 0.0f;
        this.b[3] = (float) ((i4 + width) - i6);
        this.b[4] = (float) (i3 - i5);
        this.z.top = i5 - height;
        this.b[5] = 0.0f;
        this.b[6] = (float) ((i4 + width) - i6);
        this.z.right = width + i4;
        this.b[7] = (float) ((i3 - i5) + height);
        this.z.bottom = i5;
        this.b[8] = 0.0f;
        this.b[9] = (float) (i6 + i4);
        this.b[10] = (float) (height + (i3 - i5));
        this.b[11] = 0.0f;
        if (this.q == null) {
            this.q = ee.a(this.b);
        } else {
            this.q = ee.a(this.b, this.q);
        }
        return true;
    }

    public void h() {
        this.c = new a("texture.glsl");
    }

    private void a(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2) {
        if (floatBuffer != null && floatBuffer2 != null && i2 != 0) {
            if (this.c == null) {
                h();
            }
            this.c.a();
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(1, MessageCmdID.CID_MSG_READ_ACK_VALUE);
            GLES20.glBlendColor(1.0f, 1.0f, 1.0f, 1.0f);
            GLES20.glBindTexture(3553, i2);
            GLES20.glEnableVertexAttribArray(this.c.b);
            GLES20.glVertexAttribPointer(this.c.b, 3, 5126, false, 12, floatBuffer);
            GLES20.glEnableVertexAttribArray(this.c.c);
            GLES20.glVertexAttribPointer(this.c.c, 2, 5126, false, 8, floatBuffer2);
            GLES20.glUniformMatrix4fv(this.c.a, 1, false, this.d, 0);
            GLES20.glDrawArrays(6, 0, 4);
            GLES20.glDisableVertexAttribArray(this.c.b);
            GLES20.glDisableVertexAttribArray(this.c.c);
            GLES20.glBindTexture(3553, 0);
            GLES20.glUseProgram(0);
            GLES20.glDisable(3042);
        }
    }

    public void b(int i2, int i3) {
        if (this.s && this.p != null && this.x != null) {
            i();
            if (this.x.isRecycled()) {
            }
            if (!this.I && !this.x.isRecycled()) {
                try {
                    if (this.C != 0) {
                        GLES20.glDeleteTextures(1, new int[]{this.C}, 0);
                    } else {
                        this.C = o();
                    }
                    if (this.x != null && !this.x.isRecycled()) {
                        ee.b(this.C, this.x, false);
                        this.I = true;
                    }
                } catch (Throwable th) {
                    gf.b(th, "PopupOverlay", "drawMarker");
                    ThrowableExtension.printStackTrace(th);
                    return;
                }
            }
            n();
            if (a(i2, i3)) {
                Matrix.setIdentityM(this.d, 0);
                Matrix.orthoM(this.d, 0, 0.0f, (float) i2, 0.0f, (float) i3, 1.0f, -1.0f);
                a(this.C, this.q, this.t);
                if (this.w) {
                    this.w = false;
                    s();
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void i() {
        long j2;
        if (this.h != null) {
            j2 = this.h.c();
            if (j2 <= 0) {
                j2 = this.f;
            } else if (j2 <= this.g) {
                j2 = this.g;
            }
        } else {
            j2 = 0;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.e > j2) {
            if (this.e != 0) {
                try {
                    a(this.j);
                } catch (RemoteException e2) {
                    ThrowableExtension.printStackTrace(e2);
                }
            }
            this.e = currentTimeMillis;
        }
    }

    private void n() {
        if (!this.M && this.K != null && !this.K.hasEnded()) {
            this.L = true;
            GLTransformation gLTransformation = new GLTransformation();
            this.K.getTransformation(AnimationUtils.currentAnimationTimeMillis(), gLTransformation);
            if (gLTransformation != null && !Double.isNaN(gLTransformation.scale_x) && !Double.isNaN(gLTransformation.scale_y)) {
                this.A = (float) gLTransformation.scale_x;
                this.B = (float) gLTransformation.scale_y;
            }
        } else if (this.J == null || this.J.hasEnded()) {
            this.A = 1.0f;
            this.B = 1.0f;
            this.L = false;
        } else {
            this.M = false;
            this.L = true;
            this.l = this.n;
            this.m = this.o;
            GLTransformation gLTransformation2 = new GLTransformation();
            this.J.getTransformation(AnimationUtils.currentAnimationTimeMillis(), gLTransformation2);
            if (gLTransformation2 != null && !Double.isNaN(gLTransformation2.scale_x) && !Double.isNaN(gLTransformation2.scale_y)) {
                this.A = (float) gLTransformation2.scale_x;
                this.B = (float) gLTransformation2.scale_y;
            }
        }
    }

    public void setInfoWindowAnimation(Animation animation, AnimationListener animationListener) {
    }

    public void setInfoWindowAppearAnimation(Animation animation) {
        if (this.K == null || !this.K.equals(animation.glAnimation)) {
            this.J = animation.glAnimation;
            return;
        }
        try {
            this.J = animation.glAnimation.clone();
        } catch (Throwable th) {
            gf.b(th, "PopupOverlay", "setInfoWindowDisappearAnimation");
        }
    }

    public void setInfoWindowBackColor(int i2) {
    }

    public void setInfoWindowBackEnable(boolean z2) {
    }

    public void setInfoWindowBackScale(float f2, float f3) {
    }

    public void setInfoWindowDisappearAnimation(Animation animation) {
        if (this.J == null || !this.J.equals(animation.glAnimation)) {
            this.K = animation.glAnimation;
            return;
        }
        try {
            this.K = animation.glAnimation.clone();
        } catch (Throwable th) {
            gf.b(th, "PopupOverlay", "setInfoWindowDisappearAnimation");
        }
    }

    public void setInfoWindowMovingAnimation(Animation animation) {
    }

    public void startAnimation() {
    }

    private int o() {
        int[] iArr = {0};
        GLES20.glGenTextures(1, iArr, 0);
        return iArr[0];
    }

    public void c(int i2, int i3) throws RemoteException {
        if (this.L) {
            this.n = i2;
            this.o = i3;
            return;
        }
        this.l = i2;
        this.m = i3;
        this.n = i2;
        this.o = i3;
    }

    public void setZIndex(float f2) {
    }

    public float getZIndex() {
        return 0.0f;
    }

    public boolean a() {
        return false;
    }

    public void remove() throws RemoteException {
    }

    /* access modifiers changed from: private */
    public void b(boolean z2) {
        if (z2) {
            b(l());
        } else {
            b(m());
        }
    }

    private void c(final boolean z2) {
        if (this.K != null) {
            this.M = false;
            this.L = true;
            this.K.startNow();
            this.K.setAnimationListener(new AnimationListener() {
                public void onAnimationStart() {
                }

                public void onAnimationEnd() {
                    if (ct.this.J != null) {
                        ct.this.L = true;
                        ct.this.J.startNow();
                        ct.this.b(z2);
                    }
                }
            });
        } else if (this.J != null) {
            this.L = true;
            this.J.startNow();
            b(z2);
        } else {
            b(z2);
        }
    }

    private void p() {
        if (!this.D || this.x == null) {
            b(m());
        } else {
            c(false);
        }
        a(false);
    }

    private void q() {
        if (this.D || this.x == null) {
            b(l());
        } else {
            c(true);
        }
        a(true);
    }

    public void destroy() {
        if (this.k) {
            try {
                remove();
                r();
                if (this.t != null) {
                    this.t.clear();
                    this.t = null;
                }
                if (this.q != null) {
                    this.q.clear();
                    this.q = null;
                }
                this.p = null;
                this.C = 0;
            } catch (Throwable th) {
                gf.b(th, "PopupOverlay", "realDestroy");
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    private void r() {
        if (this.x != null) {
            Bitmap bitmap = this.x;
            if (bitmap != null) {
                bitmap.recycle();
                this.x = null;
            }
        }
        if (this.y != null && !this.y.isRecycled()) {
            this.y.recycle();
            this.y = null;
        }
        if (this.E != null && !this.E.isRecycled()) {
            this.E.recycle();
        }
        if (this.F != null && !this.F.isRecycled()) {
            this.F.recycle();
        }
        if (this.G != null && !this.G.isRecycled()) {
            this.G.recycle();
        }
        if (this.H != null && !this.H.isRecycled()) {
            this.H.recycle();
        }
    }

    public boolean d() {
        return false;
    }

    public void c() throws RemoteException {
    }

    public void a(FPoint fPoint) {
        this.p = fPoint;
    }

    private void s() {
    }

    public boolean j() {
        return this.L;
    }

    public synchronized void a(cg cgVar) throws RemoteException {
        if (cgVar != null) {
            if (cgVar.isInfoWindowEnable()) {
                if (this.j != null && !this.j.getId().equals(cgVar.getId())) {
                    a_();
                }
                if (this.h != null) {
                    this.j = cgVar;
                    cgVar.a(true);
                    setVisible(true);
                    k();
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void k() {
        try {
            Marker marker = new Marker(this.j);
            if (this.h != null) {
                Bitmap a2 = a(this.h.a(marker));
                if (a2 == null) {
                    View b2 = this.h.b(marker);
                    if (b2 != null) {
                        if (b2.getBackground() == null) {
                            b2.setBackground(this.h.g());
                        }
                        a2 = a(b2);
                    }
                }
                a(a2);
                d(a(this.h.c(marker)));
                e(a(this.h.d(marker)));
                f(a(this.h.e(marker)));
            }
        } catch (Throwable th) {
            gf.b(th, "PopupOverlay", "getInfoWindow");
            ThrowableExtension.printStackTrace(th);
        }
    }

    private Bitmap a(View view) {
        if (view == 0) {
            return null;
        }
        if ((view instanceof RelativeLayout) && this.i != null) {
            LinearLayout linearLayout = new LinearLayout(this.i);
            linearLayout.setOrientation(1);
            linearLayout.addView(view);
            view = linearLayout;
        }
        view.setDrawingCacheEnabled(true);
        view.setDrawingCacheQuality(0);
        return ee.a(view);
    }

    private Rect t() {
        return new Rect(this.z.left, this.z.top, this.z.right, this.z.top + v());
    }

    private Rect u() {
        return new Rect(this.z.left, this.z.top, this.z.right, this.z.top + w());
    }

    private int v() {
        if (this.E == null || this.E.isRecycled()) {
            return 0;
        }
        return this.E.getHeight();
    }

    private int w() {
        if (this.G == null || this.G.isRecycled()) {
            return 0;
        }
        return this.G.getHeight();
    }

    public void b() {
        try {
            if (this.j == null || !this.j.j()) {
                setVisible(false);
                return;
            }
            setVisible(true);
            Rect h2 = this.j.h();
            int c2 = this.j.c() + this.j.e();
            int f2 = this.j.f() + this.j.d() + 2;
            if (j()) {
                if (this.x != null) {
                    return;
                }
                if (this.E == null && this.G == null) {
                    return;
                }
            }
            IMarkerAction iMarkerAction = this.j.getIMarkerAction();
            if (iMarkerAction == null || iMarkerAction.isInfoWindowEnable()) {
                setVisible(true);
                if (iMarkerAction == null || !iMarkerAction.isInfoWindowAutoOverturn()) {
                    a(this.j.a());
                    c(c2, f2);
                    q();
                    return;
                }
                Rect t2 = t();
                Rect u2 = u();
                if (e()) {
                    u2.offset(0, h2.height() + t2.height() + 2);
                } else {
                    t2.offset(0, -(h2.height() + t2.height() + 2));
                }
                int a2 = this.a.a(iMarkerAction, t2);
                int a3 = this.a.a(iMarkerAction, u2);
                if (a2 <= 0 || (a3 != 0 && (a3 <= 0 || a2 >= a3))) {
                    q();
                } else {
                    f2 = this.j.f() + this.j.d() + 2 + h2.height() + u2.height();
                    p();
                }
                a(this.j.a());
                c(c2, f2);
                return;
            }
            setVisible(false);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public boolean a(MotionEvent motionEvent) {
        if (!this.s || this.j == null || !ee.a(this.z, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return true;
    }

    public synchronized void a_() {
        setVisible(false);
        r();
    }

    public boolean isAboveMaskLayer() {
        return false;
    }

    public void setAboveMaskLayer(boolean z2) {
    }

    public void a(af afVar) {
        this.h = afVar;
    }
}
