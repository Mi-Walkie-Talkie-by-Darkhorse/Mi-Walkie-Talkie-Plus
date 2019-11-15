package android.support.v4.app;

import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class OneShotPreDrawListener implements OnAttachStateChangeListener, OnPreDrawListener {
    private final Runnable mRunnable;
    private final View mView;
    private ViewTreeObserver mViewTreeObserver;

    private OneShotPreDrawListener(View view, Runnable runnable) {
        this.mView = view;
        this.mViewTreeObserver = view.getViewTreeObserver();
        this.mRunnable = runnable;
    }

    public static OneShotPreDrawListener add(View view, Runnable runnable) {
        OneShotPreDrawListener oneShotPreDrawListener = new OneShotPreDrawListener(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(oneShotPreDrawListener);
        view.addOnAttachStateChangeListener(oneShotPreDrawListener);
        return oneShotPreDrawListener;
    }

    public boolean onPreDraw() {
        removeListener();
        this.mRunnable.run();
        return true;
    }

    public void removeListener() {
        if (this.mViewTreeObserver.isAlive()) {
            this.mViewTreeObserver.removeOnPreDrawListener(this);
        } else {
            this.mView.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.mView.removeOnAttachStateChangeListener(this);
    }

    public void onViewAttachedToWindow(View view) {
        this.mViewTreeObserver = view.getViewTreeObserver();
    }

    public void onViewDetachedFromWindow(View view) {
        removeListener();
    }
}
