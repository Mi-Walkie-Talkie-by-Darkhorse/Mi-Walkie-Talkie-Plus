package de.greenrobot.event;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* compiled from: EventBus */
public class c {
    public static String a = "Event";
    static volatile c b;
    private static final d c = new d();
    private static final Map<Class<?>, List<Class<?>>> d = new HashMap();
    private final Map<Class<?>, CopyOnWriteArrayList<l>> e;
    private final Map<Object, List<Class<?>>> f;
    private final Map<Class<?>, Object> g;
    private final ThreadLocal<a> h;
    private final e i;
    private final b j;
    private final a k;
    private final k l;
    private final ExecutorService m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private final boolean q;
    private final boolean r;
    private final boolean s;

    /* compiled from: EventBus */
    static final class a {
        final List<Object> a = new ArrayList();
        boolean b;
        boolean c;
        l d;
        Object e;
        boolean f;

        a() {
        }
    }

    public static c a() {
        if (b == null) {
            synchronized (c.class) {
                if (b == null) {
                    b = new c();
                }
            }
        }
        return b;
    }

    public c() {
        this(c);
    }

    c(d dVar) {
        this.h = new ThreadLocal<a>() {
            /* access modifiers changed from: protected */
            /* renamed from: a */
            public a initialValue() {
                return new a();
            }
        };
        this.e = new HashMap();
        this.f = new HashMap();
        this.g = new ConcurrentHashMap();
        this.i = new e(this, Looper.getMainLooper(), 10);
        this.j = new b(this);
        this.k = new a(this);
        this.l = new k(dVar.h);
        this.o = dVar.a;
        this.p = dVar.b;
        this.q = dVar.c;
        this.r = dVar.d;
        this.n = dVar.e;
        this.s = dVar.f;
        this.m = dVar.g;
    }

    public void a(Object obj) {
        a(obj, false, 0);
    }

    public void a(Object obj, int i2) {
        a(obj, false, i2);
    }

    public void b(Object obj) {
        a(obj, true, 0);
    }

    private synchronized void a(Object obj, boolean z, int i2) {
        for (j a2 : this.l.a(obj.getClass())) {
            a(obj, a2, z, i2);
        }
    }

    private void a(Object obj, j jVar, boolean z, int i2) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        Object obj2;
        boolean z2;
        Class<?> cls = jVar.c;
        CopyOnWriteArrayList copyOnWriteArrayList2 = (CopyOnWriteArrayList) this.e.get(cls);
        l lVar = new l(obj, jVar, i2);
        if (copyOnWriteArrayList2 == null) {
            CopyOnWriteArrayList copyOnWriteArrayList3 = new CopyOnWriteArrayList();
            this.e.put(cls, copyOnWriteArrayList3);
            copyOnWriteArrayList = copyOnWriteArrayList3;
        } else if (copyOnWriteArrayList2.contains(lVar)) {
            throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
        } else {
            copyOnWriteArrayList = copyOnWriteArrayList2;
        }
        int size = copyOnWriteArrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 > size) {
                break;
            } else if (i3 == size || lVar.c > ((l) copyOnWriteArrayList.get(i3)).c) {
                copyOnWriteArrayList.add(i3, lVar);
            } else {
                i3++;
            }
        }
        copyOnWriteArrayList.add(i3, lVar);
        List list = (List) this.f.get(obj);
        if (list == null) {
            list = new ArrayList();
            this.f.put(obj, list);
        }
        list.add(cls);
        if (z) {
            synchronized (this.g) {
                obj2 = this.g.get(cls);
            }
            if (obj2 != null) {
                if (Looper.getMainLooper() == Looper.myLooper()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                a(lVar, obj2, z2);
            }
        }
    }

    public synchronized boolean c(Object obj) {
        return this.f.containsKey(obj);
    }

    private void a(Object obj, Class<?> cls) {
        int i2;
        int i3;
        List list = (List) this.e.get(cls);
        if (list != null) {
            int size = list.size();
            int i4 = 0;
            while (i4 < size) {
                l lVar = (l) list.get(i4);
                if (lVar.a == obj) {
                    lVar.d = false;
                    list.remove(i4);
                    i2 = i4 - 1;
                    i3 = size - 1;
                } else {
                    i2 = i4;
                    i3 = size;
                }
                size = i3;
                i4 = i2 + 1;
            }
        }
    }

    public synchronized void d(Object obj) {
        List<Class> list = (List) this.f.get(obj);
        if (list != null) {
            for (Class a2 : list) {
                a(obj, a2);
            }
            this.f.remove(obj);
        } else {
            Log.w(a, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public void e(Object obj) {
        boolean z;
        a aVar = (a) this.h.get();
        List<Object> list = aVar.a;
        list.add(obj);
        if (!aVar.b) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                z = true;
            } else {
                z = false;
            }
            aVar.c = z;
            aVar.b = true;
            if (aVar.f) {
                throw new EventBusException("Internal error. Abort state was not reset");
            }
            while (!list.isEmpty()) {
                try {
                    a(list.remove(0), aVar);
                } finally {
                    aVar.b = false;
                    aVar.c = false;
                }
            }
        }
    }

    public void f(Object obj) {
        a aVar = (a) this.h.get();
        if (!aVar.b) {
            throw new EventBusException("This method may only be called from inside event handling methods on the posting thread");
        } else if (obj == null) {
            throw new EventBusException("Event may not be null");
        } else if (aVar.e != obj) {
            throw new EventBusException("Only the currently handled event may be aborted");
        } else if (aVar.d.b.b != ThreadMode.PostThread) {
            throw new EventBusException(" event handlers may only abort the incoming event");
        } else {
            aVar.f = true;
        }
    }

    public void g(Object obj) {
        synchronized (this.g) {
            this.g.put(obj.getClass(), obj);
        }
        e(obj);
    }

    public void b() {
        synchronized (this.g) {
            this.g.clear();
        }
    }

    private void a(Object obj, a aVar) throws Error {
        boolean a2;
        Class<i> cls = obj.getClass();
        if (this.s) {
            List a3 = a(cls);
            boolean z = false;
            for (int i2 = 0; i2 < a3.size(); i2++) {
                z |= a(obj, aVar, (Class) a3.get(i2));
            }
            a2 = z;
        } else {
            a2 = a(obj, aVar, cls);
        }
        if (!a2) {
            if (this.p) {
                Log.d(a, "No subscribers registered for event " + cls);
            }
            if (this.r && cls != f.class && cls != i.class) {
                e(new f(this, obj));
            }
        }
    }

    private boolean a(Object obj, a aVar, Class<?> cls) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = (CopyOnWriteArrayList) this.e.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            l lVar = (l) it.next();
            aVar.e = obj;
            aVar.d = lVar;
            try {
                a(lVar, obj, aVar.c);
                if (aVar.f) {
                    break;
                }
            } finally {
                aVar.e = null;
                aVar.d = null;
                aVar.f = false;
            }
        }
        return true;
    }

    private void a(l lVar, Object obj, boolean z) {
        switch (lVar.b.b) {
            case PostThread:
                a(lVar, obj);
                return;
            case MainThread:
                if (z) {
                    a(lVar, obj);
                    return;
                } else {
                    this.i.a(lVar, obj);
                    return;
                }
            case BackgroundThread:
                if (z) {
                    this.j.a(lVar, obj);
                    return;
                } else {
                    a(lVar, obj);
                    return;
                }
            case Async:
                this.k.a(lVar, obj);
                return;
            default:
                throw new IllegalStateException("Unknown thread mode: " + lVar.b.b);
        }
    }

    private List<Class<?>> a(Class<?> cls) {
        List<Class<?>> list;
        synchronized (d) {
            list = (List) d.get(cls);
            if (list == null) {
                list = new ArrayList<>();
                for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                    list.add(cls2);
                    a(list, (Class<?>[]) cls2.getInterfaces());
                }
                d.put(cls, list);
            }
        }
        return list;
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, (Class<?>[]) cls.getInterfaces());
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(g gVar) {
        Object obj = gVar.a;
        l lVar = gVar.b;
        g.a(gVar);
        if (lVar.d) {
            a(lVar, obj);
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(l lVar, Object obj) {
        try {
            lVar.b.a.invoke(lVar.a, new Object[]{obj});
        } catch (InvocationTargetException e2) {
            a(lVar, obj, e2.getCause());
        } catch (IllegalAccessException e3) {
            throw new IllegalStateException("Unexpected exception", e3);
        }
    }

    private void a(l lVar, Object obj, Throwable th) {
        if (obj instanceof i) {
            if (this.o) {
                Log.e(a, "SubscriberExceptionEvent subscriber " + lVar.a.getClass() + " threw an exception", th);
                i iVar = (i) obj;
                Log.e(a, "Initial event " + iVar.c + " caused exception in " + iVar.d, iVar.b);
            }
        } else if (this.n) {
            throw new EventBusException("Invoking subscriber failed", th);
        } else {
            if (this.o) {
                Log.e(a, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + lVar.a.getClass(), th);
            }
            if (this.q) {
                e(new i(this, th, obj, lVar.a));
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public ExecutorService c() {
        return this.m;
    }
}
