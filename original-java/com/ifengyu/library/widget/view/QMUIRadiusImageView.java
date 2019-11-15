package com.ifengyu.library.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.ColorInt;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.widget.ImageView.ScaleType;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.library.R;

public class QMUIRadiusImageView extends AppCompatImageView {
    private static final Config BITMAP_CONFIG = Config.ARGB_8888;
    private static final int COLOR_DRAWABLE_DIMEN = 2;
    private static final int DEFAULT_BORDER_COLOR = -7829368;
    private Bitmap mBitmap;
    private Paint mBitmapPaint;
    private BitmapShader mBitmapShader;
    private int mBorderColor;
    private Paint mBorderPaint;
    private int mBorderWidth;
    private ColorFilter mColorFilter;
    private int mCornerRadius;
    private int mHeight;
    private boolean mIsCircle;
    private boolean mIsOval;
    private boolean mIsSelected;
    private boolean mIsTouchSelectModeEnabled;
    private Matrix mMatrix;
    private boolean mNeedResetShader;
    private RectF mRectF;
    private int mSelectedBorderColor;
    private int mSelectedBorderWidth;
    private ColorFilter mSelectedColorFilter;
    private int mSelectedMaskColor;
    private int mWidth;

    public QMUIRadiusImageView(Context context) {
        this(context, null, R.attr.QMUIRadiusImageViewStyle);
    }

    public QMUIRadiusImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUIRadiusImageViewStyle);
    }

    public QMUIRadiusImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsSelected = false;
        this.mIsOval = false;
        this.mIsCircle = false;
        this.mIsTouchSelectModeEnabled = true;
        this.mNeedResetShader = false;
        this.mRectF = new RectF();
        this.mBorderPaint = new Paint();
        this.mBorderPaint.setAntiAlias(true);
        this.mBorderPaint.setStyle(Style.STROKE);
        this.mMatrix = new Matrix();
        setScaleType(ScaleType.CENTER_CROP);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIRadiusImageView, i, 0);
        this.mBorderWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRadiusImageView_qmui_border_width, 0);
        this.mBorderColor = obtainStyledAttributes.getColor(R.styleable.QMUIRadiusImageView_qmui_border_color, DEFAULT_BORDER_COLOR);
        this.mSelectedBorderWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRadiusImageView_qmui_selected_border_width, this.mBorderWidth);
        this.mSelectedBorderColor = obtainStyledAttributes.getColor(R.styleable.QMUIRadiusImageView_qmui_selected_border_color, this.mBorderColor);
        this.mSelectedMaskColor = obtainStyledAttributes.getColor(R.styleable.QMUIRadiusImageView_qmui_selected_mask_color, 0);
        if (this.mSelectedMaskColor != 0) {
            this.mSelectedColorFilter = new PorterDuffColorFilter(this.mSelectedMaskColor, Mode.DARKEN);
        }
        this.mIsTouchSelectModeEnabled = obtainStyledAttributes.getBoolean(R.styleable.QMUIRadiusImageView_qmui_is_touch_select_mode_enabled, true);
        this.mIsCircle = obtainStyledAttributes.getBoolean(R.styleable.QMUIRadiusImageView_qmui_is_circle, false);
        if (!this.mIsCircle) {
            this.mIsOval = obtainStyledAttributes.getBoolean(R.styleable.QMUIRadiusImageView_qmui_is_oval, false);
        }
        if (!this.mIsOval) {
            this.mCornerRadius = obtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRadiusImageView_qmui_corner_radius, 0);
        }
        obtainStyledAttributes.recycle();
    }

    public void setScaleType(ScaleType scaleType) {
        if (scaleType != ScaleType.CENTER_CROP) {
            throw new IllegalArgumentException(String.format("不支持ScaleType %s", new Object[]{scaleType}));
        } else {
            super.setScaleType(scaleType);
        }
    }

    public void setAdjustViewBounds(boolean z) {
        if (z) {
            throw new IllegalArgumentException("不支持adjustViewBounds");
        }
    }

    public void setBorderWidth(int i) {
        if (this.mBorderWidth != i) {
            this.mBorderWidth = i;
            invalidate();
        }
    }

    public void setBorderColor(@ColorInt int i) {
        if (this.mBorderColor != i) {
            this.mBorderColor = i;
            invalidate();
        }
    }

    public void setCornerRadius(int i) {
        if (this.mCornerRadius != i) {
            this.mCornerRadius = i;
            if (!this.mIsCircle && !this.mIsOval) {
                invalidate();
            }
        }
    }

    public void setSelectedBorderColor(@ColorInt int i) {
        if (this.mSelectedBorderColor != i) {
            this.mSelectedBorderColor = i;
            if (this.mIsSelected) {
                invalidate();
            }
        }
    }

    public void setSelectedBorderWidth(int i) {
        if (this.mSelectedBorderWidth != i) {
            this.mSelectedBorderWidth = i;
            if (this.mIsSelected) {
                invalidate();
            }
        }
    }

    public void setSelectedMaskColor(@ColorInt int i) {
        if (this.mSelectedMaskColor != i) {
            this.mSelectedMaskColor = i;
            if (this.mSelectedMaskColor != 0) {
                this.mSelectedColorFilter = new PorterDuffColorFilter(this.mSelectedMaskColor, Mode.DARKEN);
            } else {
                this.mSelectedColorFilter = null;
            }
            if (this.mIsSelected) {
                invalidate();
            }
        }
        this.mSelectedMaskColor = i;
    }

    public void setCircle(boolean z) {
        if (this.mIsCircle != z) {
            this.mIsCircle = z;
            requestLayout();
            invalidate();
        }
    }

    public void setOval(boolean z) {
        boolean z2 = false;
        if (z && this.mIsCircle) {
            this.mIsCircle = false;
            z2 = true;
        }
        if (this.mIsOval != z || z2) {
            this.mIsOval = z;
            requestLayout();
            invalidate();
        }
    }

    public int getBorderColor() {
        return this.mBorderColor;
    }

    public int getBorderWidth() {
        return this.mBorderWidth;
    }

    public int getCornerRadius() {
        return this.mCornerRadius;
    }

    public int getSelectedBorderColor() {
        return this.mSelectedBorderColor;
    }

    public int getSelectedBorderWidth() {
        return this.mSelectedBorderWidth;
    }

    public int getSelectedMaskColor() {
        return this.mSelectedMaskColor;
    }

    public boolean isCircle() {
        return this.mIsCircle;
    }

    public boolean isOval() {
        return !this.mIsCircle && this.mIsOval;
    }

    public boolean isSelected() {
        return this.mIsSelected;
    }

    public void setSelected(boolean z) {
        if (this.mIsSelected != z) {
            this.mIsSelected = z;
            invalidate();
        }
    }

    public void setTouchSelectModeEnabled(boolean z) {
        this.mIsTouchSelectModeEnabled = z;
    }

    public boolean isTouchSelectModeEnabled() {
        return this.mIsTouchSelectModeEnabled;
    }

    public void setSelectedColorFilter(ColorFilter colorFilter) {
        if (this.mSelectedColorFilter != colorFilter) {
            this.mSelectedColorFilter = colorFilter;
            if (this.mIsSelected) {
                invalidate();
            }
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mColorFilter != colorFilter) {
            this.mColorFilter = colorFilter;
            if (!this.mIsSelected) {
                invalidate();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        boolean z = false;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (this.mIsCircle) {
            int min = Math.min(measuredWidth, measuredHeight);
            setMeasuredDimension(min, min);
            return;
        }
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        if (this.mBitmap != null) {
            boolean z2 = mode == Integer.MIN_VALUE || mode == 0;
            if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
                z = true;
            }
            float width = (float) this.mBitmap.getWidth();
            float height = (float) this.mBitmap.getHeight();
            float f = ((float) measuredWidth) / width;
            float f2 = ((float) measuredHeight) / height;
            if (!z2 || !z) {
                if (z2) {
                    setMeasuredDimension((int) (width * f2), measuredHeight);
                } else if (z) {
                    setMeasuredDimension(measuredWidth, (int) (height * f));
                }
            } else if (f >= 1.0f && f2 >= 1.0f) {
                setMeasuredDimension((int) width, (int) height);
            } else if (f >= 1.0f) {
                setMeasuredDimension((int) (height * f2), measuredHeight);
            } else if (f2 >= 1.0f) {
                setMeasuredDimension(measuredWidth, (int) (height * f));
            } else if (f < f2) {
                setMeasuredDimension(measuredWidth, (int) (height * f));
            } else {
                setMeasuredDimension((int) (width * f2), measuredHeight);
            }
        }
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        setupBitmap();
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setupBitmap();
    }

    private Bitmap getBitmap() {
        Bitmap createBitmap;
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            float width = (float) bitmap.getWidth();
            float height = (float) bitmap.getHeight();
            if (width == 0.0f || height == 0.0f) {
                return null;
            }
            float minimumWidth = ((float) getMinimumWidth()) / width;
            float minimumHeight = ((float) getMinimumHeight()) / height;
            if (minimumWidth <= 1.0f && minimumHeight <= 1.0f) {
                return bitmap;
            }
            float max = Math.max(minimumWidth, minimumHeight);
            Matrix matrix = new Matrix();
            matrix.postScale(max, max);
            return Bitmap.createBitmap(bitmap, 0, 0, (int) width, (int) height, matrix, false);
        }
        try {
            if (drawable instanceof ColorDrawable) {
                createBitmap = Bitmap.createBitmap(2, 2, BITMAP_CONFIG);
            } else {
                createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), BITMAP_CONFIG);
            }
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    public void setupBitmap() {
        Bitmap bitmap = getBitmap();
        if (bitmap != this.mBitmap) {
            this.mBitmap = bitmap;
            if (this.mBitmap == null) {
                this.mBitmapShader = null;
                invalidate();
                return;
            }
            this.mNeedResetShader = true;
            this.mBitmapShader = new BitmapShader(this.mBitmap, TileMode.CLAMP, TileMode.CLAMP);
            if (this.mBitmapPaint == null) {
                this.mBitmapPaint = new Paint();
                this.mBitmapPaint.setAntiAlias(true);
            }
            this.mBitmapPaint.setShader(this.mBitmapShader);
            requestLayout();
            invalidate();
        }
    }

    private void updateBitmapShader() {
        this.mMatrix.reset();
        this.mNeedResetShader = false;
        if (this.mBitmapShader != null && this.mBitmap != null) {
            float width = (float) this.mBitmap.getWidth();
            float height = (float) this.mBitmap.getHeight();
            float max = Math.max(((float) this.mWidth) / width, ((float) this.mHeight) / height);
            this.mMatrix.setScale(max, max);
            this.mMatrix.postTranslate((-((width * max) - ((float) this.mWidth))) / 2.0f, (-((height * max) - ((float) this.mHeight))) / 2.0f);
            this.mBitmapShader.setLocalMatrix(this.mMatrix);
            this.mBitmapPaint.setShader(this.mBitmapShader);
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        if (width > 0 && height > 0 && this.mBitmap != null && this.mBitmapShader != null) {
            if (!(this.mWidth == width && this.mHeight == height && !this.mNeedResetShader)) {
                this.mWidth = width;
                this.mHeight = height;
                updateBitmapShader();
            }
            this.mBorderPaint.setColor(this.mIsSelected ? this.mSelectedBorderColor : this.mBorderColor);
            this.mBitmapPaint.setColorFilter(this.mIsSelected ? this.mSelectedColorFilter : this.mColorFilter);
            int i = this.mIsSelected ? this.mSelectedBorderWidth : this.mBorderWidth;
            this.mBorderPaint.setStrokeWidth((float) i);
            float f = (((float) i) * 1.0f) / 2.0f;
            if (this.mIsCircle) {
                int width2 = getWidth() / 2;
                canvas.drawCircle((float) width2, (float) width2, (float) width2, this.mBitmapPaint);
                if (i > 0) {
                    canvas.drawCircle((float) width2, (float) width2, ((float) width2) - f, this.mBorderPaint);
                    return;
                }
                return;
            }
            this.mRectF.left = f;
            this.mRectF.top = f;
            this.mRectF.right = ((float) width) - f;
            this.mRectF.bottom = ((float) height) - f;
            if (this.mIsOval) {
                canvas.drawOval(this.mRectF, this.mBitmapPaint);
                if (i > 0) {
                    canvas.drawOval(this.mRectF, this.mBorderPaint);
                    return;
                }
                return;
            }
            canvas.drawRoundRect(this.mRectF, (float) this.mCornerRadius, (float) this.mCornerRadius, this.mBitmapPaint);
            if (i > 0) {
                canvas.drawRoundRect(this.mRectF, (float) this.mCornerRadius, (float) this.mCornerRadius, this.mBorderPaint);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isClickable()) {
            setSelected(false);
            return super.onTouchEvent(motionEvent);
        } else if (!this.mIsTouchSelectModeEnabled) {
            return super.onTouchEvent(motionEvent);
        } else {
            switch (motionEvent.getAction()) {
                case 0:
                    setSelected(true);
                    break;
                case 1:
                case 3:
                case 4:
                case 8:
                    setSelected(false);
                    break;
            }
            return super.onTouchEvent(motionEvent);
        }
    }
}
