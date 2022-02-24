package com.ifengyu.intercom.ui.widget.view;

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

/* loaded from: classes2.dex */
public class FixedEditText extends AppCompatEditText implements View.OnFocusChangeListener, TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    private int f7053a;

    /* renamed from: b  reason: collision with root package name */
    private String f7054b;

    /* renamed from: c  reason: collision with root package name */
    private int f7055c;
    private Drawable d;
    private boolean e;

    public FixedEditText(Context context) {
        this(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FixedEditText);
            this.f7054b = obtainStyledAttributes.getString(1);
            this.f7055c = obtainStyledAttributes.getColor(2, R.color.black50);
            this.d = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            this.f7053a = getPaddingLeft();
            setPadding(!TextUtils.isEmpty(this.f7054b) ? ((int) getPaint().measureText(this.f7054b)) + this.f7053a : 0, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        if (this.d == null) {
            this.d = getCompoundDrawables()[2];
        }
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.d.getIntrinsicHeight());
            setClearIconVisible(false);
            setOnFocusChangeListener(this);
            addTextChangedListener(this);
        }
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
        this.d = null;
        super.onDetachedFromWindow();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!TextUtils.isEmpty(this.f7054b)) {
            TextPaint paint = getPaint();
            paint.setColor(this.f7055c);
            canvas.drawText(this.f7054b, this.f7053a, getBaseline(), paint);
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.e = z;
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
        if (this.e) {
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
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], z ? this.d : null, getCompoundDrawables()[3]);
    }

    public void setPrefix(String str) {
        this.f7054b = str;
        this.f7053a = getPaddingLeft();
        setPadding(((int) getPaint().measureText(this.f7054b)) + this.f7053a, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        invalidate();
    }

    public void setPrefixColor(@ColorRes int i) {
        getPaint().setColor(getResources().getColor(i, null));
        invalidate();
    }

    public FixedEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public FixedEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }
}
