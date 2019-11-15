package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.utils.L;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public abstract class ViewAware implements ImageAware {
    public static final String WARN_CANT_SET_BITMAP = "Can't set a bitmap into view. You should call ImageLoader on UI thread for it.";
    public static final String WARN_CANT_SET_DRAWABLE = "Can't set a drawable into view. You should call ImageLoader on UI thread for it.";
    protected boolean checkActualViewSize;
    protected Reference<View> viewRef;

    /* access modifiers changed from: protected */
    public abstract void setImageBitmapInto(Bitmap bitmap, View view);

    /* access modifiers changed from: protected */
    public abstract void setImageDrawableInto(Drawable drawable, View view);

    public ViewAware(View view) {
        this(view, true);
    }

    public ViewAware(View view, boolean z) {
        if (view == null) {
            throw new IllegalArgumentException("view must not be null");
        }
        this.viewRef = new WeakReference(view);
        this.checkActualViewSize = z;
    }

    public int getWidth() {
        int i;
        View view = (View) this.viewRef.get();
        if (view == null) {
            return 0;
        }
        LayoutParams layoutParams = view.getLayoutParams();
        if (!this.checkActualViewSize || layoutParams == null || layoutParams.width == -2) {
            i = 0;
        } else {
            i = view.getWidth();
        }
        if (i > 0 || layoutParams == null) {
            return i;
        }
        return layoutParams.width;
    }

    public int getHeight() {
        int i;
        View view = (View) this.viewRef.get();
        if (view == null) {
            return 0;
        }
        LayoutParams layoutParams = view.getLayoutParams();
        if (!this.checkActualViewSize || layoutParams == null || layoutParams.height == -2) {
            i = 0;
        } else {
            i = view.getHeight();
        }
        if (i > 0 || layoutParams == null) {
            return i;
        }
        return layoutParams.height;
    }

    public ViewScaleType getScaleType() {
        return ViewScaleType.CROP;
    }

    public View getWrappedView() {
        return (View) this.viewRef.get();
    }

    public boolean isCollected() {
        return this.viewRef.get() == null;
    }

    public int getId() {
        View view = (View) this.viewRef.get();
        return view == null ? super.hashCode() : view.hashCode();
    }

    public boolean setImageDrawable(Drawable drawable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = (View) this.viewRef.get();
            if (view != null) {
                setImageDrawableInto(drawable, view);
                return true;
            }
        } else {
            L.w(WARN_CANT_SET_DRAWABLE, new Object[0]);
        }
        return false;
    }

    public boolean setImageBitmap(Bitmap bitmap) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = (View) this.viewRef.get();
            if (view != null) {
                setImageBitmapInto(bitmap, view);
                return true;
            }
        } else {
            L.w(WARN_CANT_SET_BITMAP, new Object[0]);
        }
        return false;
    }
}
