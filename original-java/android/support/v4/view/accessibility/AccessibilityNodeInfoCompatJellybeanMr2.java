package android.support.v4.view.accessibility;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.List;

@TargetApi(18)
@RequiresApi(18)
class AccessibilityNodeInfoCompatJellybeanMr2 {
    AccessibilityNodeInfoCompatJellybeanMr2() {
    }

    public static void setViewIdResourceName(Object obj, String str) {
        ((AccessibilityNodeInfo) obj).setViewIdResourceName(str);
    }

    public static String getViewIdResourceName(Object obj) {
        return ((AccessibilityNodeInfo) obj).getViewIdResourceName();
    }

    public static List<Object> findAccessibilityNodeInfosByViewId(Object obj, String str) {
        return ((AccessibilityNodeInfo) obj).findAccessibilityNodeInfosByViewId(str);
    }

    public static void setTextSelection(Object obj, int i, int i2) {
        ((AccessibilityNodeInfo) obj).setTextSelection(i, i2);
    }

    public static int getTextSelectionStart(Object obj) {
        return ((AccessibilityNodeInfo) obj).getTextSelectionStart();
    }

    public static int getTextSelectionEnd(Object obj) {
        return ((AccessibilityNodeInfo) obj).getTextSelectionEnd();
    }

    public static boolean isEditable(Object obj) {
        return ((AccessibilityNodeInfo) obj).isEditable();
    }

    public static void setEditable(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setEditable(z);
    }

    public static boolean refresh(Object obj) {
        return ((AccessibilityNodeInfo) obj).refresh();
    }
}
