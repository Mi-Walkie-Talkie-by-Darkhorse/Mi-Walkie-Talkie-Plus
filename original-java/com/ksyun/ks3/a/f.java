package com.ksyun.ks3.a;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: StringUtils */
public class f {
    private static List<Class<?>> a = Arrays.asList(new Class[]{String.class, Boolean.class, Integer.class, Long.class, Double.class, Float.class, Short.class, Byte.class, Collection.class, Map.class, HashMap.class, ArrayList.class, HashSet.class, Date.class});

    public static String a(Object[] objArr, String str) {
        boolean z = false;
        StringBuffer stringBuffer = new StringBuffer();
        for (Object obj : objArr) {
            if (!z) {
                stringBuffer.append(obj);
                z = true;
            } else {
                stringBuffer.append(str + obj);
            }
        }
        return stringBuffer.toString();
    }

    public static String a(List<String> list, String str) {
        return a(list.toArray(), str);
    }

    public static boolean a(String str) {
        if (str == null || str.trim().length() == 0) {
            return true;
        }
        return false;
    }

    public static String b(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        if (str.length() < 3 || str.length() > 63) {
            return null;
        }
        char c = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt >= 'A' && charAt <= 'Z') {
                return null;
            }
            if (charAt == ' ' || charAt == 9 || charAt == 13 || charAt == 10) {
                return null;
            }
            if (charAt == '.') {
                if (c == '.') {
                    return null;
                }
                if (c == '-') {
                    return null;
                }
            } else if (charAt == '-') {
                if (c == '.') {
                    return null;
                }
            } else if (charAt < '0' || ((charAt > '9' && charAt < 'a') || charAt > 'z')) {
                return null;
            }
            i++;
            c = charAt;
        }
        if (c == '.' || c == '-') {
            return null;
        }
        return str;
    }

    public static String a(Object obj) {
        return a(0, obj, null);
    }

    private static String a(int i, Object obj, Field field) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        for (int i2 = 0; i2 < i - 1; i2++) {
            stringBuffer2.append("       ");
        }
        String stringBuffer3 = stringBuffer2.toString();
        if (field != null) {
            stringBuffer.append("\n" + stringBuffer3 + field.getName() + "=" + obj.getClass() + "\n");
        } else {
            stringBuffer.append("\n" + stringBuffer3 + obj.getClass() + "\n");
        }
        if (i != 0) {
            stringBuffer2.append("       ");
        }
        String stringBuffer4 = stringBuffer2.toString();
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        HashMap hashMap = new HashMap();
        for (Field field2 : declaredFields) {
            field2.setAccessible(true);
            Object obj2 = null;
            try {
                obj2 = field2.get(obj);
            } catch (IllegalArgumentException e) {
                ThrowableExtension.printStackTrace(e);
            } catch (IllegalAccessException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
            if (obj2 != null) {
                if (a.contains(obj2.getClass())) {
                    stringBuffer.append(stringBuffer4 + field2.getName() + "=" + obj2.toString() + "\n");
                } else if (obj2.getClass().isEnum()) {
                    stringBuffer.append(stringBuffer4 + field2.getName() + "=" + obj2.toString() + "\n");
                } else {
                    hashMap.put(field2, obj2);
                }
            } else if (obj2 == null) {
                stringBuffer.append(stringBuffer4 + field2.getName() + "=null\n");
            }
        }
        for (Entry entry : hashMap.entrySet()) {
            stringBuffer.append(a(i + 1, entry.getValue(), (Field) entry.getKey()));
        }
        return stringBuffer.toString();
    }
}
