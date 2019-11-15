package android.support.v4.view.accessibility;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityNodeInfo;

@TargetApi(19)
@RequiresApi(19)
class AccessibilityNodeInfoCompatKitKat {
    private static final String ROLE_DESCRIPTION_KEY = "AccessibilityNodeInfo.roleDescription";
    private static final String TRAITS_KEY = "android.view.accessibility.AccessibilityNodeInfo.traits";
    private static final long TRAIT_HAS_IMAGE = 1;
    private static final byte TRAIT_UNSET = -1;

    static class CollectionInfo {
        CollectionInfo() {
        }

        static int getColumnCount(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.CollectionInfo) obj).getColumnCount();
        }

        static int getRowCount(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.CollectionInfo) obj).getRowCount();
        }

        static boolean isHierarchical(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.CollectionInfo) obj).isHierarchical();
        }
    }

    static class CollectionItemInfo {
        CollectionItemInfo() {
        }

        static int getColumnIndex(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo) obj).getColumnIndex();
        }

        static int getColumnSpan(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo) obj).getColumnSpan();
        }

        static int getRowIndex(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo) obj).getRowIndex();
        }

        static int getRowSpan(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo) obj).getRowSpan();
        }

        static boolean isHeading(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo) obj).isHeading();
        }
    }

    static class RangeInfo {
        RangeInfo() {
        }

        static float getCurrent(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.RangeInfo) obj).getCurrent();
        }

        static float getMax(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.RangeInfo) obj).getMax();
        }

        static float getMin(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.RangeInfo) obj).getMin();
        }

        static int getType(Object obj) {
            return ((android.view.accessibility.AccessibilityNodeInfo.RangeInfo) obj).getType();
        }
    }

    AccessibilityNodeInfoCompatKitKat() {
    }

    static int getLiveRegion(Object obj) {
        return ((AccessibilityNodeInfo) obj).getLiveRegion();
    }

    static void setLiveRegion(Object obj, int i) {
        ((AccessibilityNodeInfo) obj).setLiveRegion(i);
    }

    static Object getCollectionInfo(Object obj) {
        return ((AccessibilityNodeInfo) obj).getCollectionInfo();
    }

    static Object getCollectionItemInfo(Object obj) {
        return ((AccessibilityNodeInfo) obj).getCollectionItemInfo();
    }

    public static void setCollectionInfo(Object obj, Object obj2) {
        ((AccessibilityNodeInfo) obj).setCollectionInfo((android.view.accessibility.AccessibilityNodeInfo.CollectionInfo) obj2);
    }

    public static void setCollectionItemInfo(Object obj, Object obj2) {
        ((AccessibilityNodeInfo) obj).setCollectionItemInfo((android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo) obj2);
    }

    static Object getRangeInfo(Object obj) {
        return ((AccessibilityNodeInfo) obj).getRangeInfo();
    }

    public static void setRangeInfo(Object obj, Object obj2) {
        ((AccessibilityNodeInfo) obj).setRangeInfo((android.view.accessibility.AccessibilityNodeInfo.RangeInfo) obj2);
    }

    public static Object obtainCollectionInfo(int i, int i2, boolean z, int i3) {
        return android.view.accessibility.AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z);
    }

    public static Object obtainCollectionInfo(int i, int i2, boolean z) {
        return android.view.accessibility.AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z);
    }

    public static Object obtainCollectionItemInfo(int i, int i2, int i3, int i4, boolean z) {
        return android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z);
    }

    public static void setContentInvalid(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setContentInvalid(z);
    }

    public static boolean isContentInvalid(Object obj) {
        return ((AccessibilityNodeInfo) obj).isContentInvalid();
    }

    public static boolean canOpenPopup(Object obj) {
        return ((AccessibilityNodeInfo) obj).canOpenPopup();
    }

    public static void setCanOpenPopup(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setCanOpenPopup(z);
    }

    public static Bundle getExtras(Object obj) {
        return ((AccessibilityNodeInfo) obj).getExtras();
    }

    private static long getTraits(Object obj) {
        return getExtras(obj).getLong(TRAITS_KEY, -1);
    }

    private static void setTrait(Object obj, long j) {
        Bundle extras = getExtras(obj);
        extras.putLong(TRAITS_KEY, extras.getLong(TRAITS_KEY, 0) | j);
    }

    public static int getInputType(Object obj) {
        return ((AccessibilityNodeInfo) obj).getInputType();
    }

    public static void setInputType(Object obj, int i) {
        ((AccessibilityNodeInfo) obj).setInputType(i);
    }

    public static boolean isDismissable(Object obj) {
        return ((AccessibilityNodeInfo) obj).isDismissable();
    }

    public static void setDismissable(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setDismissable(z);
    }

    public static boolean isMultiLine(Object obj) {
        return ((AccessibilityNodeInfo) obj).isMultiLine();
    }

    public static void setMultiLine(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setMultiLine(z);
    }

    public static CharSequence getRoleDescription(Object obj) {
        return getExtras(obj).getCharSequence(ROLE_DESCRIPTION_KEY);
    }

    public static void setRoleDescription(Object obj, CharSequence charSequence) {
        getExtras(obj).putCharSequence(ROLE_DESCRIPTION_KEY, charSequence);
    }

    public static Object obtainRangeInfo(int i, float f, float f2, float f3) {
        return android.view.accessibility.AccessibilityNodeInfo.RangeInfo.obtain(i, f, f2, f3);
    }
}
