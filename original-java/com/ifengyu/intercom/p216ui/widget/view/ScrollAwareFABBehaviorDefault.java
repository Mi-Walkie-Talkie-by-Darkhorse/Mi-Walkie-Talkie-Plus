package com.ifengyu.intercom.p216ui.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* renamed from: com.ifengyu.intercom.ui.widget.view.ScrollAwareFABBehaviorDefault */
/* loaded from: classes2.dex */
public class ScrollAwareFABBehaviorDefault extends FloatingActionButton.Behavior {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.widget.view.ScrollAwareFABBehaviorDefault$a */
    /* loaded from: classes2.dex */
    public class C4962a extends FloatingActionButton.OnVisibilityChangedListener {
        C4962a(ScrollAwareFABBehaviorDefault scrollAwareFABBehaviorDefault) {
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
        public void onHidden(FloatingActionButton floatingActionButton) {
            super.onHidden(floatingActionButton);
            floatingActionButton.setVisibility(4);
        }
    }

    public ScrollAwareFABBehaviorDefault(Context context, AttributeSet attributeSet) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, int i, int i2, int i3, int i4) {
        super.onNestedScroll(coordinatorLayout, floatingActionButton, view, i, i2, i3, i4);
        if (i2 > 0 && floatingActionButton.getVisibility() == 0) {
            floatingActionButton.hide(new C4962a(this));
        } else if (i2 >= 0 || floatingActionButton.getVisibility() == 0) {
        } else {
            floatingActionButton.show();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, View view2, int i) {
        return i == 2 || super.onStartNestedScroll(coordinatorLayout, floatingActionButton, view, view2, i);
    }
}
