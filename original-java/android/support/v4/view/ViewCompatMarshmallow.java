package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;

@TargetApi(23)
@RequiresApi(23)
class ViewCompatMarshmallow {
    ViewCompatMarshmallow() {
    }

    public static void setScrollIndicators(View view, int i) {
        view.setScrollIndicators(i);
    }

    public static void setScrollIndicators(View view, int i, int i2) {
        view.setScrollIndicators(i, i2);
    }

    public static int getScrollIndicators(View view) {
        return view.getScrollIndicators();
    }

    static void offsetTopAndBottom(View view, int i) {
        view.offsetTopAndBottom(i);
    }

    static void offsetLeftAndRight(View view, int i) {
        view.offsetLeftAndRight(i);
    }
}
