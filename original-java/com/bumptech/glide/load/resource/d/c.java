package com.bumptech.glide.load.resource.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.view.Gravity;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.d.g.b;
import java.nio.ByteBuffer;

/* compiled from: GifDrawable */
public class c extends Drawable implements Animatable, b {
    private final a a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private int f;
    private int g;
    private boolean h;
    private Paint i;
    private Rect j;

    /* compiled from: GifDrawable */
    static class a extends ConstantState {
        final e a;
        final g b;

        public a(e eVar, g gVar) {
            this.a = eVar;
            this.b = gVar;
        }

        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        public Drawable newDrawable() {
            return new c(this);
        }

        public int getChangingConfigurations() {
            return 0;
        }
    }

    public c(Context context, GifDecoder gifDecoder, e eVar, h<Bitmap> hVar, int i2, int i3, Bitmap bitmap) {
        this(new a(eVar, new g(com.bumptech.glide.c.a(context), gifDecoder, i2, i3, hVar, bitmap)));
    }

    c(a aVar) {
        this.e = true;
        this.g = -1;
        this.a = (a) com.bumptech.glide.util.h.a(aVar);
    }

    public int a() {
        return this.a.b.d();
    }

    public Bitmap b() {
        return this.a.b.a();
    }

    public void a(h<Bitmap> hVar, Bitmap bitmap) {
        this.a.b.a(hVar, bitmap);
    }

    public ByteBuffer c() {
        return this.a.b.f();
    }

    public int d() {
        return this.a.b.g();
    }

    public int e() {
        return this.a.b.e();
    }

    private void h() {
        this.f = 0;
    }

    public void start() {
        this.c = true;
        h();
        if (this.e) {
            i();
        }
    }

    public void stop() {
        this.c = false;
        j();
    }

    private void i() {
        com.bumptech.glide.util.h.a(!this.d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.a.b.g() == 1) {
            invalidateSelf();
        } else if (!this.b) {
            this.b = true;
            this.a.b.a((b) this);
            invalidateSelf();
        }
    }

    private void j() {
        this.b = false;
        this.a.b.b(this);
    }

    public boolean setVisible(boolean z, boolean z2) {
        com.bumptech.glide.util.h.a(!this.d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.e = z;
        if (!z) {
            j();
        } else if (this.c) {
            i();
        }
        return super.setVisible(z, z2);
    }

    public int getIntrinsicWidth() {
        return this.a.b.b();
    }

    public int getIntrinsicHeight() {
        return this.a.b.c();
    }

    public boolean isRunning() {
        return this.b;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.h = true;
    }

    public void draw(Canvas canvas) {
        if (!this.d) {
            if (this.h) {
                Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), k());
                this.h = false;
            }
            canvas.drawBitmap(this.a.b.i(), null, k(), l());
        }
    }

    public void setAlpha(int i2) {
        l().setAlpha(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        l().setColorFilter(colorFilter);
    }

    private Rect k() {
        if (this.j == null) {
            this.j = new Rect();
        }
        return this.j;
    }

    private Paint l() {
        if (this.i == null) {
            this.i = new Paint(2);
        }
        return this.i;
    }

    public int getOpacity() {
        return -2;
    }

    public void f() {
        if (getCallback() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (e() == d() - 1) {
            this.f++;
        }
        if (this.g != -1 && this.f >= this.g) {
            stop();
        }
    }

    public ConstantState getConstantState() {
        return this.a;
    }

    public void g() {
        this.d = true;
        this.a.b.h();
    }
}
