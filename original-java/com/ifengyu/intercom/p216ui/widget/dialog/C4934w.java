package com.ifengyu.intercom.p216ui.widget.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.AbsListView;
import com.ifengyu.intercom.R;

/* compiled from: Utils.java */
/* renamed from: com.ifengyu.intercom.ui.widget.dialog.w */
/* loaded from: classes2.dex */
final class C4934w {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m8914a(View view, int i, Animation.AnimationListener animationListener) {
        HeightAnimation heightAnimation = new HeightAnimation(view, view.getHeight(), i);
        heightAnimation.setAnimationListener(animationListener);
        heightAnimation.setDuration(200L);
        view.startAnimation(heightAnimation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m8913b(int i, boolean z) {
        if ((i & 80) == 80) {
            return z ? R.anim.dialog_in_bottom : R.anim.dialog_out_bottom;
        } else if ((i & 17) == 17) {
            return z ? R.anim.dialog_in_center : R.anim.dialog_out_center;
        } else {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static View m8912c(Context context, int i, View view) {
        return (view == null && i != -1) ? LayoutInflater.from(context).inflate(i, (ViewGroup) null) : view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static boolean m8911d(AbsListView absListView) {
        return absListView.getChildCount() == 0 || absListView.getChildAt(0).getTop() == absListView.getPaddingTop();
    }
}
