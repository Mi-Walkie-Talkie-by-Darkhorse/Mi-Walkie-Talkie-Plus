package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes2.dex */
public class ProgressCircle extends View {

    /* renamed from: a  reason: collision with root package name */
    private float f7068a = 1.5f;

    /* renamed from: b  reason: collision with root package name */
    private Paint f7069b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f7070c;
    private int d;
    private STATE e;

    /* loaded from: classes2.dex */
    public enum STATE {
        START,
        UPDATING,
        FAILURE,
        SUCCESS
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7074a;

        static {
            int[] iArr = new int[STATE.values().length];
            f7074a = iArr;
            try {
                iArr[STATE.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7074a[STATE.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7074a[STATE.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7074a[STATE.UPDATING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ProgressCircle(Context context) {
        super(context);
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.f7069b = paint;
        paint.setAntiAlias(true);
        this.f7069b.setFilterBitmap(true);
        this.e = STATE.START;
        Paint paint2 = new Paint();
        this.f7070c = paint2;
        paint2.setAntiAlias(true);
        this.f7070c.setFilterBitmap(true);
        this.f7070c.setStyle(Paint.Style.FILL);
        this.f7070c.setColor(-1);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int height = getHeight();
        int width = getWidth();
        int d = c0.d(188) - ((int) (this.f7068a / 2.0f));
        canvas.translate(width / 2, height / 2);
        this.f7069b.setStyle(Paint.Style.STROKE);
        this.f7069b.setStrokeWidth(c0.a(this.f7068a));
        if (this.e == STATE.SUCCESS) {
            this.f7069b.setColor(getResources().getColor(R.color.select_color));
        } else {
            this.f7069b.setColor(PKIFailureInfo.duplicateCertReq);
        }
        float f = d;
        canvas.drawCircle(0.0f, 0.0f, f, this.f7069b);
        Bitmap a2 = a(this.e);
        Rect rect = new Rect(0, 0, a2.getWidth(), a2.getHeight());
        int width2 = (a2.getWidth() * 2) / 5;
        int height2 = (a2.getHeight() * 2) / 5;
        Rect rect2 = new Rect(-width2, -height2, width2, height2);
        Rect rect3 = new Rect();
        int i = a.f7074a[this.e.ordinal()];
        if (i == 1) {
            canvas.drawBitmap(a2, rect, rect2, this.f7070c);
        } else if (i == 2) {
            this.f7069b.setStyle(Paint.Style.FILL);
            this.f7069b.setColor(getResources().getColor(R.color.select_color));
            this.f7069b.setTextSize(c0.d(28));
            canvas.drawBitmap(a2, rect, rect2, this.f7070c);
        } else if (i == 3) {
            canvas.drawBitmap(a2, rect, rect2, this.f7070c);
        } else if (i == 4) {
            if (this.d >= 100) {
                this.d = 100;
            }
            this.f7069b.setStyle(Paint.Style.STROKE);
            this.f7069b.setColor(getResources().getColor(R.color.select_color));
            float f2 = -d;
            canvas.drawArc(new RectF(f2, f2, f, f), -90.0f, (int) ((this.d / 100.0d) * 360.0d), false, this.f7069b);
            this.f7069b.setStyle(Paint.Style.FILL);
            this.f7069b.setTextSize(c0.d(86));
            String valueOf = String.valueOf(this.d);
            this.f7069b.getTextBounds(valueOf, 0, 1, rect3);
            int height3 = rect3.height();
            float measureText = this.f7069b.measureText(valueOf);
            canvas.drawText(valueOf, (-measureText) / 2.0f, height3 / 2, this.f7069b);
            this.f7069b.setTextSize(c0.d(42));
            this.f7069b.getTextBounds("%", 0, 1, rect3);
            canvas.drawText("%", (measureText / 2.0f) + c0.d(2), ((-height3) / 2) + rect3.height(), this.f7069b);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setProgress(int i, STATE state) {
        this.d = i;
        this.e = state;
        invalidate();
    }

    public ProgressCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private Bitmap a(STATE state) {
        if (state == null) {
            return null;
        }
        MemoryCache memoryCache = ImageLoader.getInstance().getMemoryCache();
        Bitmap bitmap = memoryCache.get(state.toString() + "_");
        if (bitmap == null) {
            bitmap = BitmapFactory.decodeResource(getResources(), state == STATE.START ? R.drawable.firmware_icon_upgrade : state == STATE.FAILURE ? R.drawable.firmware_icon_fail : R.drawable.firmware_icon_success);
            if (bitmap != null) {
                MemoryCache memoryCache2 = ImageLoader.getInstance().getMemoryCache();
                memoryCache2.put(state.toString() + "_", bitmap);
            }
        }
        return bitmap;
    }
}
