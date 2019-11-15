package org.osmdroid.tileprovider;

import android.graphics.Bitmap;

public class ReusableBitmapDrawable extends ExpirableBitmapDrawable {
    private boolean mBitmapRecycled = false;
    private int mUsageRefCount = 0;

    public ReusableBitmapDrawable(Bitmap bitmap) {
        super(bitmap);
    }

    public void beginUsingDrawable() {
        synchronized (this) {
            this.mUsageRefCount++;
        }
    }

    public void finishUsingDrawable() {
        synchronized (this) {
            this.mUsageRefCount--;
            if (this.mUsageRefCount < 0) {
                throw new IllegalStateException("Unbalanced endUsingDrawable() called.");
            }
        }
    }

    public Bitmap tryRecycle() {
        synchronized (this) {
            if (this.mUsageRefCount != 0) {
                return null;
            }
            this.mBitmapRecycled = true;
            Bitmap bitmap = getBitmap();
            return bitmap;
        }
    }

    public boolean isBitmapValid() {
        boolean z;
        synchronized (this) {
            z = !this.mBitmapRecycled;
        }
        return z;
    }
}
