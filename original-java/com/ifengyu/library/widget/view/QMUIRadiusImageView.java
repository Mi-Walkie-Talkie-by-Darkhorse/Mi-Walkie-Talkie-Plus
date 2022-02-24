package com.ifengyu.library.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.appcompat.widget.AppCompatImageView;
import com.ifengyu.library.R$attr;
import com.ifengyu.library.R$styleable;

/* loaded from: classes2.dex */
public class QMUIRadiusImageView extends AppCompatImageView {
    private static final Bitmap.Config v = Bitmap.Config.ARGB_8888;

    /* renamed from: a  reason: collision with root package name */
    private boolean f7212a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7213b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7214c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;
    private int j;
    private Paint k;
    private Paint l;
    private ColorFilter m;
    private ColorFilter n;
    private BitmapShader o;
    private boolean p;
    private RectF q;
    private Bitmap r;
    private Matrix s;
    private int t;
    private int u;

    public QMUIRadiusImageView(Context context) {
        this(context, null, R$attr.QMUIRadiusImageViewStyle);
    }

    private void e() {
        Bitmap bitmap;
        this.s.reset();
        this.p = false;
        if (this.o != null && (bitmap = this.r) != null) {
            float width = bitmap.getWidth();
            float height = this.r.getHeight();
            float max = Math.max(this.t / width, this.u / height);
            this.s.setScale(max, max);
            this.s.postTranslate((-((width * max) - this.t)) / 2.0f, (-((max * height) - this.u)) / 2.0f);
            this.o.setLocalMatrix(this.s);
            this.k.setShader(this.o);
        }
    }

    private Bitmap getBitmap() {
        Bitmap bitmap;
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap2 = ((BitmapDrawable) drawable).getBitmap();
            float width = bitmap2.getWidth();
            float height = bitmap2.getHeight();
            if (width == 0.0f || height == 0.0f) {
                return null;
            }
            float minimumWidth = getMinimumWidth() / width;
            float minimumHeight = getMinimumHeight() / height;
            if (minimumWidth <= 1.0f && minimumHeight <= 1.0f) {
                return bitmap2;
            }
            float max = Math.max(minimumWidth, minimumHeight);
            Matrix matrix = new Matrix();
            matrix.postScale(max, max);
            return Bitmap.createBitmap(bitmap2, 0, 0, (int) width, (int) height, matrix, false);
        }
        try {
            if (drawable instanceof ColorDrawable) {
                bitmap = Bitmap.createBitmap(2, 2, v);
            } else {
                bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), v);
            }
            Canvas canvas = new Canvas(bitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getBorderColor() {
        return this.e;
    }

    public int getBorderWidth() {
        return this.d;
    }

    public int getCornerRadius() {
        return this.j;
    }

    public int getSelectedBorderColor() {
        return this.g;
    }

    public int getSelectedBorderWidth() {
        return this.f;
    }

    public int getSelectedMaskColor() {
        return this.h;
    }

    @Override // android.view.View
    public boolean isSelected() {
        return this.f7212a;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        if (width > 0 && height > 0 && this.r != null && this.o != null) {
            if (!(this.t == width && this.u == height && !this.p)) {
                this.t = width;
                this.u = height;
                e();
            }
            this.l.setColor(this.f7212a ? this.g : this.e);
            this.k.setColorFilter(this.f7212a ? this.n : this.m);
            int i = this.f7212a ? this.f : this.d;
            float f = i;
            this.l.setStrokeWidth(f);
            float f2 = (f * 1.0f) / 2.0f;
            if (this.f7214c) {
                float width2 = getWidth() / 2;
                canvas.drawCircle(width2, width2, width2, this.k);
                if (i > 0) {
                    canvas.drawCircle(width2, width2, width2 - f2, this.l);
                    return;
                }
                return;
            }
            RectF rectF = this.q;
            rectF.left = f2;
            rectF.top = f2;
            rectF.right = width - f2;
            rectF.bottom = height - f2;
            if (this.f7213b) {
                canvas.drawOval(rectF, this.k);
                if (i > 0) {
                    canvas.drawOval(this.q, this.l);
                    return;
                }
                return;
            }
            int i2 = this.j;
            canvas.drawRoundRect(rectF, i2, i2, this.k);
            if (i > 0) {
                RectF rectF2 = this.q;
                int i3 = this.j;
                canvas.drawRoundRect(rectF2, i3, i3, this.l);
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (this.f7214c) {
            int min = Math.min(measuredWidth, measuredHeight);
            setMeasuredDimension(min, min);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.r != null) {
            boolean z = false;
            boolean z2 = mode == Integer.MIN_VALUE || mode == 0;
            if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
                z = true;
            }
            float width = this.r.getWidth();
            float height = this.r.getHeight();
            float f = measuredWidth / width;
            float f2 = measuredHeight / height;
            if (z2 && z) {
                int i3 = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
                if (i3 >= 0 && f2 >= 1.0f) {
                    setMeasuredDimension((int) width, (int) height);
                } else if (i3 >= 0) {
                    setMeasuredDimension((int) (height * f2), measuredHeight);
                } else if (f2 >= 1.0f) {
                    setMeasuredDimension(measuredWidth, (int) (height * f));
                } else if (f < f2) {
                    setMeasuredDimension(measuredWidth, (int) (height * f));
                } else {
                    setMeasuredDimension((int) (width * f2), measuredHeight);
                }
            } else if (z2) {
                setMeasuredDimension((int) (width * f2), measuredHeight);
            } else if (z) {
                setMeasuredDimension(measuredWidth, (int) (height * f));
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isClickable()) {
            setSelected(false);
            return super.onTouchEvent(motionEvent);
        } else if (!this.i) {
            return super.onTouchEvent(motionEvent);
        } else {
            int action = motionEvent.getAction();
            if (action == 0) {
                setSelected(true);
            } else if (action == 1 || action == 3 || action == 4 || action == 8) {
                setSelected(false);
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        if (z) {
            throw new IllegalArgumentException("不支持adjustViewBounds");
        }
    }

    public void setBorderColor(@ColorInt int i) {
        if (this.e != i) {
            this.e = i;
            invalidate();
        }
    }

    public void setBorderWidth(int i) {
        if (this.d != i) {
            this.d = i;
            invalidate();
        }
    }

    public void setCircle(boolean z) {
        if (this.f7214c != z) {
            this.f7214c = z;
            requestLayout();
            invalidate();
        }
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.m != colorFilter) {
            this.m = colorFilter;
            if (!this.f7212a) {
                invalidate();
            }
        }
    }

    public void setCornerRadius(int i) {
        if (this.j != i) {
            this.j = i;
            if (!this.f7214c && !this.f7213b) {
                invalidate();
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        setupBitmap();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setupBitmap();
    }

    public void setOval(boolean z) {
        boolean z2 = false;
        if (z && this.f7214c) {
            this.f7214c = false;
            z2 = true;
        }
        if (this.f7213b != z || z2) {
            this.f7213b = z;
            requestLayout();
            invalidate();
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            super.setScaleType(scaleType);
            return;
        }
        throw new IllegalArgumentException(String.format("不支持ScaleType %s", scaleType));
    }

    @Override // android.widget.ImageView, android.view.View
    public void setSelected(boolean z) {
        if (this.f7212a != z) {
            this.f7212a = z;
            invalidate();
        }
    }

    public void setSelectedBorderColor(@ColorInt int i) {
        if (this.g != i) {
            this.g = i;
            if (this.f7212a) {
                invalidate();
            }
        }
    }

    public void setSelectedBorderWidth(int i) {
        if (this.f != i) {
            this.f = i;
            if (this.f7212a) {
                invalidate();
            }
        }
    }

    public void setSelectedColorFilter(ColorFilter colorFilter) {
        if (this.n != colorFilter) {
            this.n = colorFilter;
            if (this.f7212a) {
                invalidate();
            }
        }
    }

    public void setSelectedMaskColor(@ColorInt int i) {
        if (this.h != i) {
            this.h = i;
            if (i != 0) {
                this.n = new PorterDuffColorFilter(this.h, PorterDuff.Mode.DARKEN);
            } else {
                this.n = null;
            }
            if (this.f7212a) {
                invalidate();
            }
        }
        this.h = i;
    }

    public void setTouchSelectModeEnabled(boolean z) {
        this.i = z;
    }

    public void setupBitmap() {
        Bitmap bitmap = getBitmap();
        if (bitmap != this.r) {
            this.r = bitmap;
            if (bitmap == null) {
                this.o = null;
                invalidate();
                return;
            }
            this.p = true;
            Bitmap bitmap2 = this.r;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.o = new BitmapShader(bitmap2, tileMode, tileMode);
            if (this.k == null) {
                Paint paint = new Paint();
                this.k = paint;
                paint.setAntiAlias(true);
            }
            this.k.setShader(this.o);
            requestLayout();
            invalidate();
        }
    }

    public QMUIRadiusImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.QMUIRadiusImageViewStyle);
    }

    public QMUIRadiusImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7212a = false;
        this.f7213b = false;
        this.f7214c = false;
        this.i = true;
        this.p = false;
        this.q = new RectF();
        Paint paint = new Paint();
        this.l = paint;
        paint.setAntiAlias(true);
        this.l.setStyle(Paint.Style.STROKE);
        this.s = new Matrix();
        setScaleType(ImageView.ScaleType.CENTER_CROP);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.QMUIRadiusImageView, i, 0);
        this.d = obtainStyledAttributes.getDimensionPixelSize(R$styleable.QMUIRadiusImageView_qmui_border_width, 0);
        this.e = obtainStyledAttributes.getColor(R$styleable.QMUIRadiusImageView_qmui_border_color, -7829368);
        this.f = obtainStyledAttributes.getDimensionPixelSize(R$styleable.QMUIRadiusImageView_qmui_selected_border_width, this.d);
        this.g = obtainStyledAttributes.getColor(R$styleable.QMUIRadiusImageView_qmui_selected_border_color, this.e);
        int color = obtainStyledAttributes.getColor(R$styleable.QMUIRadiusImageView_qmui_selected_mask_color, 0);
        this.h = color;
        if (color != 0) {
            this.n = new PorterDuffColorFilter(this.h, PorterDuff.Mode.DARKEN);
        }
        this.i = obtainStyledAttributes.getBoolean(R$styleable.QMUIRadiusImageView_qmui_is_touch_select_mode_enabled, true);
        boolean z = obtainStyledAttributes.getBoolean(R$styleable.QMUIRadiusImageView_qmui_is_circle, false);
        this.f7214c = z;
        if (!z) {
            this.f7213b = obtainStyledAttributes.getBoolean(R$styleable.QMUIRadiusImageView_qmui_is_oval, false);
        }
        if (!this.f7213b) {
            this.j = obtainStyledAttributes.getDimensionPixelSize(R$styleable.QMUIRadiusImageView_qmui_corner_radius, 0);
        }
        obtainStyledAttributes.recycle();
    }
}
