package android.support.v4.widget;

import android.os.Build.VERSION;
import android.view.View.OnTouchListener;

public final class PopupMenuCompat {
    static final PopupMenuImpl IMPL;

    static class BasePopupMenuImpl implements PopupMenuImpl {
        BasePopupMenuImpl() {
        }

        public OnTouchListener getDragToOpenListener(Object obj) {
            return null;
        }
    }

    static class KitKatPopupMenuImpl extends BasePopupMenuImpl {
        KitKatPopupMenuImpl() {
        }

        public OnTouchListener getDragToOpenListener(Object obj) {
            return PopupMenuCompatKitKat.getDragToOpenListener(obj);
        }
    }

    interface PopupMenuImpl {
        OnTouchListener getDragToOpenListener(Object obj);
    }

    static {
        if (VERSION.SDK_INT >= 19) {
            IMPL = new KitKatPopupMenuImpl();
        } else {
            IMPL = new BasePopupMenuImpl();
        }
    }

    private PopupMenuCompat() {
    }

    public static OnTouchListener getDragToOpenListener(Object obj) {
        return IMPL.getDragToOpenListener(obj);
    }
}
