package com.ifengyu.library.widget.waitingdots;

import android.animation.ValueAnimator;
import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class InvalidateViewOnUpdate implements ValueAnimator.AnimatorUpdateListener {
    private final WeakReference<View> viewRef;

    public InvalidateViewOnUpdate(View view) {
        this.viewRef = new WeakReference<>(view);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        View view = this.viewRef.get();
        if (view != null) {
            view.invalidate();
        }
    }
}
