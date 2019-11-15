package com.amap.api.mapcore.util;

import android.app.Dialog;
import android.content.Context;
import android.view.Window;
import android.view.WindowManager.LayoutParams;

/* compiled from: BottomDialogBase */
abstract class fa extends Dialog {
    /* access modifiers changed from: protected */
    public abstract void a();

    public fa(Context context) {
        super(context);
        b();
    }

    /* access modifiers changed from: protected */
    public void b() {
        Window window = getWindow();
        window.requestFeature(1);
        a();
        window.getDecorView().setPadding(0, 0, 0, 0);
        LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        attributes.gravity = 80;
        window.setAttributes(attributes);
        window.setBackgroundDrawableResource(17170445);
    }
}
