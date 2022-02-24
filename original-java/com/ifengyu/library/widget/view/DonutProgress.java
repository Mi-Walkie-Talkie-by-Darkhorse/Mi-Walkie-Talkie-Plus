package com.ifengyu.library.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.ifengyu.library.R$styleable;
import com.ifengyu.library.a.m;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.bouncycastle.i18n.TextBundle;

/* loaded from: classes2.dex */
public class DonutProgress extends View {
    private String A;
    private float B;
    private final float C;
    private final int D;
    private final int E;
    private final int F;
    private final int G;
    private final float H;
    private final float I;
    private final int J;
    private final float K;
    private final int L;

    /* renamed from: a  reason: collision with root package name */
    private Paint f7199a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f7200b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f7201c;
    protected Paint d;
    protected Paint e;
    private RectF f;
    private RectF g;
    private int h;
    private boolean i;
    private float j;
    private float k;
    private int l;
    private int m;
    private float n;
    private int o;
    private int p;
    private int q;
    private int r;
    private float s;
    private float t;
    private int u;
    private String v;
    private String w;
    private float x;
    private String y;
    private float z;

    public DonutProgress(Context context) {
        this(context, null);
    }

    private float getProgressAngle() {
        return (getProgress() / this.o) * 360.0f;
    }

    protected void a() {
        if (this.i) {
            TextPaint textPaint = new TextPaint();
            this.d = textPaint;
            textPaint.setColor(this.l);
            this.d.setTextSize(this.j);
            this.d.setAntiAlias(true);
            TextPaint textPaint2 = new TextPaint();
            this.e = textPaint2;
            textPaint2.setColor(this.m);
            this.e.setTextSize(this.z);
            this.e.setAntiAlias(true);
        }
        Paint paint = new Paint();
        this.f7199a = paint;
        paint.setColor(this.p);
        this.f7199a.setStyle(Paint.Style.STROKE);
        this.f7199a.setAntiAlias(true);
        this.f7199a.setStrokeWidth(this.s);
        Paint paint2 = new Paint();
        this.f7200b = paint2;
        paint2.setColor(this.q);
        this.f7200b.setStyle(Paint.Style.STROKE);
        this.f7200b.setAntiAlias(true);
        this.f7200b.setStrokeWidth(this.t);
        Paint paint3 = new Paint();
        this.f7201c = paint3;
        paint3.setColor(this.u);
        this.f7201c.setAntiAlias(true);
    }

    public int getAttributeResourceId() {
        return this.h;
    }

    public int getFinishedStrokeColor() {
        return this.p;
    }

    public float getFinishedStrokeWidth() {
        return this.s;
    }

    public int getInnerBackgroundColor() {
        return this.u;
    }

    public String getInnerBottomText() {
        return this.A;
    }

    public int getInnerBottomTextColor() {
        return this.m;
    }

    public float getInnerBottomTextSize() {
        return this.z;
    }

    public int getMax() {
        return this.o;
    }

    public String getPrefixText() {
        return this.v;
    }

    public float getProgress() {
        return this.n;
    }

    public int getStartingDegree() {
        return this.r;
    }

    public String getSuffixText() {
        return this.w;
    }

    public float getSuffixTextSize() {
        return this.k;
    }

    public String getText() {
        return this.y;
    }

    public int getTextColor() {
        return this.l;
    }

    public float getTextSize() {
        return this.j;
    }

    public int getUnfinishedStrokeColor() {
        return this.q;
    }

    public float getUnfinishedStrokeWidth() {
        return this.t;
    }

    @Override // android.view.View
    public void invalidate() {
        a();
        super.invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap decodeResource;
        super.onDraw(canvas);
        float max = Math.max(this.s, this.t);
        this.f.set(max, max, getWidth() - max, getHeight() - max);
        this.g.set(max, max, getWidth() - max, getHeight() - max);
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, ((getWidth() - Math.min(this.s, this.t)) + Math.abs(this.s - this.t)) / 2.0f, this.f7201c);
        canvas.drawArc(this.f, getStartingDegree(), getProgressAngle(), false, this.f7199a);
        canvas.drawArc(this.g, getProgressAngle() + getStartingDegree(), 360.0f - getProgressAngle(), false, this.f7200b);
        if (this.i) {
            String str = this.y;
            if (str == null) {
                str = this.v + ((int) this.n);
            }
            if (!TextUtils.isEmpty(str)) {
                this.d.setColor(this.l);
                this.d.setTextSize(this.j);
                float descent = this.d.descent() + this.d.ascent();
                float height = (getHeight() - descent) / 2.0f;
                canvas.drawText(str, (getWidth() - this.d.measureText(str)) / 2.0f, height, this.d);
                this.d.setTextSize(this.k);
                canvas.drawText(this.w, (getWidth() / 2.0f) + this.d.measureText(str) + this.x, (height + descent) - (this.d.descent() + this.d.ascent()), this.d);
            }
            if (!TextUtils.isEmpty(getInnerBottomText())) {
                this.e.setTextSize(this.z);
                canvas.drawText(getInnerBottomText(), (getWidth() - this.e.measureText(getInnerBottomText())) / 2.0f, (getHeight() - this.B) - ((this.d.descent() + this.d.ascent()) / 2.0f), this.e);
            }
        }
        if (this.h != 0) {
            canvas.drawBitmap(BitmapFactory.decodeResource(getResources(), this.h), (getWidth() - decodeResource.getWidth()) / 2.0f, (getHeight() - decodeResource.getHeight()) / 2.0f, (Paint) null);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(a(i), a(i2));
        this.B = getHeight() - ((getHeight() * 3) / 4);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.l = bundle.getInt("text_color");
            this.j = bundle.getFloat("text_size");
            this.z = bundle.getFloat("inner_bottom_text_size");
            this.A = bundle.getString("inner_bottom_text");
            this.m = bundle.getInt("inner_bottom_text_color");
            this.p = bundle.getInt("finished_stroke_color");
            this.q = bundle.getInt("unfinished_stroke_color");
            this.s = bundle.getFloat("finished_stroke_width");
            this.t = bundle.getFloat("unfinished_stroke_width");
            this.u = bundle.getInt("inner_background_color");
            this.h = bundle.getInt("inner_drawable");
            a();
            setMax(bundle.getInt("max"));
            setStartingDegree(bundle.getInt("starting_degree"));
            setProgress(bundle.getFloat("progress"));
            this.v = bundle.getString("prefix");
            this.w = bundle.getString("suffix");
            this.y = bundle.getString(TextBundle.TEXT_ENTRY);
            super.onRestoreInstanceState(bundle.getParcelable("saved_instance"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("saved_instance", super.onSaveInstanceState());
        bundle.putInt("text_color", getTextColor());
        bundle.putFloat("text_size", getTextSize());
        bundle.putFloat("inner_bottom_text_size", getInnerBottomTextSize());
        bundle.putFloat("inner_bottom_text_color", getInnerBottomTextColor());
        bundle.putString("inner_bottom_text", getInnerBottomText());
        bundle.putInt("inner_bottom_text_color", getInnerBottomTextColor());
        bundle.putInt("finished_stroke_color", getFinishedStrokeColor());
        bundle.putInt("unfinished_stroke_color", getUnfinishedStrokeColor());
        bundle.putInt("max", getMax());
        bundle.putInt("starting_degree", getStartingDegree());
        bundle.putFloat("progress", getProgress());
        bundle.putString("suffix", getSuffixText());
        bundle.putString("prefix", getPrefixText());
        bundle.putString(TextBundle.TEXT_ENTRY, getText());
        bundle.putFloat("finished_stroke_width", getFinishedStrokeWidth());
        bundle.putFloat("unfinished_stroke_width", getUnfinishedStrokeWidth());
        bundle.putInt("inner_background_color", getInnerBackgroundColor());
        bundle.putInt("inner_drawable", getAttributeResourceId());
        return bundle;
    }

    public void setAttributeResourceId(int i) {
        this.h = i;
    }

    public void setDonut_progress(String str) {
        if (!TextUtils.isEmpty(str)) {
            setProgress(Integer.parseInt(str));
        }
    }

    public void setFinishedStrokeColor(int i) {
        this.p = i;
        invalidate();
    }

    public void setFinishedStrokeWidth(float f) {
        this.s = f;
        invalidate();
    }

    public void setInnerBackgroundColor(int i) {
        this.u = i;
        invalidate();
    }

    public void setInnerBottomText(String str) {
        this.A = str;
        invalidate();
    }

    public void setInnerBottomTextColor(int i) {
        this.m = i;
        invalidate();
    }

    public void setInnerBottomTextSize(float f) {
        this.z = f;
        invalidate();
    }

    public void setMax(int i) {
        if (i > 0) {
            this.o = i;
            invalidate();
        }
    }

    public void setPrefixText(String str) {
        this.v = str;
        invalidate();
    }

    public void setProgress(float f) {
        this.n = f;
        if (f > getMax()) {
            this.n %= getMax();
        }
        invalidate();
    }

    public void setShowText(boolean z) {
        this.i = z;
    }

    public void setStartingDegree(int i) {
        this.r = i;
        invalidate();
    }

    public void setSuffixText(String str) {
        this.w = str;
        invalidate();
    }

    public void setSuffixTextSize(float f) {
        this.k = f;
        invalidate();
    }

    public void setText(String str) {
        this.y = str;
        invalidate();
    }

    public void setTextColor(int i) {
        this.l = i;
        invalidate();
    }

    public void setTextSize(float f) {
        this.j = f;
        invalidate();
    }

    public void setUnfinishedStrokeColor(int i) {
        this.q = i;
        invalidate();
    }

    public void setUnfinishedStrokeWidth(float f) {
        this.t = f;
        invalidate();
    }

    public DonutProgress(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DonutProgress(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = new RectF();
        this.g = new RectF();
        this.h = 0;
        this.n = 0.0f;
        this.v = "";
        this.w = "%";
        this.y = null;
        this.D = Color.rgb(66, (int) CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 241);
        this.E = Color.rgb(204, 204, 204);
        this.F = Color.rgb(66, (int) CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 241);
        this.G = Color.rgb(66, (int) CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 241);
        this.H = m.b(18.0f);
        this.I = m.b(18.0f);
        this.J = m.a(4.0f);
        this.L = m.a(100.0f);
        this.C = m.a(10.0f);
        this.K = m.b(18.0f);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.DonutProgress, i, 0);
        a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        a();
    }

    protected void a(TypedArray typedArray) {
        this.p = typedArray.getColor(R$styleable.DonutProgress_donut_finished_color, this.D);
        this.q = typedArray.getColor(R$styleable.DonutProgress_donut_unfinished_color, this.E);
        this.i = typedArray.getBoolean(R$styleable.DonutProgress_donut_show_text, true);
        this.h = typedArray.getResourceId(R$styleable.DonutProgress_donut_inner_drawable, 0);
        setMax(typedArray.getInt(R$styleable.DonutProgress_donut_max, 100));
        setProgress(typedArray.getFloat(R$styleable.DonutProgress_donut_progress, 0.0f));
        this.s = typedArray.getDimension(R$styleable.DonutProgress_donut_finished_stroke_width, this.C);
        this.t = typedArray.getDimension(R$styleable.DonutProgress_donut_unfinished_stroke_width, this.C);
        if (this.i) {
            if (typedArray.getString(R$styleable.DonutProgress_donut_prefix_text) != null) {
                this.v = typedArray.getString(R$styleable.DonutProgress_donut_prefix_text);
            }
            if (typedArray.getString(R$styleable.DonutProgress_donut_suffix_text) != null) {
                this.w = typedArray.getString(R$styleable.DonutProgress_donut_suffix_text);
            }
            if (typedArray.getString(R$styleable.DonutProgress_donut_text) != null) {
                this.y = typedArray.getString(R$styleable.DonutProgress_donut_text);
            }
            this.l = typedArray.getColor(R$styleable.DonutProgress_donut_text_color, this.F);
            this.j = typedArray.getDimension(R$styleable.DonutProgress_donut_text_size, this.H);
            this.k = typedArray.getDimension(R$styleable.DonutProgress_donut_suffix_text_size, this.I);
            this.x = typedArray.getDimension(R$styleable.DonutProgress_donut_suffix_text_padding, this.J);
            this.z = typedArray.getDimension(R$styleable.DonutProgress_donut_inner_bottom_text_size, this.K);
            this.m = typedArray.getColor(R$styleable.DonutProgress_donut_inner_bottom_text_color, this.G);
            this.A = typedArray.getString(R$styleable.DonutProgress_donut_inner_bottom_text);
        }
        this.z = typedArray.getDimension(R$styleable.DonutProgress_donut_inner_bottom_text_size, this.K);
        this.m = typedArray.getColor(R$styleable.DonutProgress_donut_inner_bottom_text_color, this.G);
        this.A = typedArray.getString(R$styleable.DonutProgress_donut_inner_bottom_text);
        this.r = typedArray.getInt(R$styleable.DonutProgress_donut_circle_starting_degree, 0);
        this.u = typedArray.getColor(R$styleable.DonutProgress_donut_background_color, 0);
    }

    private int a(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int i2 = this.L;
        return mode == Integer.MIN_VALUE ? Math.min(i2, size) : i2;
    }
}
