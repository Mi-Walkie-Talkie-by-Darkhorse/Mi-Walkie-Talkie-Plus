package com.ifengyu.intercom.p205m.p207b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.layout.QMUIButton;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.QMUIDisplayHelper;
import com.qmuiteam.qmui.util.QMUIResHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogRootLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;

/* renamed from: com.ifengyu.intercom.m.b.e */
/* loaded from: classes2.dex */
public class EditTextDialogBuilder extends QMUIDialog.C5255a {

    /* renamed from: A */
    private TextWatcher f14356A;

    /* renamed from: B */
    private boolean f14357B;

    /* renamed from: C */
    private Drawable f14358C;

    /* renamed from: D */
    private int f14359D;

    /* compiled from: EditTextDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.e$a */
    /* loaded from: classes2.dex */
    class C4116a implements TextWatcher {

        /* renamed from: a */
        final /* synthetic */ EditText f14360a;

        C4116a(EditText editText) {
            this.f14360a = editText;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (EditTextDialogBuilder.this.f14357B) {
                EditTextDialogBuilder editTextDialogBuilder = EditTextDialogBuilder.this;
                EditText editText = this.f14360a;
                editTextDialogBuilder.m11428S(editText, editText.getText().length() > 0);
            }
        }
    }

    /* compiled from: EditTextDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.e$b */
    /* loaded from: classes2.dex */
    class View$OnFocusChangeListenerC4117b implements View.OnFocusChangeListener {

        /* renamed from: a */
        final /* synthetic */ EditText f14362a;

        View$OnFocusChangeListenerC4117b(EditText editText) {
            this.f14362a = editText;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            EditTextDialogBuilder.this.f14357B = z;
            if (z) {
                EditTextDialogBuilder editTextDialogBuilder = EditTextDialogBuilder.this;
                EditText editText = this.f14362a;
                editTextDialogBuilder.m11428S(editText, editText.getText().length() > 0);
                return;
            }
            EditTextDialogBuilder.this.m11428S(this.f14362a, false);
        }
    }

    /* compiled from: EditTextDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.e$c */
    /* loaded from: classes2.dex */
    class View$OnAttachStateChangeListenerC4118c implements View.OnAttachStateChangeListener {
        View$OnAttachStateChangeListenerC4118c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ((QMUIDialog.C5255a) EditTextDialogBuilder.this).f17770v.removeTextChangedListener(EditTextDialogBuilder.this.f14356A);
            ((QMUIDialog.C5255a) EditTextDialogBuilder.this).f17770v.setOnFocusChangeListener(null);
        }
    }

    public EditTextDialogBuilder(Context context) {
        super(context);
        this.f14359D = 0;
    }

    /* renamed from: Q */
    private QMUIButton m11430Q(QMUILinearLayout qMUILinearLayout) {
        while (this.f14359D < qMUILinearLayout.getChildCount()) {
            View childAt = qMUILinearLayout.getChildAt(this.f14359D);
            this.f14359D++;
            if (childAt instanceof QMUIButton) {
                return (QMUIButton) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: R */
    public static /* synthetic */ boolean m11429R(EditText editText, View view, MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() == 1 && editText.getCompoundDrawables()[2] != null) {
            if ((motionEvent.getX() <= ((float) (editText.getWidth() - editText.getTotalPaddingRight())) || motionEvent.getX() >= ((float) (editText.getWidth() - editText.getPaddingRight()))) ? false : false) {
                editText.setError(null);
                editText.setText((CharSequence) null);
            }
        }
        return false;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.C5255a
    /* renamed from: D */
    protected void mo7265D(AppCompatImageView appCompatImageView, final EditText editText) {
        editText.setSelection(editText.getText().length());
        editText.setBackgroundResource(R.drawable.bg_dialog_edittext);
        Drawable m23927d = ContextCompat.m23927d(m7294h(), R.drawable.icon_delete_gray);
        this.f14358C = m23927d;
        if (m23927d != null) {
            m23927d.setBounds(0, 0, m23927d.getIntrinsicWidth(), this.f14358C.getIntrinsicHeight());
            editText.setOnTouchListener(new View.OnTouchListener() { // from class: com.ifengyu.intercom.m.b.a
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return EditTextDialogBuilder.m11429R(editText, view, motionEvent);
                }
            });
            editText.setTextSize(0, QMUIDisplayHelper.m7555a(m7294h(), 14));
            C4116a c4116a = new C4116a(editText);
            this.f14356A = c4116a;
            editText.addTextChangedListener(c4116a);
            editText.setOnFocusChangeListener(new View$OnFocusChangeListenerC4117b(editText));
            editText.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC4118c());
        }
    }

    /* renamed from: S */
    protected void m11428S(EditText editText, boolean z) {
        editText.setCompoundDrawables(editText.getCompoundDrawables()[0], editText.getCompoundDrawables()[1], z ? this.f14358C : null, editText.getCompoundDrawables()[3]);
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: e */
    protected void mo7297e(QMUIDialogRootLayout qMUIDialogRootLayout) {
        int m7548h = QMUIDisplayHelper.m7548h(m7294h());
        qMUIDialogRootLayout.setMinWidth(m7548h);
        qMUIDialogRootLayout.setMaxWidth(m7548h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.C5255a, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    /* renamed from: j */
    public void mo7257j(QMUIDialog qMUIDialog, QMUIDialogRootLayout qMUIDialogRootLayout, Context context) {
        Window window = qMUIDialog.getWindow();
        if (window != null) {
            window.setGravity(81);
            window.setWindowAnimations(R.style.dialog_bottom_anim);
        }
        QMUILinearLayout qMUILinearLayout = (QMUILinearLayout) qMUIDialogRootLayout.getDialogView().getViewById(R.id.qmui_dialog_operator_layout_id);
        for (int i = 0; i < this.f17723h.size(); i++) {
            QMUIDialogAction qMUIDialogAction = this.f17723h.get(i);
            QMUIButton m11430Q = m11430Q(qMUILinearLayout);
            if (m11430Q != null) {
                if (qMUIDialogAction.m7310e() == 2) {
                    m11430Q.setBackground(UIUtils.m8611g(R.drawable.bg_dialog_button_negative));
                } else if (qMUIDialogAction.m7310e() == 0) {
                    m11430Q.setBackground(UIUtils.m8611g(R.drawable.bg_dialog_button_positive));
                }
            }
        }
        if (qMUILinearLayout.getChildCount() >= 2) {
            Space space = new Space(context);
            space.setLayoutParams(new LinearLayout.LayoutParams(QMUIDisplayHelper.m7555a(m7294h(), 12), 0));
            qMUILinearLayout.addView(space, 1);
        }
        super.mo7257j(qMUIDialog, qMUIDialogRootLayout, context);
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @NonNull
    /* renamed from: n */
    protected QMUIDialogView mo7291n(@NonNull Context context) {
        QMUIDialogView qMUIDialogView = new QMUIDialogView(context);
        qMUIDialogView.setBackground(QMUIResHelper.m7502f(context, R.attr.qmui_skin_support_dialog_bg));
        qMUIDialogView.setRadius(QMUIResHelper.m7503e(context, R.attr.qmui_dialog_radius), 3);
        m7304A(qMUIDialogView);
        return qMUIDialogView;
    }
}
