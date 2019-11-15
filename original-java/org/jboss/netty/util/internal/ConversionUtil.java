package org.jboss.netty.util.internal;

import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.regex.Pattern;

public final class ConversionUtil {
    private static final Pattern ARRAY_DELIM = Pattern.compile("[, \\t\\n\\r\\f\\e\\a]");
    private static final String[] INTEGERS = {"0", "1", "2", "3", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, Constants.VIA_REPORT_TYPE_SET_AVATAR, Constants.VIA_REPORT_TYPE_JOININ_GROUP, Constants.VIA_REPORT_TYPE_MAKE_FRIEND, Constants.VIA_REPORT_TYPE_WPA_STATE};

    public static int toInt(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        return Integer.parseInt(String.valueOf(obj));
    }

    public static boolean toBoolean(Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (!(obj instanceof Number)) {
            String valueOf = String.valueOf(obj);
            if (valueOf.length() == 0) {
                return false;
            }
            try {
                if (Integer.parseInt(valueOf) == 0) {
                    return false;
                }
                return true;
            } catch (NumberFormatException e) {
                switch (Character.toUpperCase(valueOf.charAt(0))) {
                    case 'T':
                    case 'Y':
                        return true;
                    default:
                        return false;
                }
            }
        } else if (((Number) obj).intValue() == 0) {
            return false;
        } else {
            return true;
        }
    }

    public static String[] toStringArray(Object obj) {
        if (obj instanceof String[]) {
            return (String[]) obj;
        }
        if (!(obj instanceof Iterable)) {
            return ARRAY_DELIM.split(String.valueOf(obj));
        }
        ArrayList arrayList = new ArrayList();
        for (Object next : (Iterable) obj) {
            if (next == null) {
                arrayList.add(null);
            } else {
                arrayList.add(String.valueOf(next));
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String toString(int i) {
        if (i < 0 || i >= INTEGERS.length) {
            return Integer.toString(i);
        }
        return INTEGERS[i];
    }

    private ConversionUtil() {
    }
}
