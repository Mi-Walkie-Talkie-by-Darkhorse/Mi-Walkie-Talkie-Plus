package org.jboss.netty.util.internal;

import java.util.ArrayList;
import java.util.Formatter;

public final class StringUtil {
    private static final String EMPTY_STRING = "";
    public static final String NEWLINE;

    private StringUtil() {
    }

    static {
        String str;
        try {
            str = new Formatter().format("%n", new Object[0]).toString();
        } catch (Exception e) {
            str = "\n";
        }
        NEWLINE = str;
    }

    public static String stripControlCharacters(Object obj) {
        if (obj == null) {
            return null;
        }
        return stripControlCharacters(obj.toString());
    }

    public static String stripControlCharacters(String str) {
        boolean z;
        if (str == null) {
            return null;
        }
        int length = str.length() - 1;
        while (true) {
            if (length < 0) {
                z = false;
                break;
            } else if (Character.isISOControl(str.charAt(length))) {
                z = true;
                break;
            } else {
                length--;
            }
        }
        if (!z) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        int i = 0;
        while (i < str.length() && Character.isISOControl(str.charAt(i))) {
            i++;
        }
        boolean z2 = false;
        for (int i2 = i; i2 < str.length(); i2++) {
            if (Character.isISOControl(str.charAt(i2))) {
                z2 = true;
            } else {
                if (z2) {
                    sb.append(' ');
                    z2 = false;
                }
                sb.append(str.charAt(i2));
            }
        }
        return sb.toString();
    }

    public static String[] split(String str, char c) {
        int i = 0;
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) == c) {
                if (i == i2) {
                    arrayList.add("");
                } else {
                    arrayList.add(str.substring(i, i2));
                }
                i = i2 + 1;
            }
        }
        if (i == 0) {
            arrayList.add(str);
        } else if (i != length) {
            arrayList.add(str.substring(i, length));
        } else {
            int size = arrayList.size() - 1;
            while (size >= 0 && ((String) arrayList.get(size)).length() == 0) {
                arrayList.remove(size);
                size--;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
