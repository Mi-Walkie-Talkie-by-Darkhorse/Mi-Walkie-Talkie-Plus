package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: com.ifengyu.intercom.ui.widget.view.ProgressCircle */
/* loaded from: classes2.dex */
public class ProgressCircle extends View {

    /* renamed from: a */
    private float f16242a;

    /* renamed from: b */
    private Paint f16243b;

    /* renamed from: c */
    private Paint f16244c;

    /* renamed from: d */
    private int f16245d;

    /* renamed from: e */
    private STATE f16246e;

    /* renamed from: com.ifengyu.intercom.ui.widget.view.ProgressCircle$STATE */
    /* loaded from: classes2.dex */
    public enum STATE {
        START,
        UPDATING,
        FAILURE,
        SUCCESS
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.view.ProgressCircle$a */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C4957a {

        /* renamed from: a */
        static final /* synthetic */ int[] f16252a;

        static {
            int[] iArr = new int[STATE.values().length];
            f16252a = iArr;
            try {
                iArr[STATE.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16252a[STATE.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16252a[STATE.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16252a[STATE.UPDATING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ProgressCircle(Context context) {
        super(context);
        this.f16242a = 1.5f;
        m8764b();
    }

    /* renamed from: a */
    private Bitmap m8765a(STATE state) {
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

    /* renamed from: b */
    private void m8764b() {
        Paint paint = new Paint();
        this.f16243b = paint;
        paint.setAntiAlias(true);
        this.f16243b.setFilterBitmap(true);
        this.f16246e = STATE.START;
        Paint paint2 = new Paint();
        this.f16244c = paint2;
        paint2.setAntiAlias(true);
        this.f16244c.setFilterBitmap(true);
        this.f16244c.setStyle(Paint.Style.FILL);
        this.f16244c.setColor(-1);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int height = getHeight();
        int width = getWidth();
        int m11285o = MethodsUtils.m11285o(188) - ((int) (this.f16242a / 2.0f));
        canvas.translate(width / 2, height / 2);
        this.f16243b.setStyle(Paint.Style.STROKE);
        this.f16243b.setStrokeWidth(MethodsUtils.m11292h(this.f16242a));
        if (this.f16246e == STATE.SUCCESS) {
            this.f16243b.setColor(getResources().getColor(R.color.select_color));
        } else {
            this.f16243b.setColor(PKIFailureInfo.duplicateCertReq);
        }
        float f = m11285o;
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, this.f16243b);
        Bitmap m8765a = m8765a(this.f16246e);
        Rect rect = new Rect(0, 0, m8765a.getWidth(), m8765a.getHeight());
        int width2 = (m8765a.getWidth() * 2) / 5;
        int height2 = (m8765a.getHeight() * 2) / 5;
        Rect rect2 = new Rect(-width2, -height2, width2, height2);
        Rect rect3 = new Rect();
        int i = C4957a.f16252a[this.f16246e.ordinal()];
        if (i == 1) {
            canvas.drawBitmap(m8765a, rect, rect2, this.f16244c);
        } else if (i == 2) {
            this.f16243b.setStyle(Paint.Style.FILL);
            this.f16243b.setColor(getResources().getColor(R.color.select_color));
            this.f16243b.setTextSize(MethodsUtils.m11285o(28));
            canvas.drawBitmap(m8765a, rect, rect2, this.f16244c);
        } else if (i == 3) {
            canvas.drawBitmap(m8765a, rect, rect2, this.f16244c);
        } else if (i != 4) {
        } else {
            if (this.f16245d >= 100) {
                this.f16245d = 100;
            }
            this.f16243b.setStyle(Paint.Style.STROKE);
            this.f16243b.setColor(getResources().getColor(R.color.select_color));
            float f2 = -m11285o;
            canvas.drawArc(new RectF(f2, f2, f, f), -90.0f, (int) ((this.f16245d / 100.0d) * 360.0d), false, this.f16243b);
            this.f16243b.setStyle(Paint.Style.FILL);
            this.f16243b.setTextSize(MethodsUtils.m11285o(86));
            String valueOf = String.valueOf(this.f16245d);
            this.f16243b.getTextBounds(valueOf, 0, 1, rect3);
            int height3 = rect3.height();
            float measureText = this.f16243b.measureText(valueOf);
            canvas.drawText(valueOf, (-measureText) / 2.0f, height3 / 2, this.f16243b);
            this.f16243b.setTextSize(MethodsUtils.m11285o(42));
            this.f16243b.getTextBounds("%", 0, 1, rect3);
            canvas.drawText("%", (measureText / 2.0f) + MethodsUtils.m11285o(2), ((-height3) / 2) + rect3.height(), this.f16243b);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setProgress(int i, STATE state) {
        this.f16245d = i;
        this.f16246e = state;
        invalidate();
    }

    public ProgressCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16242a = 1.5f;
        m8764b();
    }
}
