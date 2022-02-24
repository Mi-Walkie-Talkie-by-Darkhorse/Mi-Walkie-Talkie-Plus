package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Selection;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatEditText;
import com.ifengyu.intercom.R$styleable;

/* loaded from: classes2.dex */
public class PasswordToggleEditText extends AppCompatEditText {

    /* renamed from: a  reason: collision with root package name */
    private boolean f7065a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f7066b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f7067c;

    public PasswordToggleEditText(Context context) {
        this(context, null);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.PasswordToggleEditText, i, 0);
        this.f7066b = obtainStyledAttributes.getDrawable(1);
        this.f7067c = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        if (this.f7066b != null && this.f7067c != null) {
            a(false);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (getCompoundDrawables()[2] != null) {
            boolean z = motionEvent.getX() > ((float) ((getWidth() - getPaddingRight()) - (this.f7065a ? this.f7066b : this.f7067c).getIntrinsicWidth())) && motionEvent.getX() < ((float) (getWidth() - getPaddingRight()));
            if (motionEvent.getAction() == 1 && z) {
                if (this.f7065a) {
                    this.f7065a = false;
                    a(false);
                    setTransformationMethod(PasswordTransformationMethod.getInstance());
                    postInvalidate();
                    setSelection(getText().length());
                } else {
                    this.f7065a = true;
                    a(true);
                    setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                    postInvalidate();
                    Editable text = getText();
                    if (text != null) {
                        Selection.setSelection(text, text.length());
                    }
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public PasswordToggleEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842862);
    }

    public PasswordToggleEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7065a = false;
        a(context, attributeSet, i);
    }

    private void a(boolean z) {
        Drawable drawable = z ? this.f7066b : this.f7067c;
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], drawable, getCompoundDrawables()[3]);
    }
}
