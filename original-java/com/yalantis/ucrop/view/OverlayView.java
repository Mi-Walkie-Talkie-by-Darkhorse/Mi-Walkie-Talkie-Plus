package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.yalantis.ucrop.R;
import com.yalantis.ucrop.a.d;
import com.yalantis.ucrop.c.g;

public class OverlayView extends View {
    private d A;
    private boolean B;
    protected int a;
    protected int b;
    protected float[] c;
    protected float[] d;
    private final RectF e;
    private final RectF f;
    private int g;
    private int h;
    private float i;
    private float[] j;
    private boolean k;
    private boolean l;
    private boolean m;
    private int n;
    private Path o;
    private Paint p;
    private Paint q;
    private Paint r;
    private Paint s;
    private boolean t;
    private float u;
    private float v;
    private int w;
    private int x;
    private int y;
    private int z;

    public OverlayView(Context context) {
        this(context, null);
    }

    public OverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverlayView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.e = new RectF();
        this.f = new RectF();
        this.j = null;
        this.o = new Path();
        this.p = new Paint(1);
        this.q = new Paint(1);
        this.r = new Paint(1);
        this.s = new Paint(1);
        this.t = false;
        this.u = -1.0f;
        this.v = -1.0f;
        this.w = -1;
        this.x = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_corner_touch_threshold);
        this.y = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_min_size);
        this.z = getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_rect_corner_touch_area_line_length);
        a();
    }

    public d getOverlayViewChangeListener() {
        return this.A;
    }

    public void setOverlayViewChangeListener(d dVar) {
        this.A = dVar;
    }

    @NonNull
    public RectF getCropViewRect() {
        return this.e;
    }

    public void setFreestyleCropEnabled(boolean z2) {
        this.t = z2;
    }

    public void setCircleDimmedLayer(boolean z2) {
        this.m = z2;
    }

    public void setCropGridRowCount(@IntRange(from = 0) int i2) {
        this.g = i2;
        this.j = null;
    }

    public void setCropGridColumnCount(@IntRange(from = 0) int i2) {
        this.h = i2;
        this.j = null;
    }

    public void setShowCropFrame(boolean z2) {
        this.k = z2;
    }

    public void setShowCropGrid(boolean z2) {
        this.l = z2;
    }

    public void setDimmedColor(@ColorInt int i2) {
        this.n = i2;
    }

    public void setCropFrameStrokeWidth(@IntRange(from = 0) int i2) {
        this.r.setStrokeWidth((float) i2);
    }

    public void setCropGridStrokeWidth(@IntRange(from = 0) int i2) {
        this.q.setStrokeWidth((float) i2);
    }

    public void setCropFrameColor(@ColorInt int i2) {
        this.r.setColor(i2);
    }

    public void setCropGridColor(@ColorInt int i2) {
        this.q.setColor(i2);
    }

    public void setTargetAspectRatio(float f2) {
        this.i = f2;
        if (this.a > 0) {
            setupCropBounds();
            postInvalidate();
            return;
        }
        this.B = true;
    }

    public void setupCropBounds() {
        int i2 = (int) (((float) this.a) / this.i);
        if (i2 > this.b) {
            int i3 = (int) (((float) this.b) * this.i);
            int i4 = (this.a - i3) / 2;
            this.e.set((float) (getPaddingLeft() + i4), (float) getPaddingTop(), (float) (i3 + getPaddingLeft() + i4), (float) (getPaddingTop() + this.b));
        } else {
            int i5 = (this.b - i2) / 2;
            this.e.set((float) getPaddingLeft(), (float) (getPaddingTop() + i5), (float) (getPaddingLeft() + this.a), (float) (i2 + getPaddingTop() + i5));
        }
        if (this.A != null) {
            this.A.a(this.e);
        }
        b();
    }

    private void b() {
        this.c = g.a(this.e);
        this.d = g.b(this.e);
        this.j = null;
        this.o.reset();
        this.o.addCircle(this.e.centerX(), this.e.centerY(), Math.min(this.e.width(), this.e.height()) / 2.0f, Direction.CW);
    }

    /* access modifiers changed from: protected */
    public void a() {
        if (VERSION.SDK_INT < 18 && VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (z2) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            this.a = (getWidth() - getPaddingRight()) - paddingLeft;
            this.b = height - paddingTop;
            if (this.B) {
                this.B = false;
                setTargetAspectRatio(this.i);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
        b(canvas);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.e.isEmpty() || !this.t) {
            return false;
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        if ((motionEvent.getAction() & 255) == 0) {
            if (this.u < 0.0f) {
                this.u = x2;
                this.v = y2;
            }
            this.w = b(x2, y2);
            if (this.w == -1) {
                return false;
            }
            return true;
        } else if ((motionEvent.getAction() & 255) == 2 && motionEvent.getPointerCount() == 1 && this.w != -1) {
            float min = Math.min(Math.max(x2, (float) getPaddingLeft()), (float) (getWidth() - getPaddingRight()));
            float min2 = Math.min(Math.max(y2, (float) getPaddingTop()), (float) (getHeight() - getPaddingBottom()));
            a(min, min2);
            this.u = min;
            this.v = min2;
            return true;
        } else {
            if ((motionEvent.getAction() & 255) == 1) {
                this.u = -1.0f;
                this.v = -1.0f;
                this.w = -1;
                if (this.A != null) {
                    this.A.a(this.e);
                }
            }
            return false;
        }
    }

    private void a(float f2, float f3) {
        boolean z2;
        float f4;
        float f5;
        float f6;
        float f7;
        boolean z3 = true;
        this.f.set(this.e);
        switch (this.w) {
            case 0:
                this.f.set(f2, f3, this.e.right, this.e.bottom);
                break;
            case 1:
                this.f.set(this.e.left, f3, f2, this.e.bottom);
                break;
            case 2:
                this.f.set(this.e.left, this.e.top, f2, f3);
                break;
            case 3:
                this.f.set(f2, this.e.top, this.e.right, f3);
                break;
            case 4:
                this.f.offset(f2 - this.u, f3 - this.v);
                if (this.f.left > ((float) getLeft()) && this.f.top > ((float) getTop()) && this.f.right < ((float) getRight()) && this.f.bottom < ((float) getBottom())) {
                    this.e.set(this.f);
                    b();
                    postInvalidate();
                    return;
                }
                return;
        }
        if (this.f.height() >= ((float) this.y)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.f.width() < ((float) this.y)) {
            z3 = false;
        }
        RectF rectF = this.e;
        if (z3) {
            f4 = this.f.left;
        } else {
            f4 = this.e.left;
        }
        if (z2) {
            f5 = this.f.top;
        } else {
            f5 = this.e.top;
        }
        if (z3) {
            f6 = this.f.right;
        } else {
            f6 = this.e.right;
        }
        if (z2) {
            f7 = this.f.bottom;
        } else {
            f7 = this.e.bottom;
        }
        rectF.set(f4, f5, f6, f7);
        if (z2 || z3) {
            b();
            postInvalidate();
        }
    }

    private int b(float f2, float f3) {
        int i2;
        int i3 = -1;
        double d2 = (double) this.x;
        int i4 = 0;
        while (i4 < 8) {
            double sqrt = Math.sqrt(Math.pow((double) (f2 - this.c[i4]), 2.0d) + Math.pow((double) (f3 - this.c[i4 + 1]), 2.0d));
            if (sqrt < d2) {
                i2 = i4 / 2;
            } else {
                sqrt = d2;
                i2 = i3;
            }
            i4 += 2;
            i3 = i2;
            d2 = sqrt;
        }
        if (i3 >= 0 || !this.e.contains(f2, f3)) {
            return i3;
        }
        return 4;
    }

    /* access modifiers changed from: protected */
    public void a(@NonNull Canvas canvas) {
        canvas.save();
        if (this.m) {
            canvas.clipPath(this.o, Op.DIFFERENCE);
        } else {
            canvas.clipRect(this.e, Op.DIFFERENCE);
        }
        canvas.drawColor(this.n);
        canvas.restore();
        if (this.m) {
            canvas.drawCircle(this.e.centerX(), this.e.centerY(), Math.min(this.e.width(), this.e.height()) / 2.0f, this.p);
        }
    }

    /* access modifiers changed from: protected */
    public void b(@NonNull Canvas canvas) {
        if (this.l) {
            if (this.j == null && !this.e.isEmpty()) {
                this.j = new float[((this.g * 4) + (this.h * 4))];
                int i2 = 0;
                for (int i3 = 0; i3 < this.g; i3++) {
                    int i4 = i2 + 1;
                    this.j[i2] = this.e.left;
                    int i5 = i4 + 1;
                    this.j[i4] = (this.e.height() * ((((float) i3) + 1.0f) / ((float) (this.g + 1)))) + this.e.top;
                    int i6 = i5 + 1;
                    this.j[i5] = this.e.right;
                    i2 = i6 + 1;
                    this.j[i6] = (this.e.height() * ((((float) i3) + 1.0f) / ((float) (this.g + 1)))) + this.e.top;
                }
                for (int i7 = 0; i7 < this.h; i7++) {
                    int i8 = i2 + 1;
                    this.j[i2] = (this.e.width() * ((((float) i7) + 1.0f) / ((float) (this.h + 1)))) + this.e.left;
                    int i9 = i8 + 1;
                    this.j[i8] = this.e.top;
                    int i10 = i9 + 1;
                    this.j[i9] = (this.e.width() * ((((float) i7) + 1.0f) / ((float) (this.h + 1)))) + this.e.left;
                    i2 = i10 + 1;
                    this.j[i10] = this.e.bottom;
                }
            }
            if (this.j != null) {
                canvas.drawLines(this.j, this.q);
            }
        }
        if (this.k) {
            canvas.drawRect(this.e, this.r);
        }
        if (this.t) {
            canvas.save();
            this.f.set(this.e);
            this.f.inset((float) this.z, (float) (-this.z));
            canvas.clipRect(this.f, Op.DIFFERENCE);
            this.f.set(this.e);
            this.f.inset((float) (-this.z), (float) this.z);
            canvas.clipRect(this.f, Op.DIFFERENCE);
            canvas.drawRect(this.e, this.s);
            canvas.restore();
        }
    }

    /* access modifiers changed from: protected */
    public void a(@NonNull TypedArray typedArray) {
        this.m = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_circle_dimmed_layer, false);
        this.n = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_dimmed_color, getResources().getColor(R.color.ucrop_color_default_dimmed));
        this.p.setColor(this.n);
        this.p.setStyle(Style.STROKE);
        this.p.setStrokeWidth(1.0f);
        b(typedArray);
        this.k = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_frame, true);
        c(typedArray);
        this.l = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_grid, true);
    }

    private void b(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.ucrop_UCropView_ucrop_frame_stroke_size, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width));
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_frame_color, getResources().getColor(R.color.ucrop_color_default_crop_frame));
        this.r.setStrokeWidth((float) dimensionPixelSize);
        this.r.setColor(color);
        this.r.setStyle(Style.STROKE);
        this.s.setStrokeWidth((float) (dimensionPixelSize * 3));
        this.s.setColor(color);
        this.s.setStyle(Style.STROKE);
    }

    private void c(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.ucrop_UCropView_ucrop_grid_stroke_size, getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width));
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_grid_color, getResources().getColor(R.color.ucrop_color_default_crop_grid));
        this.q.setStrokeWidth((float) dimensionPixelSize);
        this.q.setColor(color);
        this.g = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_row_count, 2);
        this.h = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_column_count, 2);
    }
}
