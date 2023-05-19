package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.view.CircleProgress */
/* loaded from: classes2.dex */
public class CircleProgress extends View {

    /* renamed from: a */
    private float f16104a;

    /* renamed from: b */
    private Paint f16105b;

    /* renamed from: c */
    private Paint f16106c;

    /* renamed from: d */
    private int f16107d;

    /* renamed from: e */
    private STATE f16108e;

    /* renamed from: f */
    private RectF f16109f;

    /* renamed from: g */
    private Rect f16110g;

    /* renamed from: h */
    private Rect f16111h;

    /* renamed from: i */
    private String f16112i;

    /* renamed from: j */
    private float f16113j;

    /* renamed from: k */
    private int f16114k;

    /* renamed from: l */
    private int f16115l;

    /* renamed from: m */
    private int f16116m;

    /* renamed from: n */
    private int f16117n;

    /* renamed from: o */
    private int f16118o;

    /* renamed from: com.ifengyu.intercom.ui.widget.view.CircleProgress$STATE */
    /* loaded from: classes2.dex */
    public enum STATE {
        START,
        UPDATING,
        FAILURE,
        SUCCESS
    }

    /* renamed from: com.ifengyu.intercom.ui.widget.view.CircleProgress$a */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C4947a {

        /* renamed from: a */
        static final /* synthetic */ int[] f16124a;

        static {
            int[] iArr = new int[STATE.values().length];
            f16124a = iArr;
            try {
                iArr[STATE.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16124a[STATE.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16124a[STATE.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16124a[STATE.UPDATING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public CircleProgress(Context context) {
        super(context);
        this.f16104a = 1.5f;
        this.f16109f = new RectF();
        this.f16110g = new Rect();
        this.f16111h = new Rect();
        this.f16112i = "%";
        m8852a();
    }

    /* renamed from: a */
    private void m8852a() {
        Paint paint = new Paint();
        this.f16105b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f16105b.setAntiAlias(true);
        this.f16105b.setFilterBitmap(true);
        this.f16108e = STATE.START;
        Paint paint2 = new Paint();
        this.f16106c = paint2;
        paint2.setAntiAlias(true);
        this.f16106c.setFilterBitmap(true);
        this.f16106c.setStyle(Paint.Style.FILL);
        this.f16106c.setColor(getResources().getColor(R.color.select_color));
        this.f16113j = MethodsUtils.m11292h(this.f16104a);
        this.f16114k = getResources().getColor(R.color.select_color);
        this.f16115l = getResources().getColor(R.color.black20);
        this.f16116m = MethodsUtils.m11285o(86);
        this.f16117n = MethodsUtils.m11285o(42);
        this.f16118o = MethodsUtils.m11285o(2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.translate(getWidth() / 2, getHeight() / 2);
        this.f16105b.setStyle(Paint.Style.STROKE);
        this.f16105b.setStrokeWidth(this.f16113j);
        if (this.f16108e == STATE.SUCCESS) {
            this.f16105b.setColor(getResources().getColor(R.color.select_color));
        } else {
            this.f16105b.setColor(this.f16115l);
        }
        float width = (getWidth() - this.f16113j) / 2.0f;
        float f = -width;
        this.f16109f.set(f, f, width, width);
        this.f16105b.setColor(this.f16115l);
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, this.f16105b);
        int i = C4947a.f16124a[this.f16108e.ordinal()];
        if (i == 2) {
            this.f16105b.setStyle(Paint.Style.FILL);
            this.f16105b.setColor(getResources().getColor(R.color.select_color));
            this.f16105b.setTextSize(MethodsUtils.m11285o(28));
        } else if (i != 4) {
        } else {
            if (this.f16107d >= 100) {
                this.f16107d = 100;
            }
            this.f16105b.setColor(this.f16114k);
            canvas.drawArc(this.f16109f, -90.0f, (int) ((this.f16107d / 100.0d) * 360.0d), false, this.f16105b);
            String valueOf = String.valueOf(this.f16107d);
            this.f16105b.setStyle(Paint.Style.FILL);
            this.f16105b.setTextSize(this.f16116m);
            this.f16105b.getTextBounds(valueOf, 0, 1, this.f16110g);
            int height = this.f16110g.height();
            float measureText = this.f16105b.measureText(valueOf);
            canvas.drawText(valueOf, (-measureText) / 2.0f, height / 2, this.f16105b);
            this.f16105b.setTextSize(this.f16117n);
            this.f16105b.getTextBounds(this.f16112i, 0, 1, this.f16111h);
            canvas.drawText(this.f16112i, (measureText / 2.0f) + this.f16118o, ((-height) / 2) + this.f16111h.height(), this.f16105b);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setProgress(int i, STATE state) {
        this.f16107d = i;
        this.f16108e = state;
        invalidate();
    }

    public CircleProgress(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16104a = 1.5f;
        this.f16109f = new RectF();
        this.f16110g = new Rect();
        this.f16111h = new Rect();
        this.f16112i = "%";
        m8852a();
    }
}
