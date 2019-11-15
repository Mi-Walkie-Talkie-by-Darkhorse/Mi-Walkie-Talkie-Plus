package android.support.design.widget;

import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;

class ViewUtils {
    static final Creator DEFAULT_ANIMATOR_CREATOR = new Creator() {
        public ValueAnimatorCompat createAnimator() {
            return new ValueAnimatorCompat(VERSION.SDK_INT >= 12 ? new ValueAnimatorCompatImplHoneycombMr1() : new ValueAnimatorCompatImplGingerbread());
        }
    };

    ViewUtils() {
    }

    static ValueAnimatorCompat createAnimator() {
        return DEFAULT_ANIMATOR_CREATOR.createAnimator();
    }

    static boolean objectEquals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static Mode parseTintMode(int i, Mode mode) {
        switch (i) {
            case 3:
                return Mode.SRC_OVER;
            case 5:
                return Mode.SRC_IN;
            case 9:
                return Mode.SRC_ATOP;
            case 14:
                return Mode.MULTIPLY;
            case 15:
                return Mode.SCREEN;
            default:
                return mode;
        }
    }
}
