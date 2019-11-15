package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.FloatingActionButton.Behavior;
import android.support.design.widget.FloatingActionButton.OnVisibilityChangedListener;
import android.util.AttributeSet;
import android.view.View;

public class ScrollAwareFABBehaviorDefault extends Behavior {
    public ScrollAwareFABBehaviorDefault(Context context, AttributeSet attributeSet) {
    }

    /* renamed from: a */
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, View view2, int i) {
        return i == 2 || super.onStartNestedScroll(coordinatorLayout, floatingActionButton, view, view2, i);
    }

    /* renamed from: a */
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, int i, int i2, int i3, int i4) {
        super.onNestedScroll(coordinatorLayout, floatingActionButton, view, i, i2, i3, i4);
        if (i2 > 0 && floatingActionButton.getVisibility() == 0) {
            floatingActionButton.hide(new OnVisibilityChangedListener() {
                public void onHidden(FloatingActionButton floatingActionButton) {
                    super.onHidden(floatingActionButton);
                    floatingActionButton.setVisibility(4);
                }
            });
        } else if (i2 < 0 && floatingActionButton.getVisibility() != 0) {
            floatingActionButton.show();
        }
    }
}
