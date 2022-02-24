package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.ifengyu.intercom.R;

/* compiled from: BaseDialog.java */
/* loaded from: classes2.dex */
public class d extends Dialog implements View.OnClickListener {
    public d(Context context) {
        super(context, R.style.dialog);
    }

    private void b(Dialog dialog) {
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setWindowAnimations(R.style.dialog_center_anim);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(View... viewArr) {
        for (View view : viewArr) {
            view.setOnClickListener(this);
        }
    }

    protected boolean a() {
        return true;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        a(view.getId());
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        super.setContentView(i);
        if (a()) {
            a(this);
        } else {
            b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int... iArr) {
        for (int i : iArr) {
            findViewById(i).setOnClickListener(this);
        }
    }

    private void a(Dialog dialog) {
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setWindowAnimations(R.style.dialog_bottom_anim);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Context context) {
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
        }
    }
}
