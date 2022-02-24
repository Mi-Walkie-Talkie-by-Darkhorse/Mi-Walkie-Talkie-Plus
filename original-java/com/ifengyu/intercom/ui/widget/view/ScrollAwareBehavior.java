package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.a0;
import androidx.core.view.b0;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ifengyu.intercom.R;

/* loaded from: classes2.dex */
public class ScrollAwareBehavior extends FloatingActionButton.Behavior {

    /* renamed from: b  reason: collision with root package name */
    private static final Interpolator f7087b = new a.e.a.a.b();

    /* renamed from: a  reason: collision with root package name */
    private boolean f7088a = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements b0 {
        a() {
        }

        @Override // androidx.core.view.b0
        public void a(View view) {
            ScrollAwareBehavior.this.f7088a = false;
        }

        @Override // androidx.core.view.b0
        public void b(View view) {
            ScrollAwareBehavior.this.f7088a = false;
            view.setVisibility(8);
        }

        @Override // androidx.core.view.b0
        public void c(View view) {
            ScrollAwareBehavior.this.f7088a = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FloatingActionButton f7090a;

        b(FloatingActionButton floatingActionButton) {
            this.f7090a = floatingActionButton;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ScrollAwareBehavior.this.f7088a = false;
            this.f7090a.setVisibility(0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            ScrollAwareBehavior.this.f7088a = true;
        }
    }

    public ScrollAwareBehavior(Context context, AttributeSet attributeSet) {
    }

    private void b(FloatingActionButton floatingActionButton) {
        if (Build.VERSION.SDK_INT >= 14) {
            a0 a2 = ViewCompat.a(floatingActionButton);
            a2.b(0.0f);
            a2.c(0.0f);
            a2.a(0.0f);
            a2.a(f7087b);
            a2.d();
            a2.a(new a());
            a2.c();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(floatingActionButton.getContext(), R.anim.fab_out);
        loadAnimation.setInterpolator(f7087b);
        loadAnimation.setDuration(200L);
        loadAnimation.setAnimationListener(new b(floatingActionButton));
        floatingActionButton.startAnimation(loadAnimation);
    }

    /* renamed from: a */
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, View view2, int i) {
        return i == 2 || super.onStartNestedScroll(coordinatorLayout, floatingActionButton, view, view2, i);
    }

    /* renamed from: a */
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, int i, int i2, int i3, int i4) {
        super.onNestedScroll(coordinatorLayout, floatingActionButton, view, i, i2, i3, i4);
        if (i2 > 0 && !this.f7088a && floatingActionButton.getVisibility() == 0) {
            b(floatingActionButton);
        } else if (i2 < 0 && floatingActionButton.getVisibility() != 0) {
            a(floatingActionButton);
        }
    }

    private void a(FloatingActionButton floatingActionButton) {
        floatingActionButton.setVisibility(0);
        if (Build.VERSION.SDK_INT >= 14) {
            a0 a2 = ViewCompat.a(floatingActionButton);
            a2.b(1.0f);
            a2.c(1.0f);
            a2.a(1.0f);
            a2.a(f7087b);
            a2.d();
            a2.a((b0) null);
            a2.c();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(floatingActionButton.getContext(), R.anim.fab_in);
        loadAnimation.setDuration(200L);
        loadAnimation.setInterpolator(f7087b);
        floatingActionButton.startAnimation(loadAnimation);
    }
}
