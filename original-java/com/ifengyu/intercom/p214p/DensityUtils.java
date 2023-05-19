package com.ifengyu.intercom.p214p;

import android.app.Activity;
import android.graphics.Rect;

/* renamed from: com.ifengyu.intercom.p.r */
/* loaded from: classes2.dex */
public class DensityUtils {
    /* renamed from: a */
    public static int m11079a(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top;
    }
}
