package me.zhanghai.android.materialprogressbar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;

class BaseSingleHorizontalProgressDrawable extends BaseProgressDrawable {
    private static final int PADDED_INTRINSIC_HEIGHT_DP = 16;
    private static final int PROGRESS_INTRINSIC_HEIGHT_DP = 4;
    protected static final RectF RECT_BOUND = new RectF(-180.0f, -1.0f, 180.0f, 1.0f);
    private static final RectF RECT_PADDED_BOUND = new RectF(-180.0f, -4.0f, 180.0f, 4.0f);
    private int mPaddedIntrinsicHeight;
    private int mProgressIntrinsicHeight;

    public BaseSingleHorizontalProgressDrawable(Context context) {
        float f = context.getResources().getDisplayMetrics().density;
        this.mProgressIntrinsicHeight = Math.round(4.0f * f);
        this.mPaddedIntrinsicHeight = Math.round(f * 16.0f);
    }

    public int getIntrinsicHeight() {
        return this.mUseIntrinsicPadding ? this.mPaddedIntrinsicHeight : this.mProgressIntrinsicHeight;
    }

    /* access modifiers changed from: protected */
    public void onPreparePaint(Paint paint) {
        paint.setStyle(Style.FILL);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas, int i, int i2, Paint paint) {
        if (this.mUseIntrinsicPadding) {
            canvas.scale(((float) i) / RECT_PADDED_BOUND.width(), ((float) i2) / RECT_PADDED_BOUND.height());
            canvas.translate(RECT_PADDED_BOUND.width() / 2.0f, RECT_PADDED_BOUND.height() / 2.0f);
        } else {
            canvas.scale(((float) i) / RECT_BOUND.width(), ((float) i2) / RECT_BOUND.height());
            canvas.translate(RECT_BOUND.width() / 2.0f, RECT_BOUND.height() / 2.0f);
        }
        onDrawRect(canvas, paint);
    }

    /* access modifiers changed from: protected */
    public void onDrawRect(Canvas canvas, Paint paint) {
        canvas.drawRect(RECT_BOUND, paint);
    }
}
