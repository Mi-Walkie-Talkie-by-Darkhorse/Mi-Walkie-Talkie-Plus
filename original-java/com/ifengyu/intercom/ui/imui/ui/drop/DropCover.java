package com.ifengyu.intercom.ui.imui.ui.drop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.CycleInterpolator;
import android.view.animation.TranslateAnimation;
import com.ifengyu.library.util.l;
import java.util.ArrayList;
import java.util.List;

public class DropCover extends View {
    private static final int d = l.a(15.0f);
    private final float a = 0.8f;
    private final float b = 0.4f;
    private final int c = l.a(70.0f);
    private View e;
    private Path f = new Path();
    private int g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l = 1.0f;
    private boolean m = true;
    private boolean n = false;
    private boolean o = false;
    private boolean p = true;
    private long q;
    private String r;
    private Bitmap[] s;
    private boolean t;
    private int u;
    private int v;
    private int w;
    private int x;
    private List<a> y;

    public interface a {
        void a(Object obj, boolean z);
    }

    public DropCover(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a.a().b();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.m) {
            a(canvas);
        }
        if (this.t) {
            c(canvas);
        }
    }

    private void a(Canvas canvas) {
        if (this.m) {
            Paint h2 = a.a().h();
            if (!this.n && !this.o) {
                canvas.drawCircle(this.j, this.k, ((float) this.g) * this.l, h2);
            }
            if (!(this.h == 0.0f || this.i == 0.0f)) {
                canvas.drawCircle(this.h, this.i, (float) this.g, h2);
                if (!this.n && !this.o) {
                    b(canvas);
                }
            }
            if (!TextUtils.isEmpty(this.r)) {
                float j2 = a.a().j();
                TextPaint i2 = a.a().i();
                if (this.h == 0.0f || this.i == 0.0f) {
                    canvas.drawText(this.r, this.j, j2 + this.k, i2);
                } else {
                    canvas.drawText(this.r, this.h, j2 + this.i, i2);
                }
            }
        }
    }

    private void b(Canvas canvas) {
        this.f.reset();
        float a2 = (float) a(this.j, this.k, this.h, this.i);
        float f2 = (this.i - this.k) / a2;
        float f3 = (this.j - this.h) / a2;
        float f4 = this.j - ((((float) this.g) * f2) * this.l);
        float f5 = this.k - ((((float) this.g) * f3) * this.l);
        float f6 = this.j + (((float) this.g) * f2 * this.l);
        float f7 = this.k + (((float) this.g) * f3 * this.l);
        float f8 = (this.j + this.h) / 2.0f;
        float f9 = (this.k + this.i) / 2.0f;
        float f10 = this.h + (((float) this.g) * f2);
        float f11 = this.i + (((float) this.g) * f3);
        float f12 = this.h - (f2 * ((float) this.g));
        float f13 = this.i - (f3 * ((float) this.g));
        this.f.moveTo(f4, f5);
        this.f.lineTo(f6, f7);
        this.f.quadTo(f8, f9, f10, f11);
        this.f.lineTo(f12, f13);
        this.f.quadTo(f8, f9, f4, f5);
        canvas.drawPath(this.f, a.a().h());
    }

    public void a(View view, String str) {
        this.m = true;
        this.n = false;
        this.o = false;
        this.p = true;
        this.e = view;
        int[] iArr = new int[2];
        this.e.getLocationOnScreen(iArr);
        this.g = a.b;
        this.j = (float) (iArr[0] + (this.e.getWidth() / 2));
        this.k = (float) ((iArr[1] - a.a().e()) + (this.e.getHeight() / 2));
        this.h = this.j;
        this.i = this.k;
        this.r = str;
        this.q = System.currentTimeMillis();
        this.e.setVisibility(4);
        setVisibility(0);
        invalidate();
    }

    public void a(float f2, float f3) {
        float e2 = f3 - ((float) a.a().e());
        this.h = f2;
        this.i = e2;
        a((float) a(f2, e2, this.j, this.k));
        invalidate();
    }

    private void a(float f2) {
        boolean z = f2 > ((float) this.c);
        this.o = z;
        if (z) {
            this.n = true;
        }
        this.l = (((1.0f * Math.max(((float) this.c) - f2, 0.0f)) * 0.4f) / ((float) this.c)) + 0.4f;
    }

    public void a() {
        boolean z = this.p && System.currentTimeMillis() - this.q > 10;
        if (this.o || z) {
            c();
            this.m = false;
            this.t = true;
        } else {
            if (this.n) {
                a(false);
            } else {
                b();
            }
            this.h = 0.0f;
            this.i = 0.0f;
            this.l = 1.0f;
        }
        invalidate();
    }

    public double a(float f2, float f3, float f4, float f5) {
        double sqrt = Math.sqrt((double) (((f4 - f2) * (f4 - f2)) + ((f5 - f3) * (f5 - f3))));
        if (sqrt > ((double) d)) {
            this.p = false;
        }
        return sqrt;
    }

    private void c() {
        if (this.s == null) {
            int[] k2 = a.a().k();
            this.u = k2.length;
            this.s = new Bitmap[this.u];
            for (int i2 = 0; i2 < this.u; i2++) {
                this.s[i2] = BitmapFactory.decodeResource(getResources(), k2[i2]);
            }
            int width = this.s[0].getWidth();
            this.w = width;
            this.x = width;
        }
    }

    private void c(Canvas canvas) {
        if (this.t) {
            if (this.v < this.u) {
                canvas.drawBitmap(this.s[this.v], this.h - ((float) (this.w / 2)), this.i - ((float) (this.x / 2)), null);
                this.v++;
                postInvalidateDelayed(50);
                return;
            }
            this.t = false;
            this.v = 0;
            this.h = 0.0f;
            this.i = 0.0f;
            a(true);
        }
    }

    private void d() {
        if (this.s != null && this.s.length != 0) {
            for (int i2 = 0; i2 < this.s.length; i2++) {
                if (this.s[i2] != null && !this.s[i2].isRecycled()) {
                    this.s[i2].recycle();
                    this.s[i2] = null;
                }
            }
            this.s = null;
        }
    }

    public void b() {
        TranslateAnimation translateAnimation = new TranslateAnimation((this.j - this.h) / 10.0f, 0.0f, (this.k - this.i) / 10.0f, 0.0f);
        translateAnimation.setInterpolator(new CycleInterpolator(1.0f));
        translateAnimation.setDuration(150);
        startAnimation(translateAnimation);
        translateAnimation.setAnimationListener(new AnimationListener() {
            public void onAnimationStart(Animation animation) {
            }

            public void onAnimationEnd(Animation animation) {
                DropCover.this.a(false);
            }

            public void onAnimationRepeat(Animation animation) {
            }
        });
    }

    public void a(a aVar) {
        if (aVar != null) {
            if (this.y == null) {
                this.y = new ArrayList(1);
            }
            this.y.add(aVar);
        }
    }

    /* access modifiers changed from: private */
    public void a(boolean z) {
        this.e.setVisibility(z ? 4 : 0);
        setVisibility(4);
        d();
        if (this.y != null) {
            for (a a2 : this.y) {
                a2.a(a.a().g(), z);
            }
        }
        a.a().a(true);
    }
}
