package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.ifengyu.intercom.R;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.b */
/* loaded from: classes2.dex */
public class BaseDialog extends Dialog implements View.OnClickListener {
    public BaseDialog(Context context) {
        super(context, R.style.DialogOldStyle);
    }

    /* renamed from: e */
    private void m9039e(Dialog dialog) {
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setWindowAnimations(R.style.dialog_bottom_anim);
        }
    }

    /* renamed from: f */
    private void m9038f(Dialog dialog) {
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setWindowAnimations(R.style.dialog_center_anim);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m9041a(int... iArr) {
        for (int i : iArr) {
            findViewById(i).setOnClickListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void m9040b(View... viewArr) {
        for (View view : viewArr) {
            view.setOnClickListener(this);
        }
    }

    /* renamed from: c */
    protected boolean mo8931c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public void mo8735d(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void m9037g(Context context) {
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        mo8735d(view.getId());
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        super.setContentView(i);
        if (mo8931c()) {
            m9039e(this);
        } else {
            m9038f(this);
        }
    }
}
