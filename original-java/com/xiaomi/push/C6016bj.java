package com.xiaomi.push;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* renamed from: com.xiaomi.push.bj */
/* loaded from: classes2.dex */
public class C6016bj {

    /* renamed from: a */
    private static final Map<Class<?>, Class<?>> f21107a;

    /* renamed from: com.xiaomi.push.bj$a */
    /* loaded from: classes2.dex */
    public static class C6017a<T> {

        /* renamed from: a */
        public final Class<? extends T> f21108a;

        /* renamed from: a */
        public final T f21109a;
    }

    static {
        HashMap hashMap = new HashMap();
        f21107a = hashMap;
        Class cls = Boolean.TYPE;
        hashMap.put(Boolean.class, cls);
        hashMap.put(Byte.class, Byte.TYPE);
        hashMap.put(Character.class, Character.TYPE);
        hashMap.put(Short.class, Short.TYPE);
        Class cls2 = Integer.TYPE;
        hashMap.put(Integer.class, cls2);
        Class cls3 = Float.TYPE;
        hashMap.put(Float.class, cls3);
        Class cls4 = Long.TYPE;
        hashMap.put(Long.class, cls4);
        hashMap.put(Double.class, Double.TYPE);
        hashMap.put(cls, cls);
        Class cls5 = Byte.TYPE;
        hashMap.put(cls5, cls5);
        Class cls6 = Character.TYPE;
        hashMap.put(cls6, cls6);
        Class cls7 = Short.TYPE;
        hashMap.put(cls7, cls7);
        hashMap.put(cls2, cls2);
        hashMap.put(cls3, cls3);
        hashMap.put(cls4, cls4);
        Class cls8 = Double.TYPE;
        hashMap.put(cls8, cls8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Class<? extends java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* renamed from: a */
    public static <T> T m3654a(Class<? extends Object> cls, Object obj, String str) {
        Field field = null;
        while (field == null) {
            try {
                field = cls.getDeclaredField(str);
                field.setAccessible(true);
                continue;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
                continue;
            }
            if (cls == 0) {
                throw new NoSuchFieldException();
            }
        }
        field.setAccessible(true);
        return (T) field.get(obj);
    }

    /* renamed from: a */
    public static <T> T m3653a(Class<? extends Object> cls, String str) {
        try {
            return (T) m3654a(cls, (Object) null, str);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Meet exception when call getStaticField '");
            sb.append(str);
            sb.append("' in ");
            sb.append(cls != null ? cls.getSimpleName() : "");
            sb.append(", ");
            sb.append(e);
            Log.w("JavaCalls", sb.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m3651a(Class<?> cls, String str, Object... objArr) {
        return (T) m3652a(cls, str, m3644a(objArr)).invoke(null, m3643a(objArr));
    }

    /* renamed from: a */
    public static <T> T m3650a(Object obj, String str) {
        try {
            return (T) m3654a((Class<? extends Object>) obj.getClass(), obj, str);
        } catch (Exception e) {
            Log.w("JavaCalls", "Meet exception when call getField '" + str + "' in " + obj + ", " + e);
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m3648a(Object obj, String str, Object... objArr) {
        try {
            return (T) m3640b(obj, str, objArr);
        } catch (Exception e) {
            Log.w("JavaCalls", "Meet exception when call Method '" + str + "' in " + obj + ", " + e);
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m3647a(String str, String str2) {
        try {
            return (T) m3654a((Class<? extends Object>) C6469u.m1234a(null, str), (Object) null, str2);
        } catch (Exception e) {
            Log.w("JavaCalls", "Meet exception when call getStaticField '" + str2 + "' in " + str + ", " + e);
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m3646a(String str, String str2, Object... objArr) {
        try {
            return (T) m3651a(C6469u.m1234a(null, str), str2, objArr);
        } catch (Exception e) {
            Log.w("JavaCalls", "Meet exception when call Method '" + str2 + "' in " + str + ", " + e);
            return null;
        }
    }

    /* renamed from: a */
    private static Method m3652a(Class<?> cls, String str, Class<?>... clsArr) {
        Method m3642a = m3642a(cls.getDeclaredMethods(), str, clsArr);
        if (m3642a != null) {
            m3642a.setAccessible(true);
            return m3642a;
        } else if (cls.getSuperclass() != null) {
            return m3652a((Class<?>) cls.getSuperclass(), str, clsArr);
        } else {
            throw new NoSuchMethodException();
        }
    }

    /* renamed from: a */
    private static Method m3642a(Method[] methodArr, String str, Class<?>[] clsArr) {
        Objects.requireNonNull(str, "Method name must not be null.");
        for (Method method : methodArr) {
            if (method.getName().equals(str) && m3645a(method.getParameterTypes(), clsArr)) {
                return method;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m3649a(Object obj, String str, Object obj2) {
        try {
            m3641b(obj, str, obj2);
        } catch (Exception e) {
            Log.w("JavaCalls", "Meet exception when call setField '" + str + "' in " + obj + ", " + e);
        }
    }

    /* renamed from: a */
    private static boolean m3645a(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr == null) {
            return clsArr2 == null || clsArr2.length == 0;
        } else if (clsArr2 == null) {
            return clsArr.length == 0;
        } else if (clsArr.length != clsArr2.length) {
            return false;
        } else {
            for (int i = 0; i < clsArr.length; i++) {
                if (clsArr2[i] != null && !clsArr[i].isAssignableFrom(clsArr2[i])) {
                    Map<Class<?>, Class<?>> map = f21107a;
                    if (!map.containsKey(clsArr[i]) || !map.get(clsArr[i]).equals(map.get(clsArr2[i]))) {
                        return false;
                    }
                }
            }
            return true;
        }
    }

    /* renamed from: a */
    private static Class<?>[] m3644a(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return null;
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj == null || !(obj instanceof C6017a)) {
                clsArr[i] = obj == null ? null : obj.getClass();
            } else {
                clsArr[i] = ((C6017a) obj).f21108a;
            }
        }
        return clsArr;
    }

    /* renamed from: a */
    private static Object[] m3643a(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return null;
        }
        Object[] objArr2 = new Object[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj == null || !(obj instanceof C6017a)) {
                objArr2[i] = obj;
            } else {
                objArr2[i] = ((C6017a) obj).f21109a;
            }
        }
        return objArr2;
    }

    /* renamed from: b */
    public static <T> T m3640b(Object obj, String str, Object... objArr) {
        return (T) m3652a(obj.getClass(), str, m3644a(objArr)).invoke(obj, m3643a(objArr));
    }

    /* renamed from: b */
    public static void m3641b(Object obj, String str, Object obj2) {
        Class<?> cls = obj.getClass();
        Field field = null;
        while (field == null) {
            try {
                field = cls.getDeclaredField(str);
                continue;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
                continue;
            }
            if (cls == null) {
                throw new NoSuchFieldException();
            }
        }
        field.setAccessible(true);
        field.set(obj, obj2);
    }
}
