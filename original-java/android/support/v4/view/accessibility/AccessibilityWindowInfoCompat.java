package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Build.VERSION;

public class AccessibilityWindowInfoCompat {
    private static final AccessibilityWindowInfoImpl IMPL;
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;
    private static final int UNDEFINED = -1;
    private Object mInfo;

    private static class AccessibilityWindowInfoApi21Impl extends AccessibilityWindowInfoStubImpl {
        AccessibilityWindowInfoApi21Impl() {
        }

        public Object obtain() {
            return AccessibilityWindowInfoCompatApi21.obtain();
        }

        public Object obtain(Object obj) {
            return AccessibilityWindowInfoCompatApi21.obtain(obj);
        }

        public int getType(Object obj) {
            return AccessibilityWindowInfoCompatApi21.getType(obj);
        }

        public int getLayer(Object obj) {
            return AccessibilityWindowInfoCompatApi21.getLayer(obj);
        }

        public Object getRoot(Object obj) {
            return AccessibilityWindowInfoCompatApi21.getRoot(obj);
        }

        public Object getParent(Object obj) {
            return AccessibilityWindowInfoCompatApi21.getParent(obj);
        }

        public int getId(Object obj) {
            return AccessibilityWindowInfoCompatApi21.getId(obj);
        }

        public void getBoundsInScreen(Object obj, Rect rect) {
            AccessibilityWindowInfoCompatApi21.getBoundsInScreen(obj, rect);
        }

        public boolean isActive(Object obj) {
            return AccessibilityWindowInfoCompatApi21.isActive(obj);
        }

        public boolean isFocused(Object obj) {
            return AccessibilityWindowInfoCompatApi21.isFocused(obj);
        }

        public boolean isAccessibilityFocused(Object obj) {
            return AccessibilityWindowInfoCompatApi21.isAccessibilityFocused(obj);
        }

        public int getChildCount(Object obj) {
            return AccessibilityWindowInfoCompatApi21.getChildCount(obj);
        }

        public Object getChild(Object obj, int i) {
            return AccessibilityWindowInfoCompatApi21.getChild(obj, i);
        }

        public void recycle(Object obj) {
            AccessibilityWindowInfoCompatApi21.recycle(obj);
        }
    }

    private static class AccessibilityWindowInfoApi24Impl extends AccessibilityWindowInfoApi21Impl {
        AccessibilityWindowInfoApi24Impl() {
        }

        public CharSequence getTitle(Object obj) {
            return AccessibilityWindowInfoCompatApi24.getTitle(obj);
        }

        public Object getAnchor(Object obj) {
            return AccessibilityWindowInfoCompatApi24.getAnchor(obj);
        }
    }

    private interface AccessibilityWindowInfoImpl {
        Object getAnchor(Object obj);

        void getBoundsInScreen(Object obj, Rect rect);

        Object getChild(Object obj, int i);

        int getChildCount(Object obj);

        int getId(Object obj);

        int getLayer(Object obj);

        Object getParent(Object obj);

        Object getRoot(Object obj);

        CharSequence getTitle(Object obj);

        int getType(Object obj);

        boolean isAccessibilityFocused(Object obj);

        boolean isActive(Object obj);

        boolean isFocused(Object obj);

        Object obtain();

        Object obtain(Object obj);

        void recycle(Object obj);
    }

    private static class AccessibilityWindowInfoStubImpl implements AccessibilityWindowInfoImpl {
        AccessibilityWindowInfoStubImpl() {
        }

        public Object obtain() {
            return null;
        }

        public Object obtain(Object obj) {
            return null;
        }

        public int getType(Object obj) {
            return -1;
        }

        public int getLayer(Object obj) {
            return -1;
        }

        public Object getRoot(Object obj) {
            return null;
        }

        public Object getParent(Object obj) {
            return null;
        }

        public int getId(Object obj) {
            return -1;
        }

        public void getBoundsInScreen(Object obj, Rect rect) {
        }

        public boolean isActive(Object obj) {
            return true;
        }

        public boolean isFocused(Object obj) {
            return true;
        }

        public boolean isAccessibilityFocused(Object obj) {
            return true;
        }

        public int getChildCount(Object obj) {
            return 0;
        }

        public Object getChild(Object obj, int i) {
            return null;
        }

        public void recycle(Object obj) {
        }

        public CharSequence getTitle(Object obj) {
            return null;
        }

        public Object getAnchor(Object obj) {
            return null;
        }
    }

    static {
        if (VERSION.SDK_INT >= 24) {
            IMPL = new AccessibilityWindowInfoApi24Impl();
        } else if (VERSION.SDK_INT >= 21) {
            IMPL = new AccessibilityWindowInfoApi21Impl();
        } else {
            IMPL = new AccessibilityWindowInfoStubImpl();
        }
    }

    static AccessibilityWindowInfoCompat wrapNonNullInstance(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    private AccessibilityWindowInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    public int getType() {
        return IMPL.getType(this.mInfo);
    }

    public int getLayer() {
        return IMPL.getLayer(this.mInfo);
    }

    public AccessibilityNodeInfoCompat getRoot() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getRoot(this.mInfo));
    }

    public AccessibilityWindowInfoCompat getParent() {
        return wrapNonNullInstance(IMPL.getParent(this.mInfo));
    }

    public int getId() {
        return IMPL.getId(this.mInfo);
    }

    public void getBoundsInScreen(Rect rect) {
        IMPL.getBoundsInScreen(this.mInfo, rect);
    }

    public boolean isActive() {
        return IMPL.isActive(this.mInfo);
    }

    public boolean isFocused() {
        return IMPL.isFocused(this.mInfo);
    }

    public boolean isAccessibilityFocused() {
        return IMPL.isAccessibilityFocused(this.mInfo);
    }

    public int getChildCount() {
        return IMPL.getChildCount(this.mInfo);
    }

    public AccessibilityWindowInfoCompat getChild(int i) {
        return wrapNonNullInstance(IMPL.getChild(this.mInfo, i));
    }

    public CharSequence getTitle() {
        return IMPL.getTitle(this.mInfo);
    }

    public AccessibilityNodeInfoCompat getAnchor() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(IMPL.getAnchor(this.mInfo));
    }

    public static AccessibilityWindowInfoCompat obtain() {
        return wrapNonNullInstance(IMPL.obtain());
    }

    public static AccessibilityWindowInfoCompat obtain(AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        if (accessibilityWindowInfoCompat == null) {
            return null;
        }
        return wrapNonNullInstance(IMPL.obtain(accessibilityWindowInfoCompat.mInfo));
    }

    public void recycle() {
        IMPL.recycle(this.mInfo);
    }

    public int hashCode() {
        if (this.mInfo == null) {
            return 0;
        }
        return this.mInfo.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
        if (this.mInfo == null) {
            if (accessibilityWindowInfoCompat.mInfo != null) {
                return false;
            }
            return true;
        } else if (!this.mInfo.equals(accessibilityWindowInfoCompat.mInfo)) {
            return false;
        } else {
            return true;
        }
    }

    public String toString() {
        boolean z;
        boolean z2 = true;
        StringBuilder sb = new StringBuilder();
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb.append("AccessibilityWindowInfo[");
        sb.append("id=").append(getId());
        sb.append(", type=").append(typeToString(getType()));
        sb.append(", layer=").append(getLayer());
        sb.append(", bounds=").append(rect);
        sb.append(", focused=").append(isFocused());
        sb.append(", active=").append(isActive());
        StringBuilder append = sb.append(", hasParent=");
        if (getParent() != null) {
            z = true;
        } else {
            z = false;
        }
        append.append(z);
        StringBuilder append2 = sb.append(", hasChildren=");
        if (getChildCount() <= 0) {
            z2 = false;
        }
        append2.append(z2);
        sb.append(']');
        return sb.toString();
    }

    private static String typeToString(int i) {
        switch (i) {
            case 1:
                return "TYPE_APPLICATION";
            case 2:
                return "TYPE_INPUT_METHOD";
            case 3:
                return "TYPE_SYSTEM";
            case 4:
                return "TYPE_ACCESSIBILITY_OVERLAY";
            default:
                return "<UNKNOWN>";
        }
    }
}
