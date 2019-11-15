package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;
import com.nostra13.universalimageloader.core.ImageLoader;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

public class ProgressCircle extends View {
    private float a = 1.5f;
    private Paint b;
    private Paint c;
    private int d;
    private STATE e;

    public enum STATE {
        START,
        UPDATING,
        FAILURE,
        SUCCESS
    }

    public ProgressCircle(Context context) {
        super(context);
        a();
    }

    public ProgressCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        this.b = new Paint();
        this.b.setAntiAlias(true);
        this.b.setFilterBitmap(true);
        this.e = STATE.START;
        this.c = new Paint();
        this.c.setAntiAlias(true);
        this.c.setFilterBitmap(true);
        this.c.setStyle(Style.FILL);
        this.c.setColor(-1);
    }

    public void setProgress(int i, STATE state) {
        this.d = i;
        this.e = state;
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int height = getHeight();
        int b2 = v.b(188) - ((int) (this.a / 2.0f));
        canvas.translate((float) (getWidth() / 2), (float) (height / 2));
        this.b.setStyle(Style.STROKE);
        this.b.setStrokeWidth(v.a(this.a));
        if (this.e == STATE.SUCCESS) {
            this.b.setColor(getResources().getColor(R.color.select_color));
        } else {
            this.b.setColor(PKIFailureInfo.duplicateCertReq);
        }
        canvas.drawCircle(0.0f, 0.0f, (float) b2, this.b);
        Bitmap a2 = a(this.e);
        Rect rect = new Rect(0, 0, a2.getWidth(), a2.getHeight());
        int width = (a2.getWidth() * 2) / 5;
        int height2 = (a2.getHeight() * 2) / 5;
        Rect rect2 = new Rect(-width, -height2, width, height2);
        Rect rect3 = new Rect();
        switch (this.e) {
            case START:
                canvas.drawBitmap(a2, rect, rect2, this.c);
                return;
            case FAILURE:
                this.b.setStyle(Style.FILL);
                this.b.setColor(getResources().getColor(R.color.select_color));
                this.b.setTextSize((float) v.b(28));
                canvas.drawBitmap(a2, rect, rect2, this.c);
                return;
            case SUCCESS:
                canvas.drawBitmap(a2, rect, rect2, this.c);
                return;
            case UPDATING:
                if (this.d >= 100) {
                    this.d = 100;
                }
                this.b.setStyle(Style.STROKE);
                this.b.setColor(getResources().getColor(R.color.select_color));
                canvas.drawArc(new RectF((float) (-b2), (float) (-b2), (float) b2, (float) b2), -90.0f, (float) ((int) ((((double) this.d) / 100.0d) * 360.0d)), false, this.b);
                this.b.setStyle(Style.FILL);
                this.b.setTextSize((float) v.b(86));
                String valueOf = String.valueOf(this.d);
                this.b.getTextBounds(valueOf, 0, 1, rect3);
                int height3 = rect3.height();
                float measureText = this.b.measureText(valueOf);
                canvas.drawText(valueOf, (-measureText) / 2.0f, (float) (height3 / 2), this.b);
                this.b.setTextSize((float) v.b(42));
                this.b.getTextBounds("%", 0, 1, rect3);
                canvas.drawText("%", (measureText / 2.0f) + ((float) v.b(2)), (float) (((-height3) / 2) + rect3.height()), this.b);
                return;
            default:
                return;
        }
    }

    private Bitmap a(STATE state) {
        if (state == null) {
            return null;
        }
        Bitmap bitmap = ImageLoader.getInstance().getMemoryCache().get(state.toString() + "_");
        if (bitmap != null) {
            return bitmap;
        }
        Resources resources = getResources();
        int i = state == STATE.START ? R.drawable.firmware_icon_upgrade : state == STATE.FAILURE ? R.drawable.firmware_icon_fail : R.drawable.firmware_icon_success;
        Bitmap decodeResource = BitmapFactory.decodeResource(resources, i);
        if (decodeResource == null) {
            return decodeResource;
        }
        ImageLoader.getInstance().getMemoryCache().put(state.toString() + "_", decodeResource);
        return decodeResource;
    }
}
