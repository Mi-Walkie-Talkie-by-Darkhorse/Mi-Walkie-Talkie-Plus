package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorRes;
import androidx.appcompat.widget.AppCompatEditText;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.view.FixedEditText */
/* loaded from: classes2.dex */
public class FixedEditText extends AppCompatEditText implements View.OnFocusChangeListener, TextWatcher {

    /* renamed from: a */
    private int f16140a;

    /* renamed from: b */
    private String f16141b;

    /* renamed from: c */
    private int f16142c;

    /* renamed from: d */
    private Drawable f16143d;

    /* renamed from: e */
    private boolean f16144e;

    /* renamed from: f */
    private InterfaceC4948a f16145f;

    /* renamed from: com.ifengyu.intercom.ui.widget.view.FixedEditText$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4948a {
        /* renamed from: a */
        void mo8844a();

        /* renamed from: b */
        void mo8843b(boolean z);
    }

    public FixedEditText(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    private void m8845a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FixedEditText);
            this.f16141b = obtainStyledAttributes.getString(1);
            this.f16142c = obtainStyledAttributes.getColor(2, UIUtils.m8614d(R.color.black));
            this.f16143d = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            int paddingLeft = getPaddingLeft();
            this.f16140a = paddingLeft;
            if (!TextUtils.isEmpty(this.f16141b)) {
                paddingLeft = ((int) getPaint().measureText(this.f16141b)) + this.f16140a;
            }
            setPadding(paddingLeft, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        if (this.f16143d == null) {
            this.f16143d = getCompoundDrawables()[2];
        }
        Drawable drawable = this.f16143d;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f16143d.getIntrinsicHeight());
            setClearIconVisible(false);
            setOnFocusChangeListener(this);
            addTextChangedListener(this);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        InterfaceC4948a interfaceC4948a = this.f16145f;
        if (interfaceC4948a != null) {
            interfaceC4948a.mo8844a();
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (TextUtils.isEmpty(this.f16141b)) {
            return;
        }
        TextPaint paint = getPaint();
        paint.setColor(this.f16142c);
        canvas.drawText(this.f16141b, this.f16140a, getBaseline(), paint);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.f16144e = z;
        if (z) {
            setClearIconVisible(getText().length() > 0);
        } else {
            setClearIconVisible(false);
        }
        InterfaceC4948a interfaceC4948a = this.f16145f;
        if (interfaceC4948a != null) {
            interfaceC4948a.mo8843b(z);
        }
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.f16144e) {
            setClearIconVisible(charSequence.length() > 0);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() == 1 && getCompoundDrawables()[2] != null) {
            if ((motionEvent.getX() <= ((float) (getWidth() - getTotalPaddingRight())) || motionEvent.getX() >= ((float) (getWidth() - getPaddingRight()))) ? false : false) {
                setError(null);
                setText((CharSequence) null);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void setClearIconVisible(boolean z) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], z ? this.f16143d : null, getCompoundDrawables()[3]);
    }

    public void setListener(InterfaceC4948a interfaceC4948a) {
        this.f16145f = interfaceC4948a;
    }

    public void setPrefix(String str) {
        this.f16141b = str;
        this.f16140a = getPaddingLeft();
        setPadding(((int) getPaint().measureText(this.f16141b)) + this.f16140a, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        invalidate();
    }

    public void setPrefixColor(@ColorRes int i) {
        getPaint().setColor(UIUtils.m8614d(i));
        invalidate();
    }

    public FixedEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m8845a(context, attributeSet);
    }

    public FixedEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m8845a(context, attributeSet);
    }
}
