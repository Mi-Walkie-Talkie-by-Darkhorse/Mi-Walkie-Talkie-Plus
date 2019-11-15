package com.yalantis.ucrop.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.yalantis.ucrop.c.d;
import com.yalantis.ucrop.c.g;
import com.yalantis.ucrop.model.b;

public class TransformImageView extends ImageView {
    protected final float[] a;
    protected final float[] b;
    protected Matrix c;
    protected int d;
    protected int e;
    protected a f;
    protected boolean g;
    protected boolean h;
    private final float[] i;
    private float[] j;
    private float[] k;
    private int l;
    /* access modifiers changed from: private */
    public String m;
    /* access modifiers changed from: private */
    public String n;
    /* access modifiers changed from: private */
    public b o;

    public interface a {
        void a();

        void a(float f);

        void a(@NonNull Exception exc);

        void b(float f);
    }

    public TransformImageView(Context context) {
        this(context, null);
    }

    public TransformImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TransformImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.a = new float[8];
        this.b = new float[2];
        this.i = new float[9];
        this.c = new Matrix();
        this.g = false;
        this.h = false;
        this.l = 0;
        d();
    }

    public void setTransformImageListener(a aVar) {
        this.f = aVar;
    }

    public void setScaleType(ScaleType scaleType) {
        if (scaleType == ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        } else {
            Log.w("TransformImageView", "Invalid ScaleType. Only ScaleType.MATRIX can be used");
        }
    }

    public void setMaxBitmapSize(int i2) {
        this.l = i2;
    }

    public int getMaxBitmapSize() {
        if (this.l <= 0) {
            this.l = com.yalantis.ucrop.c.a.a(getContext());
        }
        return this.l;
    }

    public void setImageBitmap(Bitmap bitmap) {
        setImageDrawable(new d(bitmap));
    }

    public String getImageInputPath() {
        return this.m;
    }

    public String getImageOutputPath() {
        return this.n;
    }

    public b getExifInfo() {
        return this.o;
    }

    public void setImageUri(@NonNull Uri uri, @Nullable Uri uri2) throws Exception {
        int maxBitmapSize = getMaxBitmapSize();
        com.yalantis.ucrop.c.a.a(getContext(), uri, uri2, maxBitmapSize, maxBitmapSize, new com.yalantis.ucrop.a.b() {
            public void a(@NonNull Bitmap bitmap, @NonNull b bVar, @NonNull String str, @Nullable String str2) {
                TransformImageView.this.m = str;
                TransformImageView.this.n = str2;
                TransformImageView.this.o = bVar;
                TransformImageView.this.g = true;
                TransformImageView.this.setImageBitmap(bitmap);
            }

            public void a(@NonNull Exception exc) {
                Log.e("TransformImageView", "onFailure: setImageUri", exc);
                if (TransformImageView.this.f != null) {
                    TransformImageView.this.f.a(exc);
                }
            }
        });
    }

    public float getCurrentScale() {
        return a(this.c);
    }

    public float a(@NonNull Matrix matrix) {
        return (float) Math.sqrt(Math.pow((double) a(matrix, 0), 2.0d) + Math.pow((double) a(matrix, 3), 2.0d));
    }

    public float getCurrentAngle() {
        return b(this.c);
    }

    public float b(@NonNull Matrix matrix) {
        return (float) (-(Math.atan2((double) a(matrix, 1), (double) a(matrix, 0)) * 57.29577951308232d));
    }

    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
        this.c.set(matrix);
        a();
    }

    @Nullable
    public Bitmap getViewBitmap() {
        if (getDrawable() == null || !(getDrawable() instanceof d)) {
            return null;
        }
        return ((d) getDrawable()).a();
    }

    public void a(float f2, float f3) {
        if (f2 != 0.0f || f3 != 0.0f) {
            this.c.postTranslate(f2, f3);
            setImageMatrix(this.c);
        }
    }

    public void c(float f2, float f3, float f4) {
        if (f2 != 0.0f) {
            this.c.postScale(f2, f2, f3, f4);
            setImageMatrix(this.c);
            if (this.f != null) {
                this.f.b(a(this.c));
            }
        }
    }

    public void d(float f2, float f3, float f4) {
        if (f2 != 0.0f) {
            this.c.postRotate(f2, f3, f4);
            setImageMatrix(this.c);
            if (this.f != null) {
                this.f.a(b(this.c));
            }
        }
    }

    /* access modifiers changed from: protected */
    public void d() {
        setScaleType(ScaleType.MATRIX);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z || (this.g && !this.h)) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            this.d = (getWidth() - getPaddingRight()) - paddingLeft;
            this.e = height - paddingTop;
            b();
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            float intrinsicWidth = (float) drawable.getIntrinsicWidth();
            float intrinsicHeight = (float) drawable.getIntrinsicHeight();
            Log.d("TransformImageView", String.format("Image size: [%d:%d]", new Object[]{Integer.valueOf((int) intrinsicWidth), Integer.valueOf((int) intrinsicHeight)}));
            RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
            this.j = g.a(rectF);
            this.k = g.b(rectF);
            this.h = true;
            if (this.f != null) {
                this.f.a();
            }
        }
    }

    /* access modifiers changed from: protected */
    public float a(@NonNull Matrix matrix, @IntRange(from = 0, to = 9) int i2) {
        matrix.getValues(this.i);
        return this.i[i2];
    }

    private void a() {
        this.c.mapPoints(this.a, this.j);
        this.c.mapPoints(this.b, this.k);
    }
}
