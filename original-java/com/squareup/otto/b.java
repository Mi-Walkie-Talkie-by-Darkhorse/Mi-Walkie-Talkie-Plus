package com.squareup.otto;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Bus */
public class b {
    private final ConcurrentMap<Class<?>, Set<d>> a;
    private final ConcurrentMap<Class<?>, e> b;
    private final String c;
    private final g d;
    private final f e;
    private final ThreadLocal<ConcurrentLinkedQueue<a>> f;
    private final ThreadLocal<Boolean> g;
    private final Map<Class<?>, Set<Class<?>>> h;

    /* compiled from: Bus */
    static class a {
        final Object a;
        final d b;

        public a(Object obj, d dVar) {
            this.a = obj;
            this.b = dVar;
        }
    }

    public b() {
        this("default");
    }

    public b(String str) {
        this(g.b, str);
    }

    public b(g gVar) {
        this(gVar, "default");
    }

    public b(g gVar, String str) {
        this(gVar, str, f.a);
    }

    b(g gVar, String str, f fVar) {
        this.a = new ConcurrentHashMap();
        this.b = new ConcurrentHashMap();
        this.f = new ThreadLocal<ConcurrentLinkedQueue<a>>() {
            /* access modifiers changed from: protected */
            /* renamed from: a */
            public ConcurrentLinkedQueue<a> initialValue() {
                return new ConcurrentLinkedQueue<>();
            }
        };
        this.g = new ThreadLocal<Boolean>() {
            /* access modifiers changed from: protected */
            /* renamed from: a */
            public Boolean initialValue() {
                return Boolean.valueOf(false);
            }
        };
        this.h = new HashMap();
        this.d = gVar;
        this.c = str;
        this.e = fVar;
    }

    public String toString() {
        return "[Bus \"" + this.c + "\"]";
    }

    public void a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Object to register must not be null.");
        }
        this.d.a(this);
        Map a2 = this.e.a(obj);
        for (Class cls : a2.keySet()) {
            e eVar = (e) a2.get(cls);
            e eVar2 = (e) this.b.putIfAbsent(cls, eVar);
            if (eVar2 != null) {
                throw new IllegalArgumentException("Producer method for type " + cls + " found on type " + eVar.a.getClass() + ", but already registered by type " + eVar2.a.getClass() + ".");
            }
            Set<d> set = (Set) this.a.get(cls);
            if (set != null && !set.isEmpty()) {
                for (d a3 : set) {
                    a(a3, eVar);
                }
            }
        }
        Map b2 = this.e.b(obj);
        for (Class cls2 : b2.keySet()) {
            Set set2 = (Set) this.a.get(cls2);
            if (set2 == null) {
                Set copyOnWriteArraySet = new CopyOnWriteArraySet();
                set2 = (Set) this.a.putIfAbsent(cls2, copyOnWriteArraySet);
                if (set2 == null) {
                    set2 = copyOnWriteArraySet;
                }
            }
            set2.addAll((Set) b2.get(cls2));
        }
        for (Entry entry : b2.entrySet()) {
            e eVar3 = (e) this.b.get((Class) entry.getKey());
            if (eVar3 != null && eVar3.a()) {
                for (d dVar : (Set) entry.getValue()) {
                    if (!eVar3.a()) {
                        break;
                    } else if (dVar.a()) {
                        a(dVar, eVar3);
                    }
                }
            }
        }
    }

    private void a(d dVar, e eVar) {
        Object obj = null;
        try {
            obj = eVar.c();
        } catch (InvocationTargetException e2) {
            a("Producer " + eVar + " threw an exception.", e2);
        }
        if (obj != null) {
            b(obj, dVar);
        }
    }

    public void b(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Object to unregister must not be null.");
        }
        this.d.a(this);
        for (Entry entry : this.e.a(obj).entrySet()) {
            Class cls = (Class) entry.getKey();
            e a2 = a(cls);
            e eVar = (e) entry.getValue();
            if (eVar == null || !eVar.equals(a2)) {
                throw new IllegalArgumentException("Missing event producer for an annotated method. Is " + obj.getClass() + " registered?");
            }
            ((e) this.b.remove(cls)).b();
        }
        for (Entry entry2 : this.e.b(obj).entrySet()) {
            Set<d> b2 = b((Class) entry2.getKey());
            Collection collection = (Collection) entry2.getValue();
            if (b2 == null || !b2.containsAll(collection)) {
                throw new IllegalArgumentException("Missing event handler for an annotated method. Is " + obj.getClass() + " registered?");
            }
            for (d dVar : b2) {
                if (collection.contains(dVar)) {
                    dVar.b();
                }
            }
            b2.removeAll(collection);
        }
    }

    public void c(Object obj) {
        boolean z;
        if (obj == null) {
            throw new NullPointerException("Event to post must not be null.");
        }
        this.d.a(this);
        boolean z2 = false;
        Iterator it = c(obj.getClass()).iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            Set<d> b2 = b((Class) it.next());
            if (b2 != null && !b2.isEmpty()) {
                z = true;
                for (d a2 : b2) {
                    a(obj, a2);
                }
            }
            z2 = z;
        }
        if (!z && !(obj instanceof c)) {
            c((Object) new c(this, obj));
        }
        a();
    }

    /* access modifiers changed from: protected */
    public void a(Object obj, d dVar) {
        ((ConcurrentLinkedQueue) this.f.get()).offer(new a(obj, dVar));
    }

    /* access modifiers changed from: protected */
    public void a() {
        if (!((Boolean) this.g.get()).booleanValue()) {
            this.g.set(Boolean.valueOf(true));
            while (true) {
                try {
                    a aVar = (a) ((ConcurrentLinkedQueue) this.f.get()).poll();
                    if (aVar != null) {
                        if (aVar.b.a()) {
                            b(aVar.a, aVar.b);
                        }
                    } else {
                        return;
                    }
                } finally {
                    this.g.set(Boolean.valueOf(false));
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(Object obj, d dVar) {
        try {
            dVar.a(obj);
        } catch (InvocationTargetException e2) {
            a("Could not dispatch event: " + obj.getClass() + " to handler " + dVar, e2);
        }
    }

    /* access modifiers changed from: 0000 */
    public e a(Class<?> cls) {
        return (e) this.b.get(cls);
    }

    /* access modifiers changed from: 0000 */
    public Set<d> b(Class<?> cls) {
        return (Set) this.a.get(cls);
    }

    /* access modifiers changed from: 0000 */
    public Set<Class<?>> c(Class<?> cls) {
        Set<Class<?>> set = (Set) this.h.get(cls);
        if (set != null) {
            return set;
        }
        Set<Class<?>> d2 = d(cls);
        this.h.put(cls, d2);
        return d2;
    }

    private Set<Class<?>> d(Class<?> cls) {
        LinkedList linkedList = new LinkedList();
        HashSet hashSet = new HashSet();
        linkedList.add(cls);
        while (!linkedList.isEmpty()) {
            Class cls2 = (Class) linkedList.remove(0);
            hashSet.add(cls2);
            Class superclass = cls2.getSuperclass();
            if (superclass != null) {
                linkedList.add(superclass);
            }
        }
        return hashSet;
    }

    private static void a(String str, InvocationTargetException invocationTargetException) {
        Throwable cause = invocationTargetException.getCause();
        if (cause != null) {
            throw new RuntimeException(str + ": " + cause.getMessage(), cause);
        }
        throw new RuntimeException(str + ": " + invocationTargetException.getMessage(), invocationTargetException);
    }
}
