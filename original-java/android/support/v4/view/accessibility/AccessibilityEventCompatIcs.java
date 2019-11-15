package android.support.v4.view.accessibility;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;

@TargetApi(14)
@RequiresApi(14)
class AccessibilityEventCompatIcs {
    AccessibilityEventCompatIcs() {
    }

    public static int getRecordCount(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getRecordCount();
    }

    public static void appendRecord(AccessibilityEvent accessibilityEvent, Object obj) {
        accessibilityEvent.appendRecord((AccessibilityRecord) obj);
    }

    public static Object getRecord(AccessibilityEvent accessibilityEvent, int i) {
        return accessibilityEvent.getRecord(i);
    }

    public static void setScrollable(AccessibilityEvent accessibilityEvent, boolean z) {
        accessibilityEvent.setScrollable(z);
    }
}
