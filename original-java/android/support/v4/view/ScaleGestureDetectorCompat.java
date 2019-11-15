package android.support.v4.view;

import android.os.Build.VERSION;

public final class ScaleGestureDetectorCompat {
    static final ScaleGestureDetectorImpl IMPL;

    private static class BaseScaleGestureDetectorImpl implements ScaleGestureDetectorImpl {
        BaseScaleGestureDetectorImpl() {
        }

        public void setQuickScaleEnabled(Object obj, boolean z) {
        }

        public boolean isQuickScaleEnabled(Object obj) {
            return false;
        }
    }

    private static class ScaleGestureDetectorCompatKitKatImpl implements ScaleGestureDetectorImpl {
        ScaleGestureDetectorCompatKitKatImpl() {
        }

        public void setQuickScaleEnabled(Object obj, boolean z) {
            ScaleGestureDetectorCompatKitKat.setQuickScaleEnabled(obj, z);
        }

        public boolean isQuickScaleEnabled(Object obj) {
            return ScaleGestureDetectorCompatKitKat.isQuickScaleEnabled(obj);
        }
    }

    interface ScaleGestureDetectorImpl {
        boolean isQuickScaleEnabled(Object obj);

        void setQuickScaleEnabled(Object obj, boolean z);
    }

    static {
        if (VERSION.SDK_INT >= 19) {
            IMPL = new ScaleGestureDetectorCompatKitKatImpl();
        } else {
            IMPL = new BaseScaleGestureDetectorImpl();
        }
    }

    private ScaleGestureDetectorCompat() {
    }

    public static void setQuickScaleEnabled(Object obj, boolean z) {
        IMPL.setQuickScaleEnabled(obj, z);
    }

    public static boolean isQuickScaleEnabled(Object obj) {
        return IMPL.isQuickScaleEnabled(obj);
    }
}
