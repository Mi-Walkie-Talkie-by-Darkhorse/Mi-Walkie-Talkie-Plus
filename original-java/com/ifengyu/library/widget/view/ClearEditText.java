package com.ifengyu.library.widget.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.CycleInterpolator;
import android.view.animation.TranslateAnimation;
import androidx.appcompat.widget.AppCompatEditText;
import com.ifengyu.library.R$attr;
import com.ifengyu.library.R$drawable;
import com.ifengyu.library.a.g;

/* loaded from: classes2.dex */
public class ClearEditText extends AppCompatEditText implements View.OnFocusChangeListener, TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f7197a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7198b;

    public ClearEditText(Context context) {
        this(context, null);
    }

    private void a() {
        Drawable drawable = getCompoundDrawables()[2];
        this.f7197a = drawable;
        if (drawable == null) {
            this.f7197a = getResources().getDrawable(R$drawable.common_btn_clear);
        }
        Drawable drawable2 = this.f7197a;
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f7197a.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        removeTextChangedListener(this);
        setOnFocusChangeListener(null);
        this.f7197a = null;
        g.a(ClearEditText.class.getSimpleName(), "onDetachedFromWindow");
        super.onDetachedFromWindow();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.f7198b = z;
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
        if (this.f7198b) {
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
                setError(null);
                setText((CharSequence) null);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void setClearIconVisible(boolean z) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], z ? this.f7197a : null, getCompoundDrawables()[3]);
    }

    public void setShakeAnimation() {
        setAnimation(a(5));
    }

    public ClearEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.editTextStyle);
    }

    public ClearEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    public static TranslateAnimation a(int i) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 10.0f, 0.0f, 0.0f);
        translateAnimation.setInterpolator(new CycleInterpolator(i));
        translateAnimation.setDuration(1000L);
        return translateAnimation;
    }
}
