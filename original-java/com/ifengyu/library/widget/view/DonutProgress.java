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
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.library.R$styleable;
import com.ifengyu.library.utils.UIUtils;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.bouncycastle.i18n.TextBundle;

/* loaded from: classes2.dex */
public class DonutProgress extends View {

    /* renamed from: A */
    private String f16402A;

    /* renamed from: B */
    private float f16403B;

    /* renamed from: C */
    private final float f16404C;

    /* renamed from: D */
    private final int f16405D;

    /* renamed from: E */
    private final int f16406E;

    /* renamed from: F */
    private final int f16407F;

    /* renamed from: G */
    private final int f16408G;

    /* renamed from: H */
    private final float f16409H;

    /* renamed from: I */
    private final float f16410I;

    /* renamed from: J */
    private final int f16411J;

    /* renamed from: K */
    private final float f16412K;

    /* renamed from: L */
    private final int f16413L;

    /* renamed from: a */
    private Paint f16414a;

    /* renamed from: b */
    private Paint f16415b;

    /* renamed from: c */
    private Paint f16416c;

    /* renamed from: d */
    protected Paint f16417d;

    /* renamed from: e */
    protected Paint f16418e;

    /* renamed from: f */
    private RectF f16419f;

    /* renamed from: g */
    private RectF f16420g;

    /* renamed from: h */
    private int f16421h;

    /* renamed from: i */
    private boolean f16422i;

    /* renamed from: j */
    private float f16423j;

    /* renamed from: k */
    private float f16424k;

    /* renamed from: l */
    private int f16425l;

    /* renamed from: m */
    private int f16426m;

    /* renamed from: n */
    private float f16427n;

    /* renamed from: o */
    private int f16428o;

    /* renamed from: p */
    private int f16429p;

    /* renamed from: q */
    private int f16430q;

    /* renamed from: r */
    private int f16431r;

    /* renamed from: s */
    private float f16432s;

    /* renamed from: t */
    private float f16433t;

    /* renamed from: u */
    private int f16434u;

    /* renamed from: v */
    private String f16435v;

    /* renamed from: w */
    private String f16436w;

    /* renamed from: x */
    private float f16437x;

    /* renamed from: y */
    private String f16438y;

    /* renamed from: z */
    private float f16439z;

    public DonutProgress(Context context) {
        this(context, null);
    }

    /* renamed from: c */
    private int m8581c(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int i2 = this.f16413L;
        return mode == Integer.MIN_VALUE ? Math.min(i2, size) : i2;
    }

    private float getProgressAngle() {
        return (getProgress() / this.f16428o) * 360.0f;
    }

    /* renamed from: a */
    protected void m8583a(TypedArray typedArray) {
        this.f16429p = typedArray.getColor(R$styleable.DonutProgress_donut_finished_color, this.f16405D);
        this.f16430q = typedArray.getColor(R$styleable.DonutProgress_donut_unfinished_color, this.f16406E);
        this.f16422i = typedArray.getBoolean(R$styleable.DonutProgress_donut_show_text, true);
        this.f16421h = typedArray.getResourceId(R$styleable.DonutProgress_donut_inner_drawable, 0);
        setMax(typedArray.getInt(R$styleable.DonutProgress_donut_max, 100));
        setProgress(typedArray.getFloat(R$styleable.DonutProgress_donut_progress, BitmapDescriptorFactory.HUE_RED));
        this.f16432s = typedArray.getDimension(R$styleable.DonutProgress_donut_finished_stroke_width, this.f16404C);
        this.f16433t = typedArray.getDimension(R$styleable.DonutProgress_donut_unfinished_stroke_width, this.f16404C);
        if (this.f16422i) {
            int i = R$styleable.DonutProgress_donut_prefix_text;
            if (typedArray.getString(i) != null) {
                this.f16435v = typedArray.getString(i);
            }
            int i2 = R$styleable.DonutProgress_donut_suffix_text;
            if (typedArray.getString(i2) != null) {
                this.f16436w = typedArray.getString(i2);
            }
            int i3 = R$styleable.DonutProgress_donut_text;
            if (typedArray.getString(i3) != null) {
                this.f16438y = typedArray.getString(i3);
            }
            this.f16425l = typedArray.getColor(R$styleable.DonutProgress_donut_text_color, this.f16407F);
            this.f16423j = typedArray.getDimension(R$styleable.DonutProgress_donut_text_size, this.f16409H);
            this.f16424k = typedArray.getDimension(R$styleable.DonutProgress_donut_suffix_text_size, this.f16410I);
            this.f16437x = typedArray.getDimension(R$styleable.DonutProgress_donut_suffix_text_padding, this.f16411J);
            this.f16439z = typedArray.getDimension(R$styleable.DonutProgress_donut_inner_bottom_text_size, this.f16412K);
            this.f16426m = typedArray.getColor(R$styleable.DonutProgress_donut_inner_bottom_text_color, this.f16408G);
            this.f16402A = typedArray.getString(R$styleable.DonutProgress_donut_inner_bottom_text);
        }
        this.f16439z = typedArray.getDimension(R$styleable.DonutProgress_donut_inner_bottom_text_size, this.f16412K);
        this.f16426m = typedArray.getColor(R$styleable.DonutProgress_donut_inner_bottom_text_color, this.f16408G);
        this.f16402A = typedArray.getString(R$styleable.DonutProgress_donut_inner_bottom_text);
        this.f16431r = typedArray.getInt(R$styleable.DonutProgress_donut_circle_starting_degree, 0);
        this.f16434u = typedArray.getColor(R$styleable.DonutProgress_donut_background_color, 0);
    }

    /* renamed from: b */
    protected void m8582b() {
        if (this.f16422i) {
            TextPaint textPaint = new TextPaint();
            this.f16417d = textPaint;
            textPaint.setColor(this.f16425l);
            this.f16417d.setTextSize(this.f16423j);
            this.f16417d.setAntiAlias(true);
            TextPaint textPaint2 = new TextPaint();
            this.f16418e = textPaint2;
            textPaint2.setColor(this.f16426m);
            this.f16418e.setTextSize(this.f16439z);
            this.f16418e.setAntiAlias(true);
        }
        Paint paint = new Paint();
        this.f16414a = paint;
        paint.setColor(this.f16429p);
        this.f16414a.setStyle(Paint.Style.STROKE);
        this.f16414a.setAntiAlias(true);
        this.f16414a.setStrokeWidth(this.f16432s);
        Paint paint2 = new Paint();
        this.f16415b = paint2;
        paint2.setColor(this.f16430q);
        this.f16415b.setStyle(Paint.Style.STROKE);
        this.f16415b.setAntiAlias(true);
        this.f16415b.setStrokeWidth(this.f16433t);
        Paint paint3 = new Paint();
        this.f16416c = paint3;
        paint3.setColor(this.f16434u);
        this.f16416c.setAntiAlias(true);
    }

    public int getAttributeResourceId() {
        return this.f16421h;
    }

    public int getFinishedStrokeColor() {
        return this.f16429p;
    }

    public float getFinishedStrokeWidth() {
        return this.f16432s;
    }

    public int getInnerBackgroundColor() {
        return this.f16434u;
    }

    public String getInnerBottomText() {
        return this.f16402A;
    }

    public int getInnerBottomTextColor() {
        return this.f16426m;
    }

    public float getInnerBottomTextSize() {
        return this.f16439z;
    }

    public int getMax() {
        return this.f16428o;
    }

    public String getPrefixText() {
        return this.f16435v;
    }

    public float getProgress() {
        return this.f16427n;
    }

    public int getStartingDegree() {
        return this.f16431r;
    }

    public String getSuffixText() {
        return this.f16436w;
    }

    public float getSuffixTextSize() {
        return this.f16424k;
    }

    public String getText() {
        return this.f16438y;
    }

    public int getTextColor() {
        return this.f16425l;
    }

    public float getTextSize() {
        return this.f16423j;
    }

    public int getUnfinishedStrokeColor() {
        return this.f16430q;
    }

    public float getUnfinishedStrokeWidth() {
        return this.f16433t;
    }

    @Override // android.view.View
    public void invalidate() {
        m8582b();
        super.invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap decodeResource;
        super.onDraw(canvas);
        float max = Math.max(this.f16432s, this.f16433t);
        this.f16419f.set(max, max, getWidth() - max, getHeight() - max);
        this.f16420g.set(max, max, getWidth() - max, getHeight() - max);
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, ((getWidth() - Math.min(this.f16432s, this.f16433t)) + Math.abs(this.f16432s - this.f16433t)) / 2.0f, this.f16416c);
        canvas.drawArc(this.f16419f, getStartingDegree(), getProgressAngle(), false, this.f16414a);
        canvas.drawArc(this.f16420g, getProgressAngle() + getStartingDegree(), 360.0f - getProgressAngle(), false, this.f16415b);
        if (this.f16422i) {
            String str = this.f16438y;
            if (str == null) {
                str = this.f16435v + ((int) this.f16427n);
            }
            if (!TextUtils.isEmpty(str)) {
                this.f16417d.setColor(this.f16425l);
                this.f16417d.setTextSize(this.f16423j);
                float descent = this.f16417d.descent() + this.f16417d.ascent();
                float height = (getHeight() - descent) / 2.0f;
                canvas.drawText(str, (getWidth() - this.f16417d.measureText(str)) / 2.0f, height, this.f16417d);
                this.f16417d.setTextSize(this.f16424k);
                canvas.drawText(this.f16436w, (getWidth() / 2.0f) + this.f16417d.measureText(str) + this.f16437x, (height + descent) - (this.f16417d.descent() + this.f16417d.ascent()), this.f16417d);
            }
            if (!TextUtils.isEmpty(getInnerBottomText())) {
                this.f16418e.setTextSize(this.f16439z);
                canvas.drawText(getInnerBottomText(), (getWidth() - this.f16418e.measureText(getInnerBottomText())) / 2.0f, (getHeight() - this.f16403B) - ((this.f16417d.descent() + this.f16417d.ascent()) / 2.0f), this.f16418e);
            }
        }
        if (this.f16421h != 0) {
            canvas.drawBitmap(BitmapFactory.decodeResource(getResources(), this.f16421h), (getWidth() - decodeResource.getWidth()) / 2.0f, (getHeight() - decodeResource.getHeight()) / 2.0f, (Paint) null);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(m8581c(i), m8581c(i2));
        this.f16403B = getHeight() - ((getHeight() * 3) / 4);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f16425l = bundle.getInt("text_color");
            this.f16423j = bundle.getFloat("text_size");
            this.f16439z = bundle.getFloat("inner_bottom_text_size");
            this.f16402A = bundle.getString("inner_bottom_text");
            this.f16426m = bundle.getInt("inner_bottom_text_color");
            this.f16429p = bundle.getInt("finished_stroke_color");
            this.f16430q = bundle.getInt("unfinished_stroke_color");
            this.f16432s = bundle.getFloat("finished_stroke_width");
            this.f16433t = bundle.getFloat("unfinished_stroke_width");
            this.f16434u = bundle.getInt("inner_background_color");
            this.f16421h = bundle.getInt("inner_drawable");
            m8582b();
            setMax(bundle.getInt("max"));
            setStartingDegree(bundle.getInt("starting_degree"));
            setProgress(bundle.getFloat("progress"));
            this.f16435v = bundle.getString("prefix");
            this.f16436w = bundle.getString("suffix");
            this.f16438y = bundle.getString(TextBundle.TEXT_ENTRY);
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
        this.f16421h = i;
    }

    public void setDonut_progress(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        setProgress(Integer.parseInt(str));
    }

    public void setFinishedStrokeColor(int i) {
        this.f16429p = i;
        invalidate();
    }

    public void setFinishedStrokeWidth(float f) {
        this.f16432s = f;
        invalidate();
    }

    public void setInnerBackgroundColor(int i) {
        this.f16434u = i;
        invalidate();
    }

    public void setInnerBottomText(String str) {
        this.f16402A = str;
        invalidate();
    }

    public void setInnerBottomTextColor(int i) {
        this.f16426m = i;
        invalidate();
    }

    public void setInnerBottomTextSize(float f) {
        this.f16439z = f;
        invalidate();
    }

    public void setMax(int i) {
        if (i > 0) {
            this.f16428o = i;
            invalidate();
        }
    }

    public void setPrefixText(String str) {
        this.f16435v = str;
        invalidate();
    }

    public void setProgress(float f) {
        this.f16427n = f;
        if (f > getMax()) {
            this.f16427n %= getMax();
        }
        invalidate();
    }

    public void setShowText(boolean z) {
        this.f16422i = z;
    }

    public void setStartingDegree(int i) {
        this.f16431r = i;
        invalidate();
    }

    public void setSuffixText(String str) {
        this.f16436w = str;
        invalidate();
    }

    public void setSuffixTextSize(float f) {
        this.f16424k = f;
        invalidate();
    }

    public void setText(String str) {
        this.f16438y = str;
        invalidate();
    }

    public void setTextColor(int i) {
        this.f16425l = i;
        invalidate();
    }

    public void setTextSize(float f) {
        this.f16423j = f;
        invalidate();
    }

    public void setUnfinishedStrokeColor(int i) {
        this.f16430q = i;
        invalidate();
    }

    public void setUnfinishedStrokeWidth(float f) {
        this.f16433t = f;
        invalidate();
    }

    public DonutProgress(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DonutProgress(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16419f = new RectF();
        this.f16420g = new RectF();
        this.f16421h = 0;
        this.f16427n = BitmapDescriptorFactory.HUE_RED;
        this.f16435v = "";
        this.f16436w = "%";
        this.f16438y = null;
        this.f16405D = Color.rgb(66, (int) CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 241);
        this.f16406E = Color.rgb(204, 204, 204);
        this.f16407F = Color.rgb(66, (int) CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 241);
        this.f16408G = Color.rgb(66, (int) CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 241);
        this.f16409H = UIUtils.m8594x(18.0f);
        this.f16410I = UIUtils.m8594x(18.0f);
        this.f16411J = UIUtils.m8616b(4.0f);
        this.f16413L = UIUtils.m8616b(100.0f);
        this.f16404C = UIUtils.m8616b(10.0f);
        this.f16412K = UIUtils.m8594x(18.0f);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.DonutProgress, i, 0);
        m8583a(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        m8582b();
    }
}
