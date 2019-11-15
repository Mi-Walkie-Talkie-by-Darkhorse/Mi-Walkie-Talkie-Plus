package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public final class ViewConfigurationCompat {
    static final ViewConfigurationVersionImpl IMPL;

    static class BaseViewConfigurationVersionImpl implements ViewConfigurationVersionImpl {
        BaseViewConfigurationVersionImpl() {
        }

        public boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
            return true;
        }
    }

    static class HoneycombViewConfigurationVersionImpl extends BaseViewConfigurationVersionImpl {
        HoneycombViewConfigurationVersionImpl() {
        }

        public boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
            return false;
        }
    }

    static class IcsViewConfigurationVersionImpl extends HoneycombViewConfigurationVersionImpl {
        IcsViewConfigurationVersionImpl() {
        }

        public boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
            return ViewConfigurationCompatICS.hasPermanentMenuKey(viewConfiguration);
        }
    }

    interface ViewConfigurationVersionImpl {
        boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration);
    }

    static {
        if (VERSION.SDK_INT >= 14) {
            IMPL = new IcsViewConfigurationVersionImpl();
        } else if (VERSION.SDK_INT >= 11) {
            IMPL = new HoneycombViewConfigurationVersionImpl();
        } else {
            IMPL = new BaseViewConfigurationVersionImpl();
        }
    }

    @Deprecated
    public static int getScaledPagingTouchSlop(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledPagingTouchSlop();
    }

    public static boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
        return IMPL.hasPermanentMenuKey(viewConfiguration);
    }

    private ViewConfigurationCompat() {
    }
}
