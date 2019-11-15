package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build.VERSION;

public class WindowInsetsCompat {
    private static final WindowInsetsCompatImpl IMPL;
    private final Object mInsets;

    private static class WindowInsetsCompatApi20Impl extends WindowInsetsCompatBaseImpl {
        WindowInsetsCompatApi20Impl() {
        }

        public WindowInsetsCompat consumeSystemWindowInsets(Object obj) {
            return new WindowInsetsCompat(WindowInsetsCompatApi20.consumeSystemWindowInsets(obj));
        }

        public int getSystemWindowInsetBottom(Object obj) {
            return WindowInsetsCompatApi20.getSystemWindowInsetBottom(obj);
        }

        public int getSystemWindowInsetLeft(Object obj) {
            return WindowInsetsCompatApi20.getSystemWindowInsetLeft(obj);
        }

        public int getSystemWindowInsetRight(Object obj) {
            return WindowInsetsCompatApi20.getSystemWindowInsetRight(obj);
        }

        public int getSystemWindowInsetTop(Object obj) {
            return WindowInsetsCompatApi20.getSystemWindowInsetTop(obj);
        }

        public boolean hasInsets(Object obj) {
            return WindowInsetsCompatApi20.hasInsets(obj);
        }

        public boolean hasSystemWindowInsets(Object obj) {
            return WindowInsetsCompatApi20.hasSystemWindowInsets(obj);
        }

        public boolean isRound(Object obj) {
            return WindowInsetsCompatApi20.isRound(obj);
        }

        public WindowInsetsCompat replaceSystemWindowInsets(Object obj, int i, int i2, int i3, int i4) {
            return new WindowInsetsCompat(WindowInsetsCompatApi20.replaceSystemWindowInsets(obj, i, i2, i3, i4));
        }

        public Object getSourceWindowInsets(Object obj) {
            return WindowInsetsCompatApi20.getSourceWindowInsets(obj);
        }
    }

    private static class WindowInsetsCompatApi21Impl extends WindowInsetsCompatApi20Impl {
        WindowInsetsCompatApi21Impl() {
        }

        public WindowInsetsCompat consumeStableInsets(Object obj) {
            return new WindowInsetsCompat(WindowInsetsCompatApi21.consumeStableInsets(obj));
        }

        public int getStableInsetBottom(Object obj) {
            return WindowInsetsCompatApi21.getStableInsetBottom(obj);
        }

        public int getStableInsetLeft(Object obj) {
            return WindowInsetsCompatApi21.getStableInsetLeft(obj);
        }

        public int getStableInsetRight(Object obj) {
            return WindowInsetsCompatApi21.getStableInsetRight(obj);
        }

        public int getStableInsetTop(Object obj) {
            return WindowInsetsCompatApi21.getStableInsetTop(obj);
        }

        public boolean hasStableInsets(Object obj) {
            return WindowInsetsCompatApi21.hasStableInsets(obj);
        }

        public boolean isConsumed(Object obj) {
            return WindowInsetsCompatApi21.isConsumed(obj);
        }

        public WindowInsetsCompat replaceSystemWindowInsets(Object obj, Rect rect) {
            return new WindowInsetsCompat(WindowInsetsCompatApi21.replaceSystemWindowInsets(obj, rect));
        }
    }

    private static class WindowInsetsCompatBaseImpl implements WindowInsetsCompatImpl {
        WindowInsetsCompatBaseImpl() {
        }

        public int getSystemWindowInsetLeft(Object obj) {
            return 0;
        }

        public int getSystemWindowInsetTop(Object obj) {
            return 0;
        }

        public int getSystemWindowInsetRight(Object obj) {
            return 0;
        }

        public int getSystemWindowInsetBottom(Object obj) {
            return 0;
        }

        public boolean hasSystemWindowInsets(Object obj) {
            return false;
        }

        public boolean hasInsets(Object obj) {
            return false;
        }

        public boolean isConsumed(Object obj) {
            return false;
        }

        public boolean isRound(Object obj) {
            return false;
        }

        public WindowInsetsCompat consumeSystemWindowInsets(Object obj) {
            return null;
        }

        public WindowInsetsCompat replaceSystemWindowInsets(Object obj, int i, int i2, int i3, int i4) {
            return null;
        }

        public WindowInsetsCompat replaceSystemWindowInsets(Object obj, Rect rect) {
            return null;
        }

        public int getStableInsetTop(Object obj) {
            return 0;
        }

        public int getStableInsetLeft(Object obj) {
            return 0;
        }

        public int getStableInsetRight(Object obj) {
            return 0;
        }

        public int getStableInsetBottom(Object obj) {
            return 0;
        }

        public boolean hasStableInsets(Object obj) {
            return false;
        }

        public WindowInsetsCompat consumeStableInsets(Object obj) {
            return null;
        }

        public Object getSourceWindowInsets(Object obj) {
            return null;
        }
    }

    private interface WindowInsetsCompatImpl {
        WindowInsetsCompat consumeStableInsets(Object obj);

        WindowInsetsCompat consumeSystemWindowInsets(Object obj);

        Object getSourceWindowInsets(Object obj);

        int getStableInsetBottom(Object obj);

        int getStableInsetLeft(Object obj);

        int getStableInsetRight(Object obj);

        int getStableInsetTop(Object obj);

        int getSystemWindowInsetBottom(Object obj);

        int getSystemWindowInsetLeft(Object obj);

        int getSystemWindowInsetRight(Object obj);

        int getSystemWindowInsetTop(Object obj);

        boolean hasInsets(Object obj);

        boolean hasStableInsets(Object obj);

        boolean hasSystemWindowInsets(Object obj);

        boolean isConsumed(Object obj);

        boolean isRound(Object obj);

        WindowInsetsCompat replaceSystemWindowInsets(Object obj, int i, int i2, int i3, int i4);

        WindowInsetsCompat replaceSystemWindowInsets(Object obj, Rect rect);
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 21) {
            IMPL = new WindowInsetsCompatApi21Impl();
        } else if (i >= 20) {
            IMPL = new WindowInsetsCompatApi20Impl();
        } else {
            IMPL = new WindowInsetsCompatBaseImpl();
        }
    }

    WindowInsetsCompat(Object obj) {
        this.mInsets = obj;
    }

    public WindowInsetsCompat(WindowInsetsCompat windowInsetsCompat) {
        this.mInsets = windowInsetsCompat == null ? null : IMPL.getSourceWindowInsets(windowInsetsCompat.mInsets);
    }

    public int getSystemWindowInsetLeft() {
        return IMPL.getSystemWindowInsetLeft(this.mInsets);
    }

    public int getSystemWindowInsetTop() {
        return IMPL.getSystemWindowInsetTop(this.mInsets);
    }

    public int getSystemWindowInsetRight() {
        return IMPL.getSystemWindowInsetRight(this.mInsets);
    }

    public int getSystemWindowInsetBottom() {
        return IMPL.getSystemWindowInsetBottom(this.mInsets);
    }

    public boolean hasSystemWindowInsets() {
        return IMPL.hasSystemWindowInsets(this.mInsets);
    }

    public boolean hasInsets() {
        return IMPL.hasInsets(this.mInsets);
    }

    public boolean isConsumed() {
        return IMPL.isConsumed(this.mInsets);
    }

    public boolean isRound() {
        return IMPL.isRound(this.mInsets);
    }

    public WindowInsetsCompat consumeSystemWindowInsets() {
        return IMPL.consumeSystemWindowInsets(this.mInsets);
    }

    public WindowInsetsCompat replaceSystemWindowInsets(int i, int i2, int i3, int i4) {
        return IMPL.replaceSystemWindowInsets(this.mInsets, i, i2, i3, i4);
    }

    public WindowInsetsCompat replaceSystemWindowInsets(Rect rect) {
        return IMPL.replaceSystemWindowInsets(this.mInsets, rect);
    }

    public int getStableInsetTop() {
        return IMPL.getStableInsetTop(this.mInsets);
    }

    public int getStableInsetLeft() {
        return IMPL.getStableInsetLeft(this.mInsets);
    }

    public int getStableInsetRight() {
        return IMPL.getStableInsetRight(this.mInsets);
    }

    public int getStableInsetBottom() {
        return IMPL.getStableInsetBottom(this.mInsets);
    }

    public boolean hasStableInsets() {
        return IMPL.hasStableInsets(this.mInsets);
    }

    public WindowInsetsCompat consumeStableInsets() {
        return IMPL.consumeStableInsets(this.mInsets);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WindowInsetsCompat windowInsetsCompat = (WindowInsetsCompat) obj;
        if (this.mInsets != null) {
            return this.mInsets.equals(windowInsetsCompat.mInsets);
        }
        if (windowInsetsCompat.mInsets != null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        if (this.mInsets == null) {
            return 0;
        }
        return this.mInsets.hashCode();
    }

    static WindowInsetsCompat wrap(Object obj) {
        if (obj == null) {
            return null;
        }
        return new WindowInsetsCompat(obj);
    }

    static Object unwrap(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat == null) {
            return null;
        }
        return windowInsetsCompat.mInsets;
    }
}
