package org.osmdroid.tileprovider;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public class ExpirableBitmapDrawable extends BitmapDrawable {
    private static final int EXPIRED = -1;
    private int[] mState = new int[0];

    public ExpirableBitmapDrawable(Bitmap bitmap) {
        super(bitmap);
    }

    public int[] getState() {
        return this.mState;
    }

    public boolean isStateful() {
        return this.mState.length > 0;
    }

    public boolean setState(int[] iArr) {
        this.mState = iArr;
        return true;
    }

    public static boolean isDrawableExpired(Drawable drawable) {
        if (!drawable.isStateful()) {
            return false;
        }
        int[] state = drawable.getState();
        for (int i : state) {
            if (i == -1) {
                return true;
            }
        }
        return false;
    }

    public static void setDrawableExpired(Drawable drawable) {
        drawable.setState(new int[]{-1});
    }
}
