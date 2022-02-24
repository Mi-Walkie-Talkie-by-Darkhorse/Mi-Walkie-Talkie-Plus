package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.CycleInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;

/* loaded from: classes2.dex */
public class ClearEditText extends EditText implements View.OnFocusChangeListener, TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f7045a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7046b;

    public ClearEditText(Context context) {
        this(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AutoFitSizeTextView);
        int integer = obtainStyledAttributes.getInteger(0, 25);
        if (c0.c(k0.a())) {
            setTextSize(2, c0.b(integer));
        } else {
            setTextSize(0, a(integer));
        }
        obtainStyledAttributes.recycle();
        Drawable drawable = getCompoundDrawables()[2];
        this.f7045a = drawable;
        if (drawable == null) {
            this.f7045a = getResources().getDrawable(R.drawable.common_btn_clear);
        }
        Drawable drawable2 = this.f7045a;
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f7045a.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    public static TranslateAnimation b(int i) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 10.0f, 0.0f, 0.0f);
        translateAnimation.setInterpolator(new CycleInterpolator(i));
        translateAnimation.setDuration(1000L);
        return translateAnimation;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.f7046b = z;
        boolean z2 = false;
        if (z) {
            if (getText().length() > 0) {
                z2 = true;
            }
            setClearIconVisible(z2);
            return;
        }
        setClearIconVisible(false);
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.f7046b) {
            setClearIconVisible(charSequence.length() > 0);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() == 1 && getCompoundDrawables()[2] != null) {
            if (motionEvent.getX() <= getWidth() - getTotalPaddingRight() || motionEvent.getX() >= getWidth() - getPaddingRight()) {
                z = false;
            }
            if (z) {
                setText("");
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void setClearIconVisible(boolean z) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], z ? this.f7045a : null, getCompoundDrawables()[3]);
    }

    public void setShakeAnimation() {
        setAnimation(b(5));
    }

    public ClearEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842862);
    }

    public ClearEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private int a(int i) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return (int) ((i * displayMetrics.heightPixels) / 1280.0f);
    }
}
