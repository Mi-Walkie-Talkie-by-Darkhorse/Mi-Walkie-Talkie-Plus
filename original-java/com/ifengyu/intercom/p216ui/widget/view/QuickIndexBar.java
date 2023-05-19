package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.view.QuickIndexBar */
/* loaded from: classes2.dex */
public class QuickIndexBar extends View {

    /* renamed from: g */
    private static final String[] f16258g = {"↑", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "#"};

    /* renamed from: a */
    private Paint f16259a;

    /* renamed from: b */
    private float f16260b;

    /* renamed from: c */
    private int f16261c;

    /* renamed from: d */
    private float f16262d;

    /* renamed from: e */
    private int f16263e;

    /* renamed from: f */
    private InterfaceC4958a f16264f;

    /* renamed from: com.ifengyu.intercom.ui.widget.view.QuickIndexBar$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4958a {
        /* renamed from: a */
        void mo8763a(String str);

        /* renamed from: b */
        void mo8762b();
    }

    public QuickIndexBar(Context context) {
        this(context, null);
    }

    public InterfaceC4958a getOnLetterUpdateListener() {
        return this.f16264f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i = 0;
        while (true) {
            String[] strArr = f16258g;
            if (i >= strArr.length) {
                return;
            }
            String str = strArr[i];
            Rect rect = new Rect();
            this.f16259a.getTextBounds(str, 0, str.length(), rect);
            int height = rect.height();
            float f = this.f16262d;
            canvas.drawText(str, (int) ((this.f16261c / 2.0f) - (this.f16259a.measureText(str) / 2.0f)), (int) ((f / 2.0f) + (height / 2.0f) + (i * f)), this.f16259a);
            i++;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f16261c = getMeasuredWidth();
        this.f16262d = (getMeasuredHeight() * 1.0f) / f16258g.length;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        InterfaceC4958a interfaceC4958a;
        InterfaceC4958a interfaceC4958a2;
        int action = motionEvent.getAction();
        if (action == 0) {
            int y = (int) (motionEvent.getY() / this.f16262d);
            if (y >= 0) {
                String[] strArr = f16258g;
                if (y < strArr.length && y != this.f16263e && (interfaceC4958a = this.f16264f) != null) {
                    interfaceC4958a.mo8763a(strArr[y]);
                    this.f16263e = y;
                }
            }
            setBackgroundColor(getResources().getColor(R.color.black15));
            return true;
        } else if (action != 2) {
            this.f16263e = -1;
            InterfaceC4958a interfaceC4958a3 = this.f16264f;
            if (interfaceC4958a3 != null) {
                interfaceC4958a3.mo8762b();
            }
            setBackgroundColor(0);
            return true;
        } else {
            int y2 = (int) (motionEvent.getY() / this.f16262d);
            if (y2 >= 0) {
                String[] strArr2 = f16258g;
                if (y2 >= strArr2.length || y2 == this.f16263e || (interfaceC4958a2 = this.f16264f) == null) {
                    return true;
                }
                interfaceC4958a2.mo8763a(strArr2[y2]);
                this.f16263e = y2;
                return true;
            }
            return true;
        }
    }

    public void setOnLetterUpdateListener(InterfaceC4958a interfaceC4958a) {
        this.f16264f = interfaceC4958a;
    }

    public QuickIndexBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QuickIndexBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16260b = UIUtils.m8594x(8.0f);
        this.f16263e = -1;
        Paint paint = new Paint(1);
        this.f16259a = paint;
        paint.setColor(getResources().getColor(R.color.gray_2));
        this.f16259a.setTextSize(this.f16260b);
    }
}
