package com.ifengyu.intercom.ui.widget.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.AbsListView;
import com.ifengyu.intercom.R;

/* compiled from: Utils.java */
/* loaded from: classes2.dex */
final class b0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, boolean z) {
        if ((i & 80) == 80) {
            return z ? R.anim.dialog_in_bottom : R.anim.dialog_out_bottom;
        }
        if ((i & 17) == 17) {
            return z ? R.anim.dialog_in_center : R.anim.dialog_out_center;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, int i, Animation.AnimationListener animationListener) {
        l lVar = new l(view, view.getHeight(), i);
        lVar.setAnimationListener(animationListener);
        lVar.setDuration(200L);
        view.startAnimation(lVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(AbsListView absListView) {
        return absListView.getChildCount() == 0 || absListView.getChildAt(0).getTop() == absListView.getPaddingTop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static View a(Context context, int i, View view) {
        return (view == null && i != -1) ? LayoutInflater.from(context).inflate(i, (ViewGroup) null) : view;
    }
}
