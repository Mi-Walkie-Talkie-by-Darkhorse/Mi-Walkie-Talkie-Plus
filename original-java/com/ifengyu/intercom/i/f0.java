package com.ifengyu.intercom.i;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;

/* compiled from: PopupUtils.java */
/* loaded from: classes2.dex */
public class f0 {
    public static void a(Context context, PopupWindow popupWindow, float f) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        View a2 = a(popupWindow);
        if (a2 != null) {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) a2.getLayoutParams();
            layoutParams.flags |= 2;
            layoutParams.dimAmount = f;
            windowManager.updateViewLayout(a2, layoutParams);
        }
    }

    public static View a(PopupWindow popupWindow) {
        View view;
        try {
            if (popupWindow.getBackground() == null) {
                if (Build.VERSION.SDK_INT >= 23) {
                    view = (View) popupWindow.getContentView().getParent();
                } else {
                    view = popupWindow.getContentView();
                }
            } else if (Build.VERSION.SDK_INT >= 23) {
                view = (View) popupWindow.getContentView().getParent().getParent();
            } else {
                view = (View) popupWindow.getContentView().getParent();
            }
            return view;
        } catch (Exception unused) {
            return null;
        }
    }
}
