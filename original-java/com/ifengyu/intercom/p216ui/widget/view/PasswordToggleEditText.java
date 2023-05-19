package com.ifengyu.intercom.p216ui.widget.view;

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

/* renamed from: com.ifengyu.intercom.ui.widget.view.PasswordToggleEditText */
/* loaded from: classes2.dex */
public class PasswordToggleEditText extends AppCompatEditText {

    /* renamed from: a */
    private boolean f16239a;

    /* renamed from: b */
    private Drawable f16240b;

    /* renamed from: c */
    private Drawable f16241c;

    public PasswordToggleEditText(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    private void m8767a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.PasswordToggleEditText, i, 0);
        this.f16240b = obtainStyledAttributes.getDrawable(1);
        this.f16241c = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        if (this.f16240b == null || this.f16241c == null) {
            return;
        }
        m8766b(false);
    }

    /* renamed from: b */
    private void m8766b(boolean z) {
        Drawable drawable = z ? this.f16240b : this.f16241c;
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], drawable, getCompoundDrawables()[3]);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (getCompoundDrawables()[2] != null) {
            boolean z = motionEvent.getX() > ((float) ((getWidth() - getPaddingRight()) - (this.f16239a ? this.f16240b : this.f16241c).getIntrinsicWidth())) && motionEvent.getX() < ((float) (getWidth() - getPaddingRight()));
            if (motionEvent.getAction() == 1 && z) {
                if (this.f16239a) {
                    this.f16239a = false;
                    m8766b(false);
                    setTransformationMethod(PasswordTransformationMethod.getInstance());
                    postInvalidate();
                    setSelection(getText().length());
                } else {
                    this.f16239a = true;
                    m8766b(true);
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
        this.f16239a = false;
        m8767a(context, attributeSet, i);
    }
}
