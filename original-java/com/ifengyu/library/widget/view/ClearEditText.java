package com.ifengyu.library.widget.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.AppCompatEditText;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.animation.CycleInterpolator;
import android.view.animation.TranslateAnimation;
import com.ifengyu.library.R;
import com.ifengyu.library.util.c;

public class ClearEditText extends AppCompatEditText implements TextWatcher, OnFocusChangeListener {
    private Drawable a;
    private boolean b;

    public ClearEditText(Context context) {
        this(context, null);
    }

    public ClearEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    public ClearEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        this.a = getCompoundDrawables()[2];
        if (this.a == null) {
            this.a = getResources().getDrawable(R.drawable.common_btn_clear);
        }
        this.a.setBounds(0, 0, this.a.getIntrinsicWidth(), this.a.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        removeTextChangedListener(this);
        setOnFocusChangeListener(null);
        this.a = null;
        c.a(ClearEditText.class.getSimpleName(), "onDetachedFromWindow");
        super.onDetachedFromWindow();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() == 1 && getCompoundDrawables()[2] != null) {
            if (motionEvent.getX() <= ((float) (getWidth() - getTotalPaddingRight())) || motionEvent.getX() >= ((float) (getWidth() - getPaddingRight()))) {
                z = false;
            }
            if (z) {
                setError(null);
                setText(null);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void onFocusChange(View view, boolean z) {
        boolean z2 = false;
        this.b = z;
        if (z) {
            if (getText().length() > 0) {
                z2 = true;
            }
            setClearIconVisible(z2);
            return;
        }
        setClearIconVisible(false);
    }

    /* access modifiers changed from: protected */
    public void setClearIconVisible(boolean z) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], z ? this.a : null, getCompoundDrawables()[3]);
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.b) {
            setClearIconVisible(charSequence.length() > 0);
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
    }

    public void setShakeAnimation() {
        setAnimation(a(5));
    }

    public static TranslateAnimation a(int i) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 10.0f, 0.0f, 0.0f);
        translateAnimation.setInterpolator(new CycleInterpolator((float) i));
        translateAnimation.setDuration(1000);
        return translateAnimation;
    }
}
