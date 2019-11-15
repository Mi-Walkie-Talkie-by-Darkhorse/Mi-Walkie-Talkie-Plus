package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.ifengyu.intercom.R;

/* compiled from: BaseDialog */
public class b extends Dialog implements OnClickListener {
    public b(Context context) {
        super(context, R.style.dialog);
    }

    public void setContentView(int i) {
        super.setContentView(i);
        if (b()) {
            a((Dialog) this);
        } else {
            b(this);
        }
    }

    /* access modifiers changed from: protected */
    public void a(View... viewArr) {
        for (View onClickListener : viewArr) {
            onClickListener.setOnClickListener(this);
        }
    }

    /* access modifiers changed from: protected */
    public void a(int... iArr) {
        for (int findViewById : iArr) {
            findViewById(findViewById).setOnClickListener(this);
        }
    }

    public final void onClick(View view) {
        a(view.getId());
    }

    /* access modifiers changed from: protected */
    public void a(int i) {
    }

    private void a(Dialog dialog) {
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setWindowAnimations(R.style.dialog_bottom_anim);
        }
    }

    private void b(Dialog dialog) {
        Window window = dialog.getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setWindowAnimations(R.style.dialog_center_anim);
        }
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void a(Activity activity) {
        Window window = getWindow();
        if (window != null) {
            LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
        }
    }
}
