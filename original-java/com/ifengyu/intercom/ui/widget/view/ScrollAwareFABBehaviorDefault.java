package com.ifengyu.intercom.ui.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* loaded from: classes2.dex */
public class ScrollAwareFABBehaviorDefault extends FloatingActionButton.Behavior {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends FloatingActionButton.OnVisibilityChangedListener {
        a(ScrollAwareFABBehaviorDefault scrollAwareFABBehaviorDefault) {
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
        public void onHidden(FloatingActionButton floatingActionButton) {
            super.onHidden(floatingActionButton);
            floatingActionButton.setVisibility(4);
        }
    }

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
            floatingActionButton.hide(new a(this));
        } else if (i2 < 0 && floatingActionButton.getVisibility() != 0) {
            floatingActionButton.show();
        }
    }
}
