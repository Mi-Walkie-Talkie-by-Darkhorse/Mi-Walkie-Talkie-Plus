package org.osmdroid.tileprovider;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import java.util.Iterator;
import java.util.LinkedList;

public class BitmapPool {
    private static BitmapPool sInstance;
    final LinkedList<Bitmap> mPool = new LinkedList<>();

    public static BitmapPool getInstance() {
        if (sInstance == null) {
            sInstance = new BitmapPool();
        }
        return sInstance;
    }

    public void returnDrawableToPool(ReusableBitmapDrawable reusableBitmapDrawable) {
        Bitmap tryRecycle = reusableBitmapDrawable.tryRecycle();
        if (tryRecycle != null && tryRecycle.isMutable()) {
            synchronized (this.mPool) {
                this.mPool.addLast(tryRecycle);
            }
        }
    }

    public void applyReusableOptions(Options options) {
        if (VERSION.SDK_INT >= 11) {
            options.inBitmap = obtainBitmapFromPool();
            options.inSampleSize = 1;
            options.inMutable = true;
        }
    }

    public Bitmap obtainBitmapFromPool() {
        Bitmap bitmap;
        synchronized (this.mPool) {
            if (this.mPool.isEmpty()) {
                bitmap = null;
            } else {
                bitmap = (Bitmap) this.mPool.removeFirst();
                if (bitmap.isRecycled()) {
                    bitmap = obtainBitmapFromPool();
                }
            }
        }
        return bitmap;
    }

    public Bitmap obtainSizedBitmapFromPool(int i, int i2) {
        synchronized (this.mPool) {
            if (this.mPool.isEmpty()) {
                return null;
            }
            Iterator it = this.mPool.iterator();
            while (it.hasNext()) {
                Bitmap bitmap = (Bitmap) it.next();
                if (bitmap.isRecycled()) {
                    this.mPool.remove(bitmap);
                    Bitmap obtainSizedBitmapFromPool = obtainSizedBitmapFromPool(i, i2);
                    return obtainSizedBitmapFromPool;
                } else if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
                    this.mPool.remove(bitmap);
                    return bitmap;
                }
            }
            return null;
        }
    }

    public void clearBitmapPool() {
        synchronized (sInstance.mPool) {
            while (!sInstance.mPool.isEmpty()) {
                ((Bitmap) sInstance.mPool.remove()).recycle();
            }
        }
    }
}
