package android.support.v4.view;

import android.annotation.TargetApi;
import android.graphics.Rect;
import android.support.annotation.RequiresApi;
import android.view.WindowInsets;

@TargetApi(21)
@RequiresApi(21)
class WindowInsetsCompatApi21 {
    WindowInsetsCompatApi21() {
    }

    public static Object consumeStableInsets(Object obj) {
        return ((WindowInsets) obj).consumeStableInsets();
    }

    public static int getStableInsetBottom(Object obj) {
        return ((WindowInsets) obj).getStableInsetBottom();
    }

    public static int getStableInsetLeft(Object obj) {
        return ((WindowInsets) obj).getStableInsetLeft();
    }

    public static int getStableInsetRight(Object obj) {
        return ((WindowInsets) obj).getStableInsetRight();
    }

    public static int getStableInsetTop(Object obj) {
        return ((WindowInsets) obj).getStableInsetTop();
    }

    public static boolean hasStableInsets(Object obj) {
        return ((WindowInsets) obj).hasStableInsets();
    }

    public static boolean isConsumed(Object obj) {
        return ((WindowInsets) obj).isConsumed();
    }

    public static Object replaceSystemWindowInsets(Object obj, Rect rect) {
        return ((WindowInsets) obj).replaceSystemWindowInsets(rect);
    }
}
