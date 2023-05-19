package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ifengyu.intercom.R;
import p000a.p012e.p013a.p014a.FastOutSlowInInterpolator;

/* renamed from: com.ifengyu.intercom.ui.widget.view.ScrollAwareBehavior */
/* loaded from: classes2.dex */
public class ScrollAwareBehavior extends FloatingActionButton.Behavior {

    /* renamed from: b */
    private static final Interpolator f16289b = new FastOutSlowInInterpolator();

    /* renamed from: a */
    private boolean f16290a = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.view.ScrollAwareBehavior$a */
    /* loaded from: classes2.dex */
    public class C4960a implements ViewPropertyAnimatorListener {
        C4960a() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: a */
        public void mo8753a(View view) {
            ScrollAwareBehavior.this.f16290a = false;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: b */
        public void mo8752b(View view) {
            ScrollAwareBehavior.this.f16290a = false;
            view.setVisibility(8);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: c */
        public void mo8751c(View view) {
            ScrollAwareBehavior.this.f16290a = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.view.ScrollAwareBehavior$b  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class animationAnimation$AnimationListenerC4961b implements Animation.AnimationListener {

        /* renamed from: a */
        final /* synthetic */ FloatingActionButton f16292a;

        animationAnimation$AnimationListenerC4961b(FloatingActionButton floatingActionButton) {
            this.f16292a = floatingActionButton;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ScrollAwareBehavior.this.f16290a = false;
            this.f16292a.setVisibility(0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            ScrollAwareBehavior.this.f16290a = true;
        }
    }

    public ScrollAwareBehavior(Context context, AttributeSet attributeSet) {
    }

    /* renamed from: b */
    private void m8757b(FloatingActionButton floatingActionButton) {
        floatingActionButton.setVisibility(0);
        if (Build.VERSION.SDK_INT >= 14) {
            ViewPropertyAnimatorCompat m23595d = ViewCompat.m23595d(floatingActionButton);
            m23595d.m23243d(1.0f);
            m23595d.m23242e(1.0f);
            m23595d.m23246a(1.0f);
            m23595d.m23240g(f16289b);
            m23595d.m23233n();
            m23595d.m23239h(null);
            m23595d.m23235l();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(floatingActionButton.getContext(), R.anim.fab_in);
        loadAnimation.setDuration(200L);
        loadAnimation.setInterpolator(f16289b);
        floatingActionButton.startAnimation(loadAnimation);
    }

    /* renamed from: c */
    private void m8756c(FloatingActionButton floatingActionButton) {
        if (Build.VERSION.SDK_INT >= 14) {
            ViewPropertyAnimatorCompat m23595d = ViewCompat.m23595d(floatingActionButton);
            m23595d.m23243d(BitmapDescriptorFactory.HUE_RED);
            m23595d.m23242e(BitmapDescriptorFactory.HUE_RED);
            m23595d.m23246a(BitmapDescriptorFactory.HUE_RED);
            m23595d.m23240g(f16289b);
            m23595d.m23233n();
            m23595d.m23239h(new C4960a());
            m23595d.m23235l();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(floatingActionButton.getContext(), R.anim.fab_out);
        loadAnimation.setInterpolator(f16289b);
        loadAnimation.setDuration(200L);
        loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC4961b(floatingActionButton));
        floatingActionButton.startAnimation(loadAnimation);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: d */
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, int i, int i2, int i3, int i4) {
        super.onNestedScroll(coordinatorLayout, floatingActionButton, view, i, i2, i3, i4);
        if (i2 > 0 && !this.f16290a && floatingActionButton.getVisibility() == 0) {
            m8756c(floatingActionButton);
        } else if (i2 >= 0 || floatingActionButton.getVisibility() == 0) {
        } else {
            m8757b(floatingActionButton);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: e */
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, View view2, int i) {
        return i == 2 || super.onStartNestedScroll(coordinatorLayout, floatingActionButton, view, view2, i);
    }
}
