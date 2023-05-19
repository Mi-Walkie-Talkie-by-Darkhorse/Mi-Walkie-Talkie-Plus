package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;

/* renamed from: com.ifengyu.intercom.ui.widget.view.AfxTextView */
/* loaded from: classes2.dex */
public class AfxTextView extends AppCompatTextView {

    /* renamed from: a */
    private Drawable f16075a;

    public AfxTextView(Context context) {
        super(context);
        m8875c();
    }

    /* renamed from: b */
    private void m8876b(Drawable drawable, Canvas canvas) {
        setBounds(drawable);
        canvas.save();
        m8874h(canvas, drawable);
        drawable.draw(canvas);
        canvas.restore();
    }

    /* renamed from: c */
    private void m8875c() {
        Drawable background = getBackground();
        if (background instanceof BitmapDrawable) {
            this.f16075a = background;
            setBackgroundDrawable(null);
        }
    }

    private int getDrawableHeight() {
        Drawable drawable = this.f16075a;
        if (drawable == null) {
            return 0;
        }
        return drawable.getIntrinsicHeight();
    }

    private int getDrawableWidth() {
        Drawable drawable = this.f16075a;
        if (drawable == null) {
            return 0;
        }
        return drawable.getIntrinsicWidth();
    }

    /* renamed from: h */
    private void m8874h(Canvas canvas, Drawable drawable) {
        int drawableWidth = getDrawableWidth();
        int drawableHeight = getDrawableHeight();
        int width = getWidth();
        int height = getHeight();
        canvas.translate(((getPaddingLeft() - getPaddingRight()) / 2) + (drawableWidth < width ? (width - drawableWidth) / 2 : 0), ((getPaddingTop() - getPaddingBottom()) / 2) + (drawableHeight < height ? (height - drawableHeight) / 2 : 0));
    }

    private void setBounds(Drawable drawable) {
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f16075a != null && TextUtils.isEmpty(getText())) {
            m8876b(this.f16075a, canvas);
            super.onDraw(canvas);
            return;
        }
        super.onDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0039  */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int measuredWidthAndState = getMeasuredWidthAndState();
        int measuredHeightAndState = getMeasuredHeightAndState();
        int mode3 = View.MeasureSpec.getMode(measuredWidthAndState);
        int mode4 = View.MeasureSpec.getMode(measuredHeightAndState);
        boolean z2 = true;
        int i4 = 0;
        if (mode == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            int size = View.MeasureSpec.getSize(i);
            int drawableWidth = getDrawableWidth();
            if (drawableWidth > measuredWidth) {
                i3 = Math.min(drawableWidth, size);
                z = true;
                if (mode2 == Integer.MIN_VALUE) {
                    int measuredHeight = getMeasuredHeight();
                    int size2 = View.MeasureSpec.getSize(i2);
                    int drawableHeight = getDrawableHeight();
                    if (drawableHeight > measuredHeight) {
                        i4 = Math.min(drawableHeight, size2);
                        if (!z && z2) {
                            setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(i3, mode3), View.MeasureSpec.makeMeasureSpec(i4, mode4));
                            return;
                        } else if (z) {
                            setMeasuredDimension(View.MeasureSpec.makeMeasureSpec(i3, mode3), measuredHeightAndState);
                            return;
                        } else if (z2) {
                            setMeasuredDimension(measuredWidthAndState, View.MeasureSpec.makeMeasureSpec(i4, mode4));
                            return;
                        } else {
                            return;
                        }
                    }
                }
                z2 = false;
                if (!z) {
                }
                if (z) {
                }
            }
        }
        i3 = 0;
        z = false;
        if (mode2 == Integer.MIN_VALUE) {
        }
        z2 = false;
        if (!z) {
        }
        if (z) {
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
    }

    public AfxTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m8875c();
    }

    public AfxTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m8875c();
    }
}
