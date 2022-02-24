package com.ifengyu.intercom.lite.c.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatImageView;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;
import com.qmuiteam.qmui.widget.dialog.b;

/* compiled from: EditTextDialogBuilder.java */
/* loaded from: classes2.dex */
public class d extends b.a {
    private TextWatcher A;
    private boolean B;
    private Drawable C;

    /* compiled from: EditTextDialogBuilder.java */
    /* loaded from: classes2.dex */
    class a implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EditText f5356a;

        a(EditText editText) {
            this.f5356a = editText;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (d.this.B) {
                d dVar = d.this;
                EditText editText = this.f5356a;
                dVar.a(editText, editText.getText().length() > 0);
            }
        }
    }

    /* compiled from: EditTextDialogBuilder.java */
    /* loaded from: classes2.dex */
    class b implements View.OnFocusChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EditText f5358a;

        b(EditText editText) {
            this.f5358a = editText;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            d.this.B = z;
            boolean z2 = false;
            if (z) {
                d dVar = d.this;
                EditText editText = this.f5358a;
                if (editText.getText().length() > 0) {
                    z2 = true;
                }
                dVar.a(editText, z2);
                return;
            }
            d.this.a(this.f5358a, false);
        }
    }

    /* compiled from: EditTextDialogBuilder.java */
    /* loaded from: classes2.dex */
    class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ((b.a) d.this).v.removeTextChangedListener(d.this.A);
            ((b.a) d.this).v.setOnFocusChangeListener(null);
        }
    }

    public d(Context context) {
        super(context);
        a(context.getResources().getDimensionPixelSize(R.dimen.lite_dialog_separator_height), 0, 0);
        b(androidx.core.content.b.a(context, (int) R.color.lite_dialog_color_action_separator));
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    protected void a(QMUIDialogRootLayout qMUIDialogRootLayout) {
        qMUIDialogRootLayout.setMinWidth(com.qmuiteam.qmui.util.d.f(a()) - com.qmuiteam.qmui.util.d.a(a(), 16));
    }

    @Override // com.qmuiteam.qmui.widget.dialog.b.a
    protected void a(AppCompatImageView appCompatImageView, final EditText editText) {
        editText.setSelection(editText.getText().length());
        editText.setBackgroundResource(R.drawable.bg_dialog_edittext);
        Drawable c2 = androidx.core.content.b.c(a(), R.drawable.input_icon_delete);
        this.C = c2;
        if (c2 != null) {
            c2.setBounds(0, 0, c2.getIntrinsicWidth(), this.C.getIntrinsicHeight());
            editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.ifengyu.intercom.lite.c.b.a
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return d.a(editText, view, motionEvent);
                }
            });
            editText.setTextSize(0, com.qmuiteam.qmui.util.d.a(a(), 14));
            a aVar = new a(editText);
            this.A = aVar;
            editText.addTextChangedListener(aVar);
            editText.setOnFocusChangeListener(new b(editText));
            editText.addOnAttachStateChangeListener(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(EditText editText, View view, MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() == 1 && editText.getCompoundDrawables()[2] != null) {
            if (motionEvent.getX() <= editText.getWidth() - editText.getTotalPaddingRight() || motionEvent.getX() >= editText.getWidth() - editText.getPaddingRight()) {
                z = false;
            }
            if (z) {
                editText.setError(null);
                editText.setText((CharSequence) null);
            }
        }
        return false;
    }

    protected void a(EditText editText, boolean z) {
        editText.setCompoundDrawables(editText.getCompoundDrawables()[0], editText.getCompoundDrawables()[1], z ? this.C : null, editText.getCompoundDrawables()[3]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.b.a, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    public void a(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        Window window = bVar.getWindow();
        if (window != null) {
            window.setGravity(81);
            window.setWindowAnimations(R.style.dialog_bottom_anim);
        }
        super.a(bVar, qMUIDialogRootLayout, context);
    }
}
