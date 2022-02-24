package com.ifengyu.library.widget.waitingdots;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* loaded from: classes2.dex */
public class JumpingSpan extends ReplacementSpan {
    private float translationX = 0.0f;
    private float translationY = 0.0f;

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        canvas.drawText(charSequence, i, i2, f + this.translationX, i4 + this.translationY, paint);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return (int) paint.measureText(charSequence, i, i2);
    }

    public void setTranslationX(float f) {
        this.translationX = f;
    }

    public void setTranslationY(float f) {
        this.translationY = f;
    }
}
