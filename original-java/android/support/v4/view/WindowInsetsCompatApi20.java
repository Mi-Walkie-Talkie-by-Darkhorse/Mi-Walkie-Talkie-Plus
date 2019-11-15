package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.WindowInsets;

@TargetApi(20)
@RequiresApi(20)
class WindowInsetsCompatApi20 {
    WindowInsetsCompatApi20() {
    }

    public static Object consumeSystemWindowInsets(Object obj) {
        return ((WindowInsets) obj).consumeSystemWindowInsets();
    }

    public static int getSystemWindowInsetBottom(Object obj) {
        return ((WindowInsets) obj).getSystemWindowInsetBottom();
    }

    public static int getSystemWindowInsetLeft(Object obj) {
        return ((WindowInsets) obj).getSystemWindowInsetLeft();
    }

    public static int getSystemWindowInsetRight(Object obj) {
        return ((WindowInsets) obj).getSystemWindowInsetRight();
    }

    public static int getSystemWindowInsetTop(Object obj) {
        return ((WindowInsets) obj).getSystemWindowInsetTop();
    }

    public static boolean hasInsets(Object obj) {
        return ((WindowInsets) obj).hasInsets();
    }

    public static boolean hasSystemWindowInsets(Object obj) {
        return ((WindowInsets) obj).hasSystemWindowInsets();
    }

    public static boolean isRound(Object obj) {
        return ((WindowInsets) obj).isRound();
    }

    public static Object replaceSystemWindowInsets(Object obj, int i, int i2, int i3, int i4) {
        return ((WindowInsets) obj).replaceSystemWindowInsets(i, i2, i3, i4);
    }

    public static Object getSourceWindowInsets(Object obj) {
        return new WindowInsets((WindowInsets) obj);
    }
}
