package de.greenrobot.event;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: SubscriberMethodFinder */
class k {
    private static final Map<String, List<j>> a = new HashMap();
    private final Map<Class<?>, Class<?>> b = new ConcurrentHashMap();

    k(List<Class<?>> list) {
        if (list != null) {
            for (Class cls : list) {
                this.b.put(cls, cls);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public List<j> a(Class<?> cls) {
        List<j> list;
        Method[] declaredMethods;
        ThreadMode threadMode;
        String name = cls.getName();
        synchronized (a) {
            list = (List) a.get(name);
        }
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            String name2 = cls2.getName();
            if (name2.startsWith("java.") || name2.startsWith("javax.") || name2.startsWith("android.")) {
                break;
            }
            for (Method method : cls2.getDeclaredMethods()) {
                String name3 = method.getName();
                if (name3.startsWith("onEvent")) {
                    int modifiers = method.getModifiers();
                    if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                        Class[] parameterTypes = method.getParameterTypes();
                        if (parameterTypes.length == 1) {
                            String substring = name3.substring("onEvent".length());
                            if (substring.length() == 0) {
                                threadMode = ThreadMode.PostThread;
                            } else if (substring.equals("MainThread")) {
                                threadMode = ThreadMode.MainThread;
                            } else if (substring.equals("BackgroundThread")) {
                                threadMode = ThreadMode.BackgroundThread;
                            } else if (substring.equals("Async")) {
                                threadMode = ThreadMode.Async;
                            } else if (!this.b.containsKey(cls2)) {
                                throw new EventBusException("Illegal onEvent method, check for typos: " + method);
                            }
                            Class cls3 = parameterTypes[0];
                            sb.setLength(0);
                            sb.append(name3);
                            sb.append('>').append(cls3.getName());
                            if (hashSet.add(sb.toString())) {
                                arrayList.add(new j(method, threadMode, cls3));
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.b.containsKey(cls2)) {
                        Log.d(c.a, "Skipping method (not public, static or abstract): " + cls2 + "." + name3);
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            throw new EventBusException("Subscriber " + cls + " has no public methods called " + "onEvent");
        }
        synchronized (a) {
            a.put(name, arrayList);
        }
        return arrayList;
    }
}
