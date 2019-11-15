package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import com.sina.weibo.sdk.utils.f;

public class LetterIndexBar extends View {
    private int a;
    private Paint b = new Paint();
    private String[] c;
    private boolean[] d;
    private int e = 27;
    private int f;
    private a g;
    private int h;
    private boolean i;
    private RectF j;
    private int k;
    private Drawable l;

    public interface a {
        void a(int i);
    }

    public LetterIndexBar(Context context) {
        super(context);
        a();
    }

    public LetterIndexBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }

    public LetterIndexBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        this.b.setAntiAlias(true);
        this.b.setStyle(Style.FILL);
        this.b.setColor(-10658467);
        this.k = f.a(getContext(), 13);
    }

    public void setIndexMark(boolean[] zArr) {
        if (zArr != null) {
            this.d = zArr;
            invalidate();
        }
    }

    public void setIndexLetter(String[] strArr) {
        if (strArr != null) {
            this.c = strArr;
            this.e = this.c.length;
            this.f = -1;
            invalidate();
        }
    }

    public void setIndexChangeListener(a aVar) {
        this.g = aVar;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2;
        String valueOf;
        int i3 = 0;
        super.onDraw(canvas);
        if (this.i) {
            int color = this.b.getColor();
            this.b.setColor(-2005436536);
            canvas.drawRoundRect(this.j, (float) (getMeasuredWidth() / 2), (float) (getMeasuredWidth() / 2), this.b);
            this.b.setColor(color);
        }
        if (this.k > this.a) {
            i2 = this.a;
        } else {
            i2 = this.k;
        }
        this.b.setTextSize((float) i2);
        if (this.c == null) {
            char c2 = 'A';
            while (i3 < this.e) {
                int paddingTop = this.h + (this.a * i3) + getPaddingTop() + i2;
                if (this.d == null || this.d[i3]) {
                    if (i3 == this.e - 1) {
                        valueOf = "#";
                    } else {
                        char c3 = (char) (c2 + 1);
                        valueOf = String.valueOf(c2);
                        c2 = c3;
                    }
                    canvas.drawText(valueOf, (float) ((getMeasuredWidth() - ((int) this.b.measureText(valueOf))) / 2), (float) paddingTop, this.b);
                }
                i3++;
            }
            return;
        }
        while (i3 < this.e) {
            int paddingTop2 = (this.a * i3) + getPaddingTop() + i2 + this.h;
            if (this.d == null || this.d[i3]) {
                String str = this.c[i3];
                if (str.equals("")) {
                    int measureText = (int) this.b.measureText("M");
                    int measuredWidth = (getMeasuredWidth() - measureText) / 2;
                    this.l.setBounds(measuredWidth, paddingTop2 - measuredWidth, measureText + measuredWidth, (paddingTop2 + measureText) - measuredWidth);
                    this.l.draw(canvas);
                } else {
                    canvas.drawText(str, (float) ((getMeasuredWidth() - ((int) this.b.measureText(str))) / 2), (float) paddingTop2, this.b);
                }
            }
            i3++;
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int size = MeasureSpec.getSize(i3);
        this.a = ((size - getPaddingTop()) - getPaddingBottom()) / this.e;
        this.h = (int) ((((float) this.a) - this.b.getTextSize()) / 2.0f);
        setMeasuredDimension(this.k + getPaddingLeft() + getPaddingRight(), i3);
        this.j = new RectF(0.0f, (float) getPaddingTop(), (float) getMeasuredWidth(), (float) ((size - getPaddingTop()) - getPaddingBottom()));
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
            case 2:
                this.i = true;
                int y = (((int) motionEvent.getY()) - getPaddingTop()) / this.a;
                if (y != this.f && ((this.d == null || this.d[y]) && y < this.e && y >= 0)) {
                    this.f = y;
                    if (this.g != null) {
                        this.g.a(this.f);
                        break;
                    }
                }
                break;
            case 1:
            case 3:
            case 4:
                this.i = false;
                break;
        }
        invalidate();
        return true;
    }
}
