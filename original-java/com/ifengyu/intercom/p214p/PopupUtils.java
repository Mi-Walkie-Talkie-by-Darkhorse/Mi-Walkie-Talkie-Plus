package com.ifengyu.intercom.p214p;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;

/* renamed from: com.ifengyu.intercom.p.g0 */
/* loaded from: classes2.dex */
public class PopupUtils {
    /* renamed from: a */
    public static View m11171a(PopupWindow popupWindow) {
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

    /* renamed from: b */
    public static void m11170b(Context context, PopupWindow popupWindow, float f) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        View m11171a = m11171a(popupWindow);
        if (m11171a != null) {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) m11171a.getLayoutParams();
            layoutParams.flags |= 2;
            layoutParams.dimAmount = f;
            windowManager.updateViewLayout(m11171a, layoutParams);
        }
    }
}
