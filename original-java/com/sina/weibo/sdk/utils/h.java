package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.widget.Toast;

/* compiled from: UIUtils */
public class h {
    public static void a(Context context, CharSequence charSequence, int i) {
        if (context != null) {
            Toast.makeText(context, charSequence, i).show();
        }
    }
}
