package com.github.mikephil.charting.charts;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.c.c;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.d.f;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.h;
import com.github.mikephil.charting.e.b.e;
import com.github.mikephil.charting.f.g;
import com.github.mikephil.charting.f.i;
import com.github.mikephil.charting.g.j;
import com.github.mikephil.charting.listener.ChartTouchListener;
import com.github.mikephil.charting.listener.b;
import java.util.ArrayList;
import java.util.Iterator;
import org.bouncycastle.crypto.tls.CipherSuite;

@SuppressLint({"NewApi"})
public abstract class Chart<T extends h<? extends e<? extends Entry>>> extends ViewGroup implements com.github.mikephil.charting.e.a.e {
    protected boolean D = false;
    protected T E = null;
    protected boolean F = true;
    protected c G = new c(0);
    protected Paint H;
    protected Paint I;
    protected XAxis J;
    protected boolean K = true;
    protected com.github.mikephil.charting.components.c L;
    protected Legend M;
    protected com.github.mikephil.charting.listener.c N;
    protected ChartTouchListener O;
    protected i P;
    protected g Q;
    protected f R;
    protected j S = new j();
    protected a T;
    protected d[] U;
    protected float V = 0.0f;
    protected boolean W = true;
    private boolean a = true;
    protected com.github.mikephil.charting.components.d aa;
    protected ArrayList<Runnable> ab = new ArrayList<>();
    private float b = 0.9f;
    private String c = "No chart data available.";
    private b d;
    private float e = 0.0f;
    private float f = 0.0f;
    private float g = 0.0f;
    private float h = 0.0f;
    private boolean i = false;
    private boolean j = false;

    /* access modifiers changed from: protected */
    public abstract void b();

    public abstract void h();

    /* access modifiers changed from: protected */
    public abstract void j();

    public Chart(Context context) {
        super(context);
        a();
    }

    public Chart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public Chart(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }

    /* access modifiers changed from: protected */
    public void a() {
        setWillNotDraw(false);
        if (VERSION.SDK_INT < 11) {
            this.T = new a();
        } else {
            this.T = new a(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    Chart.this.postInvalidate();
                }
            });
        }
        com.github.mikephil.charting.g.i.a(getContext());
        this.V = com.github.mikephil.charting.g.i.a(500.0f);
        this.L = new com.github.mikephil.charting.components.c();
        this.M = new Legend();
        this.P = new i(this.S, this.M);
        this.J = new XAxis();
        this.H = new Paint(1);
        this.I = new Paint(1);
        this.I.setColor(Color.rgb(247, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256, 51));
        this.I.setTextAlign(Align.CENTER);
        this.I.setTextSize(com.github.mikephil.charting.g.i.a(12.0f));
        if (this.D) {
            Log.i("", "Chart.init()");
        }
    }

    public void setData(T t) {
        this.E = t;
        this.i = false;
        if (t != null) {
            c(t.e(), t.f());
            for (e eVar : this.E.i()) {
                if (eVar.h() || eVar.g() == this.G) {
                    eVar.a((com.github.mikephil.charting.c.f) this.G);
                }
            }
            h();
            if (this.D) {
                Log.i("MPAndroidChart", "Data is set.");
            }
        }
    }

    /* access modifiers changed from: protected */
    public void c(float f2, float f3) {
        float f4;
        if (this.E == null || this.E.j() < 2) {
            f4 = Math.max(Math.abs(f2), Math.abs(f3));
        } else {
            f4 = Math.abs(f3 - f2);
        }
        this.G.a(com.github.mikephil.charting.g.i.b(f4));
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        boolean z = true;
        if (this.E == null) {
            if (TextUtils.isEmpty(this.c)) {
                z = false;
            }
            if (z) {
                com.github.mikephil.charting.g.e center = getCenter();
                canvas.drawText(this.c, center.a, center.b, this.I);
            }
        } else if (!this.i) {
            j();
            this.i = true;
        }
    }

    /* access modifiers changed from: protected */
    public void b(Canvas canvas) {
        float f2;
        float f3;
        if (this.L != null && this.L.x()) {
            com.github.mikephil.charting.g.e b2 = this.L.b();
            this.H.setTypeface(this.L.u());
            this.H.setTextSize(this.L.v());
            this.H.setColor(this.L.w());
            this.H.setTextAlign(this.L.c());
            if (b2 == null) {
                f2 = (((float) getWidth()) - this.S.b()) - this.L.s();
                f3 = (((float) getHeight()) - this.S.d()) - this.L.t();
            } else {
                f2 = b2.a;
                f3 = b2.b;
            }
            canvas.drawText(this.L.a(), f2, f3, this.H);
        }
    }

    public float getMaxHighlightDistance() {
        return this.V;
    }

    public void setMaxHighlightDistance(float f2) {
        this.V = com.github.mikephil.charting.g.i.a(f2);
    }

    public d[] getHighlighted() {
        return this.U;
    }

    public boolean u() {
        return this.F;
    }

    public void setHighlightPerTapEnabled(boolean z) {
        this.F = z;
    }

    public boolean v() {
        return (this.U == null || this.U.length <= 0 || this.U[0] == null) ? false : true;
    }

    /* access modifiers changed from: protected */
    public void setLastHighlighted(d[] dVarArr) {
        if (dVarArr == null || dVarArr.length <= 0 || dVarArr[0] == null) {
            this.O.a((d) null);
        } else {
            this.O.a(dVarArr[0]);
        }
    }

    public void a(d dVar, boolean z) {
        Entry entry = null;
        if (dVar == null) {
            this.U = null;
        } else {
            if (this.D) {
                Log.i("MPAndroidChart", "Highlighted: " + dVar.toString());
            }
            Entry a2 = this.E.a(dVar);
            if (a2 == null) {
                this.U = null;
                dVar = null;
                entry = a2;
            } else {
                this.U = new d[]{dVar};
                entry = a2;
            }
        }
        setLastHighlighted(this.U);
        if (z && this.N != null) {
            if (!v()) {
                this.N.a();
            } else {
                this.N.a(entry, dVar);
            }
        }
        invalidate();
    }

    public d a(float f2, float f3) {
        if (this.E != null) {
            return getHighlighter().a(f2, f3);
        }
        Log.e("MPAndroidChart", "Can't select by touch. No data set.");
        return null;
    }

    public void setOnTouchListener(ChartTouchListener chartTouchListener) {
        this.O = chartTouchListener;
    }

    public ChartTouchListener getOnTouchListener() {
        return this.O;
    }

    /* access modifiers changed from: protected */
    public void c(Canvas canvas) {
        if (this.aa != null && A() && v()) {
            for (int i2 = 0; i2 < this.U.length; i2++) {
                d dVar = this.U[i2];
                e a2 = this.E.a(dVar.f());
                Entry a3 = this.E.a(this.U[i2]);
                int d2 = a2.d(a3);
                if (a3 != null && ((float) d2) <= ((float) a2.s()) * this.T.b()) {
                    float[] a4 = a(dVar);
                    if (this.S.d(a4[0], a4[1])) {
                        this.aa.a(a3, dVar);
                        this.aa.a(canvas, a4[0], a4[1]);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public float[] a(d dVar) {
        return new float[]{dVar.i(), dVar.j()};
    }

    public a getAnimator() {
        return this.T;
    }

    public boolean w() {
        return this.a;
    }

    public void setDragDecelerationEnabled(boolean z) {
        this.a = z;
    }

    public float getDragDecelerationFrictionCoef() {
        return this.b;
    }

    public void setDragDecelerationFrictionCoef(float f2) {
        float f3 = 0.0f;
        if (f2 >= 0.0f) {
            f3 = f2;
        }
        if (f3 >= 1.0f) {
            f3 = 0.999f;
        }
        this.b = f3;
    }

    public XAxis getXAxis() {
        return this.J;
    }

    public com.github.mikephil.charting.c.f getDefaultValueFormatter() {
        return this.G;
    }

    public void setOnChartValueSelectedListener(com.github.mikephil.charting.listener.c cVar) {
        this.N = cVar;
    }

    public void setOnChartGestureListener(b bVar) {
        this.d = bVar;
    }

    public b getOnChartGestureListener() {
        return this.d;
    }

    public float getYMax() {
        return this.E.f();
    }

    public float getYMin() {
        return this.E.e();
    }

    public float getXChartMax() {
        return this.J.s;
    }

    public float getXChartMin() {
        return this.J.t;
    }

    public float getXRange() {
        return this.J.u;
    }

    public com.github.mikephil.charting.g.e getCenter() {
        return com.github.mikephil.charting.g.e.a(((float) getWidth()) / 2.0f, ((float) getHeight()) / 2.0f);
    }

    public com.github.mikephil.charting.g.e getCenterOffsets() {
        return this.S.l();
    }

    public void setExtraOffsets(float f2, float f3, float f4, float f5) {
        setExtraLeftOffset(f2);
        setExtraTopOffset(f3);
        setExtraRightOffset(f4);
        setExtraBottomOffset(f5);
    }

    public void setExtraTopOffset(float f2) {
        this.e = com.github.mikephil.charting.g.i.a(f2);
    }

    public float getExtraTopOffset() {
        return this.e;
    }

    public void setExtraRightOffset(float f2) {
        this.f = com.github.mikephil.charting.g.i.a(f2);
    }

    public float getExtraRightOffset() {
        return this.f;
    }

    public void setExtraBottomOffset(float f2) {
        this.g = com.github.mikephil.charting.g.i.a(f2);
    }

    public float getExtraBottomOffset() {
        return this.g;
    }

    public void setExtraLeftOffset(float f2) {
        this.h = com.github.mikephil.charting.g.i.a(f2);
    }

    public float getExtraLeftOffset() {
        return this.h;
    }

    public void setLogEnabled(boolean z) {
        this.D = z;
    }

    public boolean x() {
        return this.D;
    }

    public void setNoDataText(String str) {
        this.c = str;
    }

    public void setNoDataTextColor(int i2) {
        this.I.setColor(i2);
    }

    public void setNoDataTextTypeface(Typeface typeface) {
        this.I.setTypeface(typeface);
    }

    public void setTouchEnabled(boolean z) {
        this.K = z;
    }

    public void setMarker(com.github.mikephil.charting.components.d dVar) {
        this.aa = dVar;
    }

    public com.github.mikephil.charting.components.d getMarker() {
        return this.aa;
    }

    @Deprecated
    public void setMarkerView(com.github.mikephil.charting.components.d dVar) {
        setMarker(dVar);
    }

    @Deprecated
    public com.github.mikephil.charting.components.d getMarkerView() {
        return getMarker();
    }

    public void setDescription(com.github.mikephil.charting.components.c cVar) {
        this.L = cVar;
    }

    public com.github.mikephil.charting.components.c getDescription() {
        return this.L;
    }

    public Legend getLegend() {
        return this.M;
    }

    public i getLegendRenderer() {
        return this.P;
    }

    public RectF getContentRect() {
        return this.S.k();
    }

    public void y() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    public void z() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
    }

    public void setPaint(Paint paint, int i2) {
        switch (i2) {
            case 7:
                this.I = paint;
                return;
            case 11:
                this.H = paint;
                return;
            default:
                return;
        }
    }

    @Deprecated
    public void setDrawMarkerViews(boolean z) {
        setDrawMarkers(z);
    }

    public boolean A() {
        return this.W;
    }

    public void setDrawMarkers(boolean z) {
        this.W = z;
    }

    public T getData() {
        return this.E;
    }

    public j getViewPortHandler() {
        return this.S;
    }

    public g getRenderer() {
        return this.Q;
    }

    public void setRenderer(g gVar) {
        if (gVar != null) {
            this.Q = gVar;
        }
    }

    public f getHighlighter() {
        return this.R;
    }

    public void setHighlighter(com.github.mikephil.charting.d.b bVar) {
        this.R = bVar;
    }

    public com.github.mikephil.charting.g.e getCenterOfView() {
        return getCenter();
    }

    public Bitmap getChartBitmap() {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        Drawable background = getBackground();
        if (background != null) {
            background.draw(canvas);
        } else {
            canvas.drawColor(-1);
        }
        draw(canvas);
        return createBitmap;
    }

    public ArrayList<Runnable> getJobs() {
        return this.ab;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            getChildAt(i6).layout(i2, i3, i4, i5);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int a2 = (int) com.github.mikephil.charting.g.i.a(50.0f);
        setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), resolveSize(a2, i2)), Math.max(getSuggestedMinimumHeight(), resolveSize(a2, i3)));
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        if (this.D) {
            Log.i("MPAndroidChart", "OnSizeChanged()");
        }
        if (i2 > 0 && i3 > 0 && i2 < 10000 && i3 < 10000) {
            this.S.a((float) i2, (float) i3);
            if (this.D) {
                Log.i("MPAndroidChart", "Setting chart dimens, width: " + i2 + ", height: " + i3);
            }
            Iterator it = this.ab.iterator();
            while (it.hasNext()) {
                post((Runnable) it.next());
            }
            this.ab.clear();
        }
        h();
        super.onSizeChanged(i2, i3, i4, i5);
    }

    public void setHardwareAccelerationEnabled(boolean z) {
        if (VERSION.SDK_INT < 11) {
            Log.e("MPAndroidChart", "Cannot enable/disable hardware acceleration for devices below API level 11.");
        } else if (z) {
            setLayerType(2, null);
        } else {
            setLayerType(1, null);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.j) {
            a((View) this);
        }
    }

    private void a(View view) {
        if (view.getBackground() != null) {
            view.getBackground().setCallback(null);
        }
        if (view instanceof ViewGroup) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < ((ViewGroup) view).getChildCount()) {
                    a(((ViewGroup) view).getChildAt(i3));
                    i2 = i3 + 1;
                } else {
                    ((ViewGroup) view).removeAllViews();
                    return;
                }
            }
        }
    }

    public void setUnbindEnabled(boolean z) {
        this.j = z;
    }
}
