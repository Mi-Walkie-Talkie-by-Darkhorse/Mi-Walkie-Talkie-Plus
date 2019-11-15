package com.yalantis.ucrop.view.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yalantis.ucrop.R;
import com.yalantis.ucrop.model.AspectRatio;
import java.util.Locale;

public class AspectRatioTextView extends TextView {
    private final Rect a;
    private Paint b;
    private int c;
    private float d;
    private String e;
    private float f;
    private float g;

    public AspectRatioTextView(Context context) {
        this(context, null);
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Rect();
        a(context.obtainStyledAttributes(attributeSet, R.styleable.ucrop_AspectRatioTextView));
    }

    @TargetApi(21)
    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = new Rect();
        a(context.obtainStyledAttributes(attributeSet, R.styleable.ucrop_AspectRatioTextView));
    }

    public void setActiveColor(@ColorInt int i) {
        a(i);
        invalidate();
    }

    public void setAspectRatio(@NonNull AspectRatio aspectRatio) {
        this.e = aspectRatio.a();
        this.f = aspectRatio.b();
        this.g = aspectRatio.c();
        if (this.f == 0.0f || this.g == 0.0f) {
            this.d = 0.0f;
        } else {
            this.d = this.f / this.g;
        }
        b();
    }

    public float a(boolean z) {
        if (z) {
            a();
            b();
        }
        return this.d;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isSelected()) {
            canvas.getClipBounds(this.a);
            canvas.drawCircle(((float) (this.a.right - this.a.left)) / 2.0f, (float) (this.a.bottom - this.c), (float) (this.c / 2), this.b);
        }
    }

    private void a(@NonNull TypedArray typedArray) {
        setGravity(1);
        this.e = typedArray.getString(R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_title);
        this.f = typedArray.getFloat(R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_x, 0.0f);
        this.g = typedArray.getFloat(R.styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_y, 0.0f);
        if (this.f == 0.0f || this.g == 0.0f) {
            this.d = 0.0f;
        } else {
            this.d = this.f / this.g;
        }
        this.c = getContext().getResources().getDimensionPixelSize(R.dimen.ucrop_size_dot_scale_text_view);
        this.b = new Paint(1);
        this.b.setStyle(Style.FILL);
        b();
        a(getResources().getColor(R.color.ucrop_color_widget_active));
        typedArray.recycle();
    }

    private void a(@ColorInt int i) {
        if (this.b != null) {
            this.b.setColor(i);
        }
        setTextColor(new ColorStateList(new int[][]{new int[]{16842913}, new int[]{0}}, new int[]{i, ContextCompat.getColor(getContext(), R.color.ucrop_color_widget)}));
    }

    private void a() {
        if (this.d != 0.0f) {
            float f2 = this.f;
            this.f = this.g;
            this.g = f2;
            this.d = this.f / this.g;
        }
    }

    private void b() {
        if (!TextUtils.isEmpty(this.e)) {
            setText(this.e);
            return;
        }
        setText(String.format(Locale.US, "%d:%d", new Object[]{Integer.valueOf((int) this.f), Integer.valueOf((int) this.g)}));
    }
}
