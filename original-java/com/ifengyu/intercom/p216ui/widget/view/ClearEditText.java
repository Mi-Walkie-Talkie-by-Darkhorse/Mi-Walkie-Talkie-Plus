package com.ifengyu.intercom.p216ui.widget.view;

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
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.R$styleable;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.widget.view.ClearEditText */
/* loaded from: classes2.dex */
public class ClearEditText extends EditText implements View.OnFocusChangeListener, TextWatcher {

    /* renamed from: a */
    private Drawable f16129a;

    /* renamed from: b */
    private boolean f16130b;

    public ClearEditText(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    private int m8849a(int i) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return (int) ((i * displayMetrics.heightPixels) / 1280.0f);
    }

    /* renamed from: b */
    private void m8848b(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AutoFitSizeTextView);
        int integer = obtainStyledAttributes.getInteger(0, 25);
        if (MethodsUtils.m11308B(UIUtils.m8613e())) {
            setTextSize(2, MethodsUtils.m11306D(integer));
        } else {
            setTextSize(0, m8849a(integer));
        }
        obtainStyledAttributes.recycle();
        Drawable drawable = getCompoundDrawables()[2];
        this.f16129a = drawable;
        if (drawable == null) {
            this.f16129a = getResources().getDrawable(R.drawable.common_btn_clear);
        }
        Drawable drawable2 = this.f16129a;
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f16129a.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    /* renamed from: c */
    public static TranslateAnimation m8847c(int i) {
        TranslateAnimation translateAnimation = new TranslateAnimation(BitmapDescriptorFactory.HUE_RED, 10.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
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
        this.f16130b = z;
        if (z) {
            setClearIconVisible(getText().length() > 0);
        } else {
            setClearIconVisible(false);
        }
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.f16130b) {
            setClearIconVisible(charSequence.length() > 0);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() == 1 && getCompoundDrawables()[2] != null) {
            if ((motionEvent.getX() <= ((float) (getWidth() - getTotalPaddingRight())) || motionEvent.getX() >= ((float) (getWidth() - getPaddingRight()))) ? false : false) {
                setText("");
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void setClearIconVisible(boolean z) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], z ? this.f16129a : null, getCompoundDrawables()[3]);
    }

    public void setShakeAnimation() {
        setAnimation(m8847c(5));
    }

    public ClearEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842862);
    }

    public ClearEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m8848b(context, attributeSet);
    }
}
