package com.ifengyu.library.widget.waitingdots;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import java.lang.ref.WeakReference;

public class InvalidateViewOnUpdate implements AnimatorUpdateListener {
    private final WeakReference<View> viewRef;

    public InvalidateViewOnUpdate(View view) {
        this.viewRef = new WeakReference<>(view);
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        View view = (View) this.viewRef.get();
        if (view != null) {
            view.invalidate();
        }
    }
}
