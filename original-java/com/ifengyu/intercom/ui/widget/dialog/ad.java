package com.ifengyu.intercom.ui.widget.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation.AnimationListener;
import android.widget.AbsListView;
import com.ifengyu.intercom.R;

/* compiled from: Utils */
final class ad {
    static void a(View view, int i, AnimationListener animationListener) {
        l lVar = new l(view, view.getHeight(), i);
        lVar.setAnimationListener(animationListener);
        lVar.setDuration(200);
        view.startAnimation(lVar);
    }

    static boolean a(AbsListView absListView) {
        return absListView.getChildCount() == 0 || absListView.getChildAt(0).getTop() == absListView.getPaddingTop();
    }

    static View a(Context context, int i, View view) {
        LayoutInflater from = LayoutInflater.from(context);
        if (view == null && i != -1) {
            return from.inflate(i, null);
        }
        return view;
    }

    static int a(int i, boolean z) {
        if ((i & 80) == 80) {
            return z ? R.anim.dialog_in_bottom : R.anim.dialog_out_bottom;
        }
        if ((i & 17) == 17) {
            return z ? R.anim.dialog_in_center : R.anim.dialog_out_center;
        }
        return -1;
    }
}
