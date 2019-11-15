package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.FloatingActionButton.Behavior;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.ifengyu.intercom.R;

public class ScrollAwareBehavior extends Behavior {
    private static final Interpolator a = new FastOutSlowInInterpolator();
    /* access modifiers changed from: private */
    public boolean b = false;

    public ScrollAwareBehavior(Context context, AttributeSet attributeSet) {
    }

    /* renamed from: a */
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, View view2, int i) {
        return i == 2 || super.onStartNestedScroll(coordinatorLayout, floatingActionButton, view, view2, i);
    }

    /* renamed from: a */
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, int i, int i2, int i3, int i4) {
        super.onNestedScroll(coordinatorLayout, floatingActionButton, view, i, i2, i3, i4);
        if (i2 > 0 && !this.b && floatingActionButton.getVisibility() == 0) {
            a(floatingActionButton);
        } else if (i2 < 0 && floatingActionButton.getVisibility() != 0) {
            b(floatingActionButton);
        }
    }

    private void a(final FloatingActionButton floatingActionButton) {
        if (VERSION.SDK_INT >= 14) {
            ViewCompat.animate(floatingActionButton).scaleX(0.0f).scaleY(0.0f).alpha(0.0f).setInterpolator(a).withLayer().setListener(new ViewPropertyAnimatorListener() {
                public void onAnimationStart(View view) {
                    ScrollAwareBehavior.this.b = true;
                }

                public void onAnimationCancel(View view) {
                    ScrollAwareBehavior.this.b = false;
                }

                public void onAnimationEnd(View view) {
                    ScrollAwareBehavior.this.b = false;
                    view.setVisibility(8);
                }
            }).start();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(floatingActionButton.getContext(), R.anim.fab_out);
        loadAnimation.setInterpolator(a);
        loadAnimation.setDuration(200);
        loadAnimation.setAnimationListener(new AnimationListener() {
            public void onAnimationStart(Animation animation) {
                ScrollAwareBehavior.this.b = true;
            }

            public void onAnimationEnd(Animation animation) {
                ScrollAwareBehavior.this.b = false;
                floatingActionButton.setVisibility(0);
            }

            public void onAnimationRepeat(Animation animation) {
            }
        });
        floatingActionButton.startAnimation(loadAnimation);
    }

    private void b(FloatingActionButton floatingActionButton) {
        floatingActionButton.setVisibility(0);
        if (VERSION.SDK_INT >= 14) {
            ViewCompat.animate(floatingActionButton).scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setInterpolator(a).withLayer().setListener(null).start();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(floatingActionButton.getContext(), R.anim.fab_in);
        loadAnimation.setDuration(200);
        loadAnimation.setInterpolator(a);
        floatingActionButton.startAnimation(loadAnimation);
    }
}
