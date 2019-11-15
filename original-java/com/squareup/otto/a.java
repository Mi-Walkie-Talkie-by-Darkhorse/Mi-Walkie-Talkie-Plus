package com.squareup.otto;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: AnnotatedHandlerFinder */
final class a {
    private static final Map<Class<?>, Map<Class<?>, Method>> a = new HashMap();
    private static final Map<Class<?>, Map<Class<?>, Set<Method>>> b = new HashMap();

    private static void a(Class<?> cls) {
        Method[] declaredMethods;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (Method method : cls.getDeclaredMethods()) {
            if (!method.isBridge()) {
                if (method.isAnnotationPresent(Subscribe.class)) {
                    Class[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length != 1) {
                        throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation but requires " + parameterTypes.length + " arguments.  Methods must require a single argument.");
                    }
                    Class cls2 = parameterTypes[0];
                    if (cls2.isInterface()) {
                        throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation on " + cls2 + " which is an interface.  Subscription must be on a concrete class type.");
                    } else if ((method.getModifiers() & 1) == 0) {
                        throw new IllegalArgumentException("Method " + method + " has @Subscribe annotation on " + cls2 + " but is not 'public'.");
                    } else {
                        Set set = (Set) hashMap.get(cls2);
                        if (set == null) {
                            set = new HashSet();
                            hashMap.put(cls2, set);
                        }
                        set.add(method);
                    }
                } else if (method.isAnnotationPresent(Produce.class)) {
                    Class[] parameterTypes2 = method.getParameterTypes();
                    if (parameterTypes2.length != 0) {
                        throw new IllegalArgumentException("Method " + method + "has @Produce annotation but requires " + parameterTypes2.length + " arguments.  Methods must require zero arguments.");
                    } else if (method.getReturnType() == Void.class) {
                        throw new IllegalArgumentException("Method " + method + " has a return type of void.  Must declare a non-void type.");
                    } else {
                        Class returnType = method.getReturnType();
                        if (returnType.isInterface()) {
                            throw new IllegalArgumentException("Method " + method + " has @Produce annotation on " + returnType + " which is an interface.  Producers must return a concrete class type.");
                        } else if (returnType.equals(Void.TYPE)) {
                            throw new IllegalArgumentException("Method " + method + " has @Produce annotation but has no return type.");
                        } else if ((method.getModifiers() & 1) == 0) {
                            throw new IllegalArgumentException("Method " + method + " has @Produce annotation on " + returnType + " but is not 'public'.");
                        } else if (hashMap2.containsKey(returnType)) {
                            throw new IllegalArgumentException("Producer for type " + returnType + " has already been registered.");
                        } else {
                            hashMap2.put(returnType, method);
                        }
                    }
                } else {
                    continue;
                }
            }
        }
        a.put(cls, hashMap2);
        b.put(cls, hashMap);
    }

    static Map<Class<?>, e> a(Object obj) {
        Class cls = obj.getClass();
        HashMap hashMap = new HashMap();
        if (!a.containsKey(cls)) {
            a(cls);
        }
        Map map = (Map) a.get(cls);
        if (!map.isEmpty()) {
            for (Entry entry : map.entrySet()) {
                hashMap.put(entry.getKey(), new e(obj, (Method) entry.getValue()));
            }
        }
        return hashMap;
    }

    static Map<Class<?>, Set<d>> b(Object obj) {
        Class cls = obj.getClass();
        HashMap hashMap = new HashMap();
        if (!b.containsKey(cls)) {
            a(cls);
        }
        Map map = (Map) b.get(cls);
        if (!map.isEmpty()) {
            for (Entry entry : map.entrySet()) {
                HashSet hashSet = new HashSet();
                for (Method dVar : (Set) entry.getValue()) {
                    hashSet.add(new d(obj, dVar));
                }
                hashMap.put(entry.getKey(), hashSet);
            }
        }
        return hashMap;
    }
}
