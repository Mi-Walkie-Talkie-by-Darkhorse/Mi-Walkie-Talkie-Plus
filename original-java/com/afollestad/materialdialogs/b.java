package com.afollestad.materialdialogs;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.afollestad.materialdialogs.internal.MDRootLayout;

/* compiled from: DialogBase */
class b extends Dialog implements OnShowListener {
    protected MDRootLayout a;
    private OnShowListener b;

    b(Context context, int i) {
        super(context, i);
    }

    public View findViewById(int i) {
        return this.a.findViewById(i);
    }

    public final void setOnShowListener(OnShowListener onShowListener) {
        this.b = onShowListener;
    }

    /* access modifiers changed from: 0000 */
    public final void a() {
        super.setOnShowListener(this);
    }

    /* access modifiers changed from: 0000 */
    public final void a(View view) {
        super.setContentView(view);
    }

    public void onShow(DialogInterface dialogInterface) {
        if (this.b != null) {
            this.b.onShow(dialogInterface);
        }
    }

    @Deprecated
    public void setContentView(int i) throws IllegalAccessError {
        throw new IllegalAccessError("setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead.");
    }

    @Deprecated
    public void setContentView(@NonNull View view) throws IllegalAccessError {
        throw new IllegalAccessError("setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead.");
    }

    @Deprecated
    public void setContentView(@NonNull View view, LayoutParams layoutParams) throws IllegalAccessError {
        throw new IllegalAccessError("setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead.");
    }
}
