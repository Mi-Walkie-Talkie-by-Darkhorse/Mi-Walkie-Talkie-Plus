package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;

class ViewGroupUtils {
    private static final ViewGroupUtilsImpl IMPL;

    private interface ViewGroupUtilsImpl {
        void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect);
    }

    private static class ViewGroupUtilsImplBase implements ViewGroupUtilsImpl {
        ViewGroupUtilsImplBase() {
        }

        public void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
            viewGroup.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(view.getScrollX(), view.getScrollY());
        }
    }

    private static class ViewGroupUtilsImplHoneycomb implements ViewGroupUtilsImpl {
        ViewGroupUtilsImplHoneycomb() {
        }

        public void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
            ViewGroupUtilsHoneycomb.offsetDescendantRect(viewGroup, view, rect);
        }
    }

    ViewGroupUtils() {
    }

    static {
        if (VERSION.SDK_INT >= 11) {
            IMPL = new ViewGroupUtilsImplHoneycomb();
        } else {
            IMPL = new ViewGroupUtilsImplBase();
        }
    }

    static void offsetDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
        IMPL.offsetDescendantRect(viewGroup, view, rect);
    }

    static void getDescendantRect(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        offsetDescendantRect(viewGroup, view, rect);
    }
}
