package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import com.yalantis.ucrop.R;
import com.yalantis.ucrop.a.c;
import com.yalantis.ucrop.c.g;
import java.lang.ref.WeakReference;
import java.util.Arrays;

public class CropImageView extends TransformImageView {
    /* access modifiers changed from: private */
    public final RectF i;
    private final Matrix j;
    private float k;
    private float l;
    private c m;
    private Runnable n;
    private Runnable o;
    private float p;
    private float q;
    private int r;
    private int s;
    private long t;

    private static class a implements Runnable {
        private final WeakReference<CropImageView> a;
        private final long b;
        private final long c = System.currentTimeMillis();
        private final float d;
        private final float e;
        private final float f;
        private final float g;
        private final float h;
        private final float i;
        private final boolean j;

        public a(CropImageView cropImageView, long j2, float f2, float f3, float f4, float f5, float f6, float f7, boolean z) {
            this.a = new WeakReference<>(cropImageView);
            this.b = j2;
            this.d = f2;
            this.e = f3;
            this.f = f4;
            this.g = f5;
            this.h = f6;
            this.i = f7;
            this.j = z;
        }

        public void run() {
            CropImageView cropImageView = (CropImageView) this.a.get();
            if (cropImageView != null) {
                float min = (float) Math.min(this.b, System.currentTimeMillis() - this.c);
                float a2 = com.yalantis.ucrop.c.b.a(min, 0.0f, this.f, (float) this.b);
                float a3 = com.yalantis.ucrop.c.b.a(min, 0.0f, this.g, (float) this.b);
                float b2 = com.yalantis.ucrop.c.b.b(min, 0.0f, this.i, (float) this.b);
                if (min < ((float) this.b)) {
                    cropImageView.a(a2 - (cropImageView.b[0] - this.d), a3 - (cropImageView.b[1] - this.e));
                    if (!this.j) {
                        cropImageView.b(this.h + b2, cropImageView.i.centerX(), cropImageView.i.centerY());
                    }
                    if (!cropImageView.c()) {
                        cropImageView.post(this);
                    }
                }
            }
        }
    }

    private static class b implements Runnable {
        private final WeakReference<CropImageView> a;
        private final long b;
        private final long c = System.currentTimeMillis();
        private final float d;
        private final float e;
        private final float f;
        private final float g;

        public b(CropImageView cropImageView, long j, float f2, float f3, float f4, float f5) {
            this.a = new WeakReference<>(cropImageView);
            this.b = j;
            this.d = f2;
            this.e = f3;
            this.f = f4;
            this.g = f5;
        }

        public void run() {
            CropImageView cropImageView = (CropImageView) this.a.get();
            if (cropImageView != null) {
                float min = (float) Math.min(this.b, System.currentTimeMillis() - this.c);
                float b2 = com.yalantis.ucrop.c.b.b(min, 0.0f, this.e, (float) this.b);
                if (min < ((float) this.b)) {
                    cropImageView.b(this.d + b2, this.f, this.g);
                    cropImageView.post(this);
                    return;
                }
                cropImageView.setImageToWrapCropBounds();
            }
        }
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.i = new RectF();
        this.j = new Matrix();
        this.l = 10.0f;
        this.o = null;
        this.r = 0;
        this.s = 0;
        this.t = 500;
    }

    public void a(@NonNull CompressFormat compressFormat, int i2, @Nullable com.yalantis.ucrop.a.a aVar) {
        a();
        setImageToWrapCropBounds(false);
        new com.yalantis.ucrop.b.a(getContext(), getViewBitmap(), new com.yalantis.ucrop.model.c(this.i, g.b(this.a), getCurrentScale(), getCurrentAngle()), new com.yalantis.ucrop.model.a(this.r, this.s, compressFormat, i2, getImageInputPath(), getImageOutputPath(), getExifInfo()), aVar).execute(new Void[0]);
    }

    public float getMaxScale() {
        return this.p;
    }

    public float getMinScale() {
        return this.q;
    }

    public float getTargetAspectRatio() {
        return this.k;
    }

    public void setCropRect(RectF rectF) {
        this.k = rectF.width() / rectF.height();
        this.i.set(rectF.left - ((float) getPaddingLeft()), rectF.top - ((float) getPaddingTop()), rectF.right - ((float) getPaddingRight()), rectF.bottom - ((float) getPaddingBottom()));
        f();
        setImageToWrapCropBounds();
    }

    public void setTargetAspectRatio(float f) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            this.k = f;
            return;
        }
        if (f == 0.0f) {
            this.k = ((float) drawable.getIntrinsicWidth()) / ((float) drawable.getIntrinsicHeight());
        } else {
            this.k = f;
        }
        if (this.m != null) {
            this.m.a(this.k);
        }
    }

    @Nullable
    public c getCropBoundsChangeListener() {
        return this.m;
    }

    public void setCropBoundsChangeListener(@Nullable c cVar) {
        this.m = cVar;
    }

    public void setMaxResultImageSizeX(@IntRange(from = 10) int i2) {
        this.r = i2;
    }

    public void setMaxResultImageSizeY(@IntRange(from = 10) int i2) {
        this.s = i2;
    }

    public void setImageToWrapCropBoundsAnimDuration(@IntRange(from = 100) long j2) {
        if (j2 > 0) {
            this.t = j2;
            return;
        }
        throw new IllegalArgumentException("Animation duration cannot be negative value.");
    }

    public void setMaxScaleMultiplier(float f) {
        this.l = f;
    }

    public void a(float f) {
        a(f, this.i.centerX(), this.i.centerY());
    }

    public void a(float f, float f2, float f3) {
        if (f >= getMinScale()) {
            c(f / getCurrentScale(), f2, f3);
        }
    }

    public void b(float f) {
        b(f, this.i.centerX(), this.i.centerY());
    }

    public void b(float f, float f2, float f3) {
        if (f <= getMaxScale()) {
            c(f / getCurrentScale(), f2, f3);
        }
    }

    public void c(float f, float f2, float f3) {
        if (f > 1.0f && getCurrentScale() * f <= getMaxScale()) {
            super.c(f, f2, f3);
        } else if (f < 1.0f && getCurrentScale() * f >= getMinScale()) {
            super.c(f, f2, f3);
        }
    }

    public void c(float f) {
        d(f, this.i.centerX(), this.i.centerY());
    }

    public void a() {
        removeCallbacks(this.n);
        removeCallbacks(this.o);
    }

    public void setImageToWrapCropBounds() {
        setImageToWrapCropBounds(true);
    }

    public void setImageToWrapCropBounds(boolean z) {
        if (this.h && !c()) {
            float f = this.b[0];
            float f2 = this.b[1];
            float currentScale = getCurrentScale();
            float centerX = this.i.centerX() - f;
            float centerY = this.i.centerY() - f2;
            float f3 = 0.0f;
            this.j.reset();
            this.j.setTranslate(centerX, centerY);
            float[] copyOf = Arrays.copyOf(this.a, this.a.length);
            this.j.mapPoints(copyOf);
            boolean a2 = a(copyOf);
            if (a2) {
                float[] e = e();
                centerX = -(e[0] + e[2]);
                centerY = -(e[3] + e[1]);
            } else {
                RectF rectF = new RectF(this.i);
                this.j.reset();
                this.j.setRotate(getCurrentAngle());
                this.j.mapRect(rectF);
                float[] a3 = g.a(this.a);
                f3 = (Math.max(rectF.width() / a3[0], rectF.height() / a3[1]) * currentScale) - currentScale;
            }
            if (z) {
                a aVar = new a(this, this.t, f, f2, centerX, centerY, currentScale, f3, a2);
                this.n = aVar;
                post(aVar);
                return;
            }
            a(centerX, centerY);
            if (!a2) {
                b(currentScale + f3, this.i.centerX(), this.i.centerY());
            }
        }
    }

    private float[] e() {
        float f;
        float f2;
        float f3 = 0.0f;
        this.j.reset();
        this.j.setRotate(-getCurrentAngle());
        float[] copyOf = Arrays.copyOf(this.a, this.a.length);
        float[] a2 = g.a(this.i);
        this.j.mapPoints(copyOf);
        this.j.mapPoints(a2);
        RectF b2 = g.b(copyOf);
        RectF b3 = g.b(a2);
        float f4 = b2.left - b3.left;
        float f5 = b2.top - b3.top;
        float f6 = b2.right - b3.right;
        float f7 = b2.bottom - b3.bottom;
        float[] fArr = new float[4];
        if (f4 <= 0.0f) {
            f4 = 0.0f;
        }
        fArr[0] = f4;
        if (f5 > 0.0f) {
            f = f5;
        } else {
            f = 0.0f;
        }
        fArr[1] = f;
        if (f6 < 0.0f) {
            f2 = f6;
        } else {
            f2 = 0.0f;
        }
        fArr[2] = f2;
        if (f7 < 0.0f) {
            f3 = f7;
        }
        fArr[3] = f3;
        this.j.reset();
        this.j.setRotate(getCurrentAngle());
        this.j.mapPoints(fArr);
        return fArr;
    }

    /* access modifiers changed from: protected */
    public void b() {
        super.b();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            float intrinsicWidth = (float) drawable.getIntrinsicWidth();
            float intrinsicHeight = (float) drawable.getIntrinsicHeight();
            if (this.k == 0.0f) {
                this.k = intrinsicWidth / intrinsicHeight;
            }
            int i2 = (int) (((float) this.d) / this.k);
            if (i2 > this.e) {
                int i3 = (int) (((float) this.e) * this.k);
                int i4 = (this.d - i3) / 2;
                this.i.set((float) i4, 0.0f, (float) (i3 + i4), (float) this.e);
            } else {
                int i5 = (this.e - i2) / 2;
                this.i.set(0.0f, (float) i5, (float) this.d, (float) (i2 + i5));
            }
            b(intrinsicWidth, intrinsicHeight);
            c(intrinsicWidth, intrinsicHeight);
            if (this.m != null) {
                this.m.a(this.k);
            }
            if (this.f != null) {
                this.f.b(getCurrentScale());
                this.f.a(getCurrentAngle());
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean c() {
        return a(this.a);
    }

    /* access modifiers changed from: protected */
    public boolean a(float[] fArr) {
        this.j.reset();
        this.j.setRotate(-getCurrentAngle());
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        this.j.mapPoints(copyOf);
        float[] a2 = g.a(this.i);
        this.j.mapPoints(a2);
        return g.b(copyOf).contains(g.b(a2));
    }

    /* access modifiers changed from: protected */
    public void a(float f, float f2, float f3, long j2) {
        if (f > getMaxScale()) {
            f = getMaxScale();
        }
        float currentScale = getCurrentScale();
        b bVar = new b(this, j2, currentScale, f - currentScale, f2, f3);
        this.o = bVar;
        post(bVar);
    }

    private void f() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            b((float) drawable.getIntrinsicWidth(), (float) drawable.getIntrinsicHeight());
        }
    }

    private void b(float f, float f2) {
        this.q = Math.min(Math.min(this.i.width() / f, this.i.width() / f2), Math.min(this.i.height() / f2, this.i.height() / f));
        this.p = this.q * this.l;
    }

    private void c(float f, float f2) {
        float width = this.i.width();
        float height = this.i.height();
        float max = Math.max(this.i.width() / f, this.i.height() / f2);
        float f3 = ((width - (f * max)) / 2.0f) + this.i.left;
        float f4 = ((height - (f2 * max)) / 2.0f) + this.i.top;
        this.c.reset();
        this.c.postScale(max, max);
        this.c.postTranslate(f3, f4);
        setImageMatrix(this.c);
    }

    /* access modifiers changed from: protected */
    public void a(@NonNull TypedArray typedArray) {
        float abs = Math.abs(typedArray.getFloat(R.styleable.ucrop_UCropView_ucrop_aspect_ratio_x, 0.0f));
        float abs2 = Math.abs(typedArray.getFloat(R.styleable.ucrop_UCropView_ucrop_aspect_ratio_y, 0.0f));
        if (abs == 0.0f || abs2 == 0.0f) {
            this.k = 0.0f;
        } else {
            this.k = abs / abs2;
        }
    }
}
