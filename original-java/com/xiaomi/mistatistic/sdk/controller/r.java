package com.xiaomi.mistatistic.sdk.controller;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.GridView;
import android.widget.ListView;
import com.xiaomi.mistatistic.sdk.data.a;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"NewApi"})
/* compiled from: ViewTraverser */
public class r {
    private List<a> a = new ArrayList();

    public void a(View view) {
        if (VERSION.SDK_INT >= 15) {
            if (view.hasOnClickListeners()) {
                this.a.add(new a(view));
            } else if (b(view)) {
                this.a.add(new a(view));
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    a(viewGroup.getChildAt(i));
                }
            }
        }
    }

    private boolean b(View view) {
        ViewParent parent = view.getParent();
        return (parent instanceof ListView) || (parent instanceof GridView);
    }

    public void a(Activity activity) {
        a(activity.getWindow().getDecorView().getRootView());
    }

    public List<a> a() {
        return this.a;
    }
}
