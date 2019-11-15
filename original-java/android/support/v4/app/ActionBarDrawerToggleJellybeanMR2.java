package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;

@TargetApi(18)
@RequiresApi(18)
class ActionBarDrawerToggleJellybeanMR2 {
    private static final String TAG = "ActionBarDrawerToggleImplJellybeanMR2";
    private static final int[] THEME_ATTRS = {16843531};

    ActionBarDrawerToggleJellybeanMR2() {
    }

    public static Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i) {
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeAsUpIndicator(drawable);
            actionBar.setHomeActionContentDescription(i);
        }
        return obj;
    }

    public static Object setActionBarDescription(Object obj, Activity activity, int i) {
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeActionContentDescription(i);
        }
        return obj;
    }

    /* JADX WARNING: type inference failed for: r4v1, types: [android.content.Context] */
    /* JADX WARNING: type inference failed for: r4v2, types: [android.content.Context] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.drawable.Drawable getThemeUpIndicator(android.app.Activity r4) {
        /*
            r3 = 0
            android.app.ActionBar r0 = r4.getActionBar()
            if (r0 == 0) goto L_0x000b
            android.content.Context r4 = r0.getThemedContext()
        L_0x000b:
            r0 = 0
            int[] r1 = THEME_ATTRS
            r2 = 16843470(0x10102ce, float:2.369557E-38)
            android.content.res.TypedArray r0 = r4.obtainStyledAttributes(r0, r1, r2, r3)
            android.graphics.drawable.Drawable r1 = r0.getDrawable(r3)
            r0.recycle()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.ActionBarDrawerToggleJellybeanMR2.getThemeUpIndicator(android.app.Activity):android.graphics.drawable.Drawable");
    }
}
