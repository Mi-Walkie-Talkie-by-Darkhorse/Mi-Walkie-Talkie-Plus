package de.hdodenhof.circleimageview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.RequiresApi;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class CircleImageView extends ImageView {
    private static final ScaleType a = ScaleType.CENTER_CROP;
    private static final Config b = Config.ARGB_8888;
    private final RectF c;
    /* access modifiers changed from: private */
    public final RectF d;
    private final Matrix e;
    private final Paint f;
    private final Paint g;
    private final Paint h;
    private int i;
    private int j;
    private int k;
    private Bitmap l;
    private BitmapShader m;
    private int n;
    private int o;
    private float p;
    private float q;
    private ColorFilter r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;

    @RequiresApi(api = 21)
    private class a extends ViewOutlineProvider {
        private a() {
        }

        public void getOutline(View view, Outline outline) {
            Rect rect = new Rect();
            CircleImageView.this.d.roundOut(rect);
            outline.setRoundRect(rect, ((float) rect.width()) / 2.0f);
        }
    }

    public CircleImageView(Context context) {
        super(context);
        this.c = new RectF();
        this.d = new RectF();
        this.e = new Matrix();
        this.f = new Paint();
        this.g = new Paint();
        this.h = new Paint();
        this.i = ViewCompat.MEASURED_STATE_MASK;
        this.j = 0;
        this.k = 0;
        a();
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = new RectF();
        this.d = new RectF();
        this.e = new Matrix();
        this.f = new Paint();
        this.g = new Paint();
        this.h = new Paint();
        this.i = ViewCompat.MEASURED_STATE_MASK;
        this.j = 0;
        this.k = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleImageView, i2, 0);
        this.j = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CircleImageView_civ_border_width, 0);
        this.i = obtainStyledAttributes.getColor(R.styleable.CircleImageView_civ_border_color, ViewCompat.MEASURED_STATE_MASK);
        this.u = obtainStyledAttributes.getBoolean(R.styleable.CircleImageView_civ_border_overlay, false);
        if (obtainStyledAttributes.hasValue(R.styleable.CircleImageView_civ_circle_background_color)) {
            this.k = obtainStyledAttributes.getColor(R.styleable.CircleImageView_civ_circle_background_color, 0);
        } else if (obtainStyledAttributes.hasValue(R.styleable.CircleImageView_civ_fill_color)) {
            this.k = obtainStyledAttributes.getColor(R.styleable.CircleImageView_civ_fill_color, 0);
        }
        obtainStyledAttributes.recycle();
        a();
    }

    private void a() {
        super.setScaleType(a);
        this.s = true;
        if (VERSION.SDK_INT >= 21) {
            setOutlineProvider(new a());
        }
        if (this.t) {
            d();
            this.t = false;
        }
    }

    public ScaleType getScaleType() {
        return a;
    }

    public void setScaleType(ScaleType scaleType) {
        if (scaleType != a) {
            throw new IllegalArgumentException(String.format("ScaleType %s not supported.", new Object[]{scaleType}));
        }
    }

    public void setAdjustViewBounds(boolean z) {
        if (z) {
            throw new IllegalArgumentException("adjustViewBounds not supported.");
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.v) {
            super.onDraw(canvas);
        } else if (this.l != null) {
            if (this.k != 0) {
                canvas.drawCircle(this.c.centerX(), this.c.centerY(), this.p, this.h);
            }
            canvas.drawCircle(this.c.centerX(), this.c.centerY(), this.p, this.f);
            if (this.j > 0) {
                canvas.drawCircle(this.d.centerX(), this.d.centerY(), this.q, this.g);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        d();
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        super.setPadding(i2, i3, i4, i5);
        d();
    }

    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
        super.setPaddingRelative(i2, i3, i4, i5);
        d();
    }

    public int getBorderColor() {
        return this.i;
    }

    public void setBorderColor(@ColorInt int i2) {
        if (i2 != this.i) {
            this.i = i2;
            this.g.setColor(this.i);
            invalidate();
        }
    }

    @Deprecated
    public void setBorderColorResource(@ColorRes int i2) {
        setBorderColor(getContext().getResources().getColor(i2));
    }

    public int getCircleBackgroundColor() {
        return this.k;
    }

    public void setCircleBackgroundColor(@ColorInt int i2) {
        if (i2 != this.k) {
            this.k = i2;
            this.h.setColor(i2);
            invalidate();
        }
    }

    public void setCircleBackgroundColorResource(@ColorRes int i2) {
        setCircleBackgroundColor(getContext().getResources().getColor(i2));
    }

    @Deprecated
    public int getFillColor() {
        return getCircleBackgroundColor();
    }

    @Deprecated
    public void setFillColor(@ColorInt int i2) {
        setCircleBackgroundColor(i2);
    }

    @Deprecated
    public void setFillColorResource(@ColorRes int i2) {
        setCircleBackgroundColorResource(i2);
    }

    public int getBorderWidth() {
        return this.j;
    }

    public void setBorderWidth(int i2) {
        if (i2 != this.j) {
            this.j = i2;
            d();
        }
    }

    public void setBorderOverlay(boolean z) {
        if (z != this.u) {
            this.u = z;
            d();
        }
    }

    public void setDisableCircularTransformation(boolean z) {
        if (this.v != z) {
            this.v = z;
            c();
        }
    }

    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        c();
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        c();
    }

    public void setImageResource(@DrawableRes int i2) {
        super.setImageResource(i2);
        c();
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        c();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter != this.r) {
            this.r = colorFilter;
            b();
            invalidate();
        }
    }

    public ColorFilter getColorFilter() {
        return this.r;
    }

    private void b() {
        if (this.f != null) {
            this.f.setColorFilter(this.r);
        }
    }

    private Bitmap a(Drawable drawable) {
        Bitmap createBitmap;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            if (drawable instanceof ColorDrawable) {
                createBitmap = Bitmap.createBitmap(2, 2, b);
            } else {
                createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), b);
            }
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
            return null;
        }
    }

    private void c() {
        if (this.v) {
            this.l = null;
        } else {
            this.l = a(getDrawable());
        }
        d();
    }

    private void d() {
        if (!this.s) {
            this.t = true;
        } else if (getWidth() != 0 || getHeight() != 0) {
            if (this.l == null) {
                invalidate();
                return;
            }
            this.m = new BitmapShader(this.l, TileMode.CLAMP, TileMode.CLAMP);
            this.f.setAntiAlias(true);
            this.f.setShader(this.m);
            this.g.setStyle(Style.STROKE);
            this.g.setAntiAlias(true);
            this.g.setColor(this.i);
            this.g.setStrokeWidth((float) this.j);
            this.h.setStyle(Style.FILL);
            this.h.setAntiAlias(true);
            this.h.setColor(this.k);
            this.o = this.l.getHeight();
            this.n = this.l.getWidth();
            this.d.set(e());
            this.q = Math.min((this.d.height() - ((float) this.j)) / 2.0f, (this.d.width() - ((float) this.j)) / 2.0f);
            this.c.set(this.d);
            if (!this.u && this.j > 0) {
                this.c.inset(((float) this.j) - 1.0f, ((float) this.j) - 1.0f);
            }
            this.p = Math.min(this.c.height() / 2.0f, this.c.width() / 2.0f);
            b();
            f();
            invalidate();
        }
    }

    private RectF e() {
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int min = Math.min(width, height);
        float paddingLeft = (((float) (width - min)) / 2.0f) + ((float) getPaddingLeft());
        float paddingTop = (((float) (height - min)) / 2.0f) + ((float) getPaddingTop());
        return new RectF(paddingLeft, paddingTop, ((float) min) + paddingLeft, ((float) min) + paddingTop);
    }

    private void f() {
        float width;
        float f2;
        float f3 = 0.0f;
        this.e.set(null);
        if (((float) this.n) * this.c.height() > this.c.width() * ((float) this.o)) {
            width = this.c.height() / ((float) this.o);
            f2 = (this.c.width() - (((float) this.n) * width)) * 0.5f;
        } else {
            width = this.c.width() / ((float) this.n);
            f2 = 0.0f;
            f3 = (this.c.height() - (((float) this.o) * width)) * 0.5f;
        }
        this.e.setScale(width, width);
        this.e.postTranslate(((float) ((int) (f2 + 0.5f))) + this.c.left, ((float) ((int) (f3 + 0.5f))) + this.c.top);
        this.m.setLocalMatrix(this.e);
    }
}
